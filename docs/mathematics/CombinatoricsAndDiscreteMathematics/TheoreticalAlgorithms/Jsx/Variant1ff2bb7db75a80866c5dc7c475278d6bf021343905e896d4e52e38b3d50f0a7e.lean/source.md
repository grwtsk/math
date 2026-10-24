# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Jsx.Variant1ff2bb7db75a80866c5dc7c475278d6bf021343905e896d4e52e38b3d50f0a7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7556bca21be2dfe6a3f8ff61740fbc62ea63e908` · SHA-256 `ac5d47d68f0f1490499d7ed3665057d47aea7382cdcae20e76aefaea8de42fe0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HtmlLetters.Variantd5e48eac32684fbaea8fa51c70aec2a2f4b5df0977787837b86103c129c97d08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5e48eac32684fbaea8fa51c70aec2a2f4b5df0977787837b86103c129c97d08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HtmlLetters.Variantd5e48eac32684fbaea8fa51c70aec2a2f4b5df0977787837b86103c129c97d08","mathematical_subject":"Computation.DataStructures","original_sha256":"d5e48eac32684fbaea8fa51c70aec2a2f4b5df0977787837b86103c129c97d08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Demos/Jsx.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import ProofWidgets.Component.HtmlDisplay


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HtmlLetters.Variantd5e48eac32684fbaea8fa51c70aec2a2f4b5df0977787837b86103c129c97d08

public meta section

-- The `ProofWidgets.Jsx` namespace provides JSX-like notation for HTML
open scoped ProofWidgets.Jsx

-- Put your cursor over this
#html <b>What, HTML in Lean?!</b>

-- String-valued attributes can be written directly, or interpolated with `{ }`
#html <img src={"https://" ++ "upload.wikimedia.org/wikipedia/commons/a/a5/Parrot_montage.jpg"}
           alt="Six photos of parrots arranged in a grid." />

def htmlLetters : Array ProofWidgets.Html := #[
    <span style={json% {color: "red"}}>H</span>,
    <span style={json% {color: "yellow"}}>T</span>,
    <span style={json% {color: "green"}}>M</span>,
    <span style={json% {color: "blue"}}>L</span>
  ]

-- HTML children can be interpolated with `{ }` (single node) and `{... }` (multiple nodes)
def x := <b>You can use {...htmlLetters} in Lean {.text s!"{1 + 3}"}! <hr/> </b>
#html x

-- Use `MarkdownDisplay` to render Markdown
open ProofWidgets in
#html <MarkdownDisplay contents={"
  ## Hello, Markdown
  We have **bold text**, _italic text_, `example : True := by trivial`,
  and $3×19 = \\int\\limits_0^{57}1~dx$.
"} />

-- HTML trees can also be produced by metaprograms
open ProofWidgets Lean Server Elab in
#html (do
  let e ← Term.elabTerm (← ``(1 + 3)) (mkConst ``Nat)
  Term.synthesizeSyntheticMVarsNoPostponing
  let e ← instantiateMVars e
  return <InteractiveExpr expr={← WithRpcRef.mk (← ExprWithCtx.save e)} />
    : Term.TermElabM Html)
```
