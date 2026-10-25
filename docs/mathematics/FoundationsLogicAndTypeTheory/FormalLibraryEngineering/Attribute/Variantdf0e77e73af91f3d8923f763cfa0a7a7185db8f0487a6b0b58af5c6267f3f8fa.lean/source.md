# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variantdf0e77e73af91f3d8923f763cfa0a7a7185db8f0487a6b0b58af5c6267f3f8fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `506775667858e0cc0b007f27e02317c1069d5a94` · SHA-256 `2634630c7a6216032a06fcf1daf6df83732c3db0f1c7fa81d22d3e7dbb38062f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Config.Variant8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/LeanArchitect/Architect/Attribute.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import Architect.Content



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant8be9a2d7979c2888e5ff625a580abb053d42a041d2d5a25ddf9cb6dd36a8850f

open Lean Meta Elab

namespace Architect

/-- `Config` is the type of arguments that can be provided to `blueprint`. -/
structure Config where
  /-- The statement of the node in text. -/
  statement : Option String := none
  /-- By default, only theorems have separate proof parts. This option overrides this behavior. -/
  hasProof : Option Bool := none
  /-- The proof of the node in text. Uses proof docstrings if not present. -/
  proof : Option String := none
  /-- The set of nodes that this node depends on. Infers from the constant if not present. -/
  uses : Array Name := #[]
  /-- The set of nodes to exclude from `uses`. -/
  excludes : Array Name := #[]
  /-- Additional LaTeX labels of nodes that this node depends on. -/
  usesLabels : Array String := #[]
  /-- The set of labels to exclude from `usesLabels`. -/
  excludesLabels : Array String := #[]
  /-- The set of nodes that the proof of this node depends on. Infers from the constant's value if not present. -/
  proofUses : Array Name := #[]
  /-- The set of nodes to exclude from `proofUses`. -/
  proofExcludes : Array Name := #[]
  /-- Additional LaTeX labels of nodes that the proof of this node depends on. -/
  proofUsesLabels : Array String := #[]
  /-- The set of labels to exclude from `proofUsesLabels`. -/
  proofExcludesLabels : Array String := #[]
  /-- The surrounding environment is not ready to be formalized, typically because it requires more blueprint work. -/
  notReady : Bool := false
  /-- A GitHub issue number where the surrounding definition or statement is discussed. -/
  discussion : Option Nat := none
  /-- The short title of the node in LaTeX. -/
  title : Option String := none
  /-- The LaTeX environment to use for the node. -/
  latexEnv : Option String := none
  /-- The LaTeX label to use for the node. -/
  latexLabel : Option String := none
  /-- Enable debugging. -/
  trace : Bool := false
deriving Repr

syntax blueprintSingleUses := "-"? (ident <|> str)
syntax blueprintUses := "[" blueprintSingleUses,* "]"

/-- Returns array of (used names, excluded names, used labels, excluded labels). -/
def elabBlueprintUses : TSyntax ``blueprintUses →
    CoreM (Array Name × Array Name × Array String × Array String)
  | `(blueprintUses| [$[$usesStx:blueprintSingleUses],*]) => do
    let uses ← usesStx.filterMapM fun
      | `(blueprintSingleUses| $id:ident) => some <$> tryResolveConst id
      | _ => pure none
    let excludes ← usesStx.filterMapM fun
      | `(blueprintSingleUses| -$id:ident) => some <$> tryResolveConst id
      | _ => pure none
    let usesLabels := usesStx.filterMap fun
      | `(blueprintSingleUses| $str:str) => some str.getString
      | _ => none
    let excludesLabels := usesStx.filterMap fun
      | `(blueprintSingleUses| -$str:str) => some str.getString
      | _ => none
    return (uses, excludes, usesLabels, excludesLabels)
  | _ => throwUnsupportedSyntax

syntax blueprintStatementOption := &"statement" " := " plainDocComment
syntax blueprintHasProofOption := &"hasProof" " := " (&"true" <|> &"false")
syntax blueprintProofOption := &"proof" " := " plainDocComment
syntax blueprintUsesOption := &"uses" " := " blueprintUses
syntax blueprintProofUsesOption := &"proofUses" " := " blueprintUses
syntax blueprintTitleOption := &"title" " := " (plainDocComment <|> str)
syntax blueprintNotReadyOption := &"notReady" " := " (&"true" <|> &"false")
syntax blueprintDiscussionOption := &"discussion" " := " num
syntax blueprintLatexEnvOption := &"latexEnv" " := " str
syntax blueprintLatexLabelOption := &"latexLabel" " := " str

syntax blueprintOption := "("
  blueprintStatementOption <|>
  blueprintHasProofOption <|> blueprintProofOption <|>
  blueprintUsesOption <|> blueprintProofUsesOption <|>
  blueprintTitleOption <|>
  blueprintNotReadyOption <|> blueprintDiscussionOption <|>
  blueprintLatexEnvOption <|> blueprintLatexLabelOption ")"
syntax blueprintOptions := (ppSpace str)? (ppSpace blueprintOption)*

/--
The `blueprint` attribute tags a constant to add to the blueprint.

You may optionally add:
- `"latex-label"`: The LaTeX label to use for the node (default: the Lean name).
- `statement := /-- ... -/`: The statement of the node in LaTeX.
- `hasProof := true`: If the node has a proof part (default: true if the node is a theorem).
- `proof := /-- ... -/`: The proof of the node in LaTeX (default: the docstrings in proof tactics).
- `uses := [a, "b"]`: The dependencies of the node, as Lean constants or LaTeX labels (default: inferred from the used constants).
- `proofUses := [a, "b"]`: The dependencies of the proof of the node, as Lean constants or LaTeX labels (default: inferred from the used constants).
- `title := /-- Title -/`: The title of the node in LaTeX.
- `notReady := true`: Whether the node is not ready.
- `discussion := 123`: The discussion issue number of the node.
- `latexEnv := "lemma"`: The LaTeX environment to use for the node (default: "theorem" or "definition").

For more information, see [LeanArchitect](https://github.com/hanwenzhu/LeanArchitect).

Use `blueprint?` to show the raw data of the added node.
-/
syntax (name := blueprint) "blueprint" "?"? blueprintOptions : attr

@[inherit_doc blueprint]
macro "blueprint?" opts:blueprintOptions : attr => `(attr| blueprint ? $opts)

/-- Elaborates the configuration options for `blueprint`. -/
def elabBlueprintConfig : Syntax → CoreM Config
  | `(attr| blueprint%$_tk $[?%$trace?]? $[$label?:str]? $[$opts:blueprintOption]*) => do
    let mut config : Config := { trace := trace?.isSome }
    if let some latexLabel := label? then config := { config with latexLabel := latexLabel.getString }
    for stx in opts do
      match stx with
      | `(blueprintOption| (statement := $doc)) =>
        let statement := (← getDocStringText doc).trimAscii.copy
        config := { config with statement }
      | `(blueprintOption| (hasProof := true)) =>
        config := { config with hasProof := some true }
      | `(blueprintOption| (hasProof := false)) =>
        config := { config with hasProof := some false }
      | `(blueprintOption| (proof := $doc)) =>
        let proof := (← getDocStringText doc).trimAscii.copy
        config := { config with proof }
      | `(blueprintOption| (uses := $uses)) =>
        let (uses, excludes, usesLabels, excludesLabels) ← elabBlueprintUses uses
        config := { config with
          uses := config.uses ++ uses, excludes := config.excludes ++ excludes,
          usesLabels := config.usesLabels ++ usesLabels, excludesLabels := config.excludesLabels ++ excludesLabels }
      | `(blueprintOption| (proofUses := $uses)) =>
        let (uses, excludes, usesLabels, excludesLabels) ← elabBlueprintUses uses
        config := { config with
          proofUses := config.proofUses ++ uses, proofExcludes := config.proofExcludes ++ excludes,
          proofUsesLabels := config.proofUsesLabels ++ usesLabels, proofExcludesLabels := config.proofExcludesLabels ++ excludesLabels }
      | `(blueprintOption| (title := $str:str)) =>
        config := { config with title := str.getString }
      | `(blueprintOption| (title := $doc:docComment)) =>
        config := { config with title := (← getDocStringText doc).trimAscii.copy }
      | `(blueprintOption| (notReady := true)) =>
        config := { config with notReady := true }
      | `(blueprintOption| (notReady := false)) =>
        config := { config with notReady := false }
      | `(blueprintOption| (discussion := $n)) =>
        config := { config with discussion := n.getNat }
      | `(blueprintOption| (latexEnv := $str)) =>
        config := { config with latexEnv := str.getString }
      | `(blueprintOption| (latexLabel := $str)) =>
        config := { config with latexLabel := str.getString }
      | _ => throwUnsupportedSyntax
    return config
  | _ => throwUnsupportedSyntax

/-- Whether a node has a proof part. -/
def hasProof (name : Name) (cfg : Config) : CoreM Bool := do
  return cfg.hasProof.getD (cfg.proof.isSome || wasOriginallyTheorem (← getEnv) name)

def mkStatementPart (_name : Name) (cfg : Config) (hasProof : Bool) : CoreM NodePart := do
  return {
    text := cfg.statement.getD "",
    uses := cfg.uses, excludes := cfg.excludes,
    usesLabels := cfg.usesLabels, excludesLabels := cfg.excludesLabels,
    latexEnv := cfg.latexEnv.getD (if hasProof then "theorem" else "definition")
  }

def mkProofPart (_name : Name) (cfg : Config) : CoreM NodePart := do
  return {
    text := cfg.proof.getD "",
    uses := cfg.proofUses, excludes := cfg.proofExcludes,
    usesLabels := cfg.proofUsesLabels, excludesLabels := cfg.proofExcludesLabels,
    latexEnv := "proof"
  }

def mkNode (name : Name) (cfg : Config) : CoreM Node := do
  trace[blueprint.debug] "mkNode {.ofConstName name} {repr cfg}"
  let latexLabel := cfg.latexLabel.getD name.toString
  if ← hasProof name cfg then
    let statement ← mkStatementPart name cfg true
    let proof ← mkProofPart name cfg
    return { cfg with name, latexLabel, statement, proof }
  else
    let statement ← mkStatementPart name cfg false
    return { cfg with name, latexLabel, statement, proof := none }

-- register_option blueprint.checkCyclicUses : Bool := {
--   defValue := true,
--   descr := "Whether to check for cyclic dependencies in the blueprint."
-- }

-- TODO: remove
-- /--
-- Raises an error if `newLabel` occurs in the (irreflexive transitive) dependencies of `label`.
-- If ignored, this would create a cycle and then an error during `leanblueprint web`.
-- -/
-- partial def checkCyclicUses {m} [Monad m] [MonadEnv m] [MonadError m]
--     (newLabel : String) (label : String)
--     (visited : Std.HashSet String := ∅) (path : Array String := #[]) : m Unit := do
--   let path' := path.push label
--   if visited.contains label then
--     if path.contains label then
--       throwError "cyclic dependency in blueprint:\n  {" uses ".intercalate (path'.toList.map toString)}"
--     else
--       return
--   let visited' := visited.insert label

--   for name in getLeanNamesOfLatexLabel (← getEnv) label do
--     if let some node := blueprintExt.find? (← getEnv) name then
--       for used in node.statement.uses ++ (node.proof.map (·.uses) |>.getD #[]) do
--         checkCyclicUses newLabel used visited' path'
--     else
--       throwError "unknown constant {name} in blueprint"

initialize registerBuiltinAttribute {
    name := `blueprint
    descr := "Adds a node to the blueprint"
    applicationTime := .afterCompilation
    add := fun name stx kind => do
      unless kind == AttributeKind.global do throwError "invalid attribute 'blueprint', must be global"
      let cfg ← elabBlueprintConfig stx
      withOptions (fun o => if cfg.trace then o.set `trace.blueprint true else o) do

      let node ← mkNode name cfg
      blueprintExt.add name node
      modifyEnv fun env => addLeanNameOfLatexLabel env node.latexLabel name
      trace[blueprint] "Blueprint node added:\n{repr node}"

      -- pushInfoLeaf <| .ofTermInfo {
      --   elaborator := .anonymous, lctx := {}, expectedType? := none,
      --   stx, expr := toExpr node }
  }

end Architect
```
