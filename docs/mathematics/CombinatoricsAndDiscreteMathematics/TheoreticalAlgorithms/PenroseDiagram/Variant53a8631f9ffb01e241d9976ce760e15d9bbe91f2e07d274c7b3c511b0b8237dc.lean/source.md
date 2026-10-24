# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PenroseDiagram.Variant53a8631f9ffb01e241d9976ce760e15d9bbe91f2e07d274c7b3c511b0b8237dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fde6130461a8e7484412e172ed82dde54095684e` · SHA-256 `2696e21421255b5a63bb4db796c177c11e4be89344dd86c62ca0ca9bee95d4b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DiagramProps.Variantab97fffa265d2c2b96bb5502f8d2e367925e27cb5952955635592cabec807b1e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab97fffa265d2c2b96bb5502f8d2e367925e27cb5952955635592cabec807b1e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.DiagramProps.Variantab97fffa265d2c2b96bb5502f8d2e367925e27cb5952955635592cabec807b1e","mathematical_subject":"Computation.DataStructures","original_sha256":"ab97fffa265d2c2b96bb5502f8d2e367925e27cb5952955635592cabec807b1e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Component/PenroseDiagram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
module

public import ProofWidgets.Data.Html


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DiagramProps.Variantab97fffa265d2c2b96bb5502f8d2e367925e27cb5952955635592cabec807b1e

public meta section

namespace ProofWidgets.Penrose
open Lean Server Std

structure DiagramProps where
  embeds      : Array (String × Html)
  dsl         : String
  sty         : String
  sub         : String
  /-- Maximum number of optimization steps to take before showing the diagram.
  Optimization may converge earlier, before taking this many steps. -/
  maxOptSteps : Nat := 500
  deriving Inhabited, RpcEncodable

/-- Displays the given diagram using [Penrose](https://penrose.cs.cmu.edu/).
The website contains explanations of how to write domain (`dsl`), style (`sty`),
and substance (`sub`) programs.

The diagram may also contain embedded HTML trees which are specified in `embeds`.
Each embed is HTML together with the name of an object `x` in the substance program.
The object `x` can be of any type but *must* be assigned an `x.textBox : Rectangle` field
in the style program.
This rectangle will be replaced with the HTML tree.
Its dimensions will be overridden in the style program
to match those of the HTML node.

The following additional constants are prepended to the style program:
```penrose
theme {
  color foreground
  color tooltipBackground
  color tooltipForeground
  color tooltipBorder
}
```
and can be accessed as, for example, `theme.foreground` in the provided `sty` in order to match
the editor theme. -/
@[widget_module]
def Diagram : Component DiagramProps where
  javascript := include_str ".." / ".." / "widget" / "js" / "penroseDisplay.js"

/-! # `DiagramBuilderM` -/

structure DiagramState where
  /-- The Penrose substance program.
  Note that `embeds` are added lazily at the end. -/
  sub : String := ""
  /-- Components to display as labels in the diagram,
  stored in the map as name ↦ (type, html). -/
  embeds : Std.HashMap String (String × Html) := ∅

/-- A monad to easily build Penrose diagrams in. -/
abbrev DiagramBuilderM := StateT DiagramState MetaM

namespace DiagramBuilderM

open scoped Jsx in
/-- Assemble the diagram using the provided domain and style programs.

`none` is returned iff nothing was added to the diagram. -/
def buildDiagram (dsl sty : String) (maxOptSteps : Nat := 500) : DiagramBuilderM (Option Html) := do
  let st ← get
  if st.sub == "" && st.embeds.isEmpty then
    return none
  let mut sub := "AutoLabel All\n"
  let mut embedHtmls := #[]
  for (n, (tp, h)) in st.embeds.toArray do
    sub := sub ++ s!"{tp} {n}\n"
    embedHtmls := embedHtmls.push (n, h)
  -- Note: order matters here, embed variables are declared first.
  sub := sub ++ st.sub
  return <Diagram
    embeds={embedHtmls}
    dsl={dsl} sty={sty} sub={sub}
    maxOptSteps={maxOptSteps} />

/-- Add an object `nm` of Penrose type `tp`,
labelled by `h`, to the substance program. -/
def addEmbed (nm : String) (tp : String) (h : Html) : DiagramBuilderM Unit := do
  modify fun st => { st with embeds := st.embeds.insert nm (tp, h) }

open scoped Jsx in
/-- Add an object of Penrose type `tp`,
corresponding to (and labelled by) the expression `e`,
to the substance program.
Return its Penrose name. -/
def addExpr (tp : String) (e : Expr) : DiagramBuilderM String := do
  let nm ← toString <$> Lean.Meta.ppExpr e
  let h := <InteractiveCode fmt={← Widget.ppExprTagged e} />
  addEmbed nm tp h
  return nm

/-- Add an instruction `i` to the substance program. -/
def addInstruction (i : String) : DiagramBuilderM Unit := do
  modify fun st => { st with sub := st.sub ++ s!"{i}\n" }

def run (x : DiagramBuilderM α) : MetaM α :=
  x.run' {}

end DiagramBuilderM
end Penrose

/-- Abbreviation for backwards-compatibility. -/
abbrev PenroseDiagramProps := Penrose.DiagramProps
/-- Abbreviation for backwards-compatibility. -/
abbrev PenroseDiagram := Penrose.Diagram

end ProofWidgets
````
