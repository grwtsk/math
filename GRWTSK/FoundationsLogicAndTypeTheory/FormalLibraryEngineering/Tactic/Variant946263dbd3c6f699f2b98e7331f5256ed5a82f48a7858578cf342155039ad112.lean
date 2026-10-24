-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/LeanArchitect/Architect/Tactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import Batteries.Lean.NameMapAttribute
import Architect.Basic



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c

open Lean Elab Tactic Meta

namespace Architect

namespace ProofDocString

/-! Here we implement docstrings but for proofs. -/

-- NB: I copied some logic from `aliasExtension`

abbrev State := SMap Name (Array String)
abbrev Entry := Name × String

private def addEntryFn (s : State) (e : Entry) : State :=
  match s.find? e.1 with
  | none => s.insert e.1 #[e.2]
  | some es => s.insert e.1 (es.push e.2)

/-- The environment extension that stores proof docstrings. -/
initialize proofDocStringExt : SimplePersistentEnvExtension Entry State ←
  registerSimplePersistentEnvExtension {
    addEntryFn := addEntryFn
    addImportedFn := fun es => mkStateFromImportedEntries addEntryFn {} es |>.switch
    asyncMode := .async .asyncEnv
  }

end ProofDocString

open ProofDocString

def addProofDocString (env : Environment) (name : Name) (doc : String) : Environment :=
  proofDocStringExt.addEntry (asyncDecl := name) env (name, doc)

def getProofDocString (env : Environment) (name : Name) : String :=
  "\n\n".intercalate <|
    proofDocStringExt.getState (asyncDecl := name) env |>.find? name |>.getD #[] |>.toList

elab (name := tacticDocComment) docComment:plainDocComment t:tactic : tactic => do
  let some name ← Term.getDeclName? | throwError "could not get declaration name"
  let doc := (← getDocStringText ⟨docComment⟩).trimAscii.copy
  modifyEnv fun env => addProofDocString env name doc
  -- NOTE: an alternative approach is to remove `t:tactic` and `evalTactic t`.
  -- This would also work for our purpose, but we require a following `t:tactic` and then immediately
  -- evaluate it because this would avoid the unusedTactic linter in Mathlib to flag the docComment
  -- (and we do not currently import Mathlib and hence cannot modify to ignore `tacticDocComment`).
  evalTactic t

/-! We implement the `blueprint_using` and `sorry_using` tactics that declares used constants. -/

-- **TODO**: support `sorry_using ["label"]` (which should accumulate to an environment extension similar to `proofDocStringExt`).

/--
`blueprint_using [a, b]` adds `a` and `b` as dependencies for the blueprint metadata.

It is basically the same as `let := a; let := b`.
-/
elab "blueprint_using" " [" ids:ident,* "]" : tactic => do
  for id in ids.getElems do
    let used ← realizeGlobalConstNoOverloadWithInfo id
    let info ← getConstInfo used
    -- Instantiate universe level parameters with 0, to avoid errors
    let lvls := List.replicate info.numLevelParams levelZero
    let ty := info.instantiateTypeLevelParams lvls
    let const := mkConst used lvls
    liftMetaTactic1 fun g => do
      let g' ← g.define (← mkFreshBinderNameForTactic `blueprint_using) ty const
      let (_, g'') ← g'.intro1P
      return g''

/--
`sorry_using [a, b]` is the same as `sorry`, but adds `a` and `b` as dependencies for the blueprint metadata.

It is basically similar to `let := a; let := b; sorry`.
-/
elab (name := tacticSorryUsing) "sorry_using" " [" ids:ident,* "]" : tactic => do
  evalTactic (← `(tactic| blueprint_using [$[$ids],*]))
  liftMetaTactic1 fun g => do
    let mut g := g
    -- We touch every local hypothesis to avoid unused variable linter
    -- This is not an elegant solution, but it works
    for h in ← getLocalHyps do
      g ← g.define (← mkFreshBinderNameForTactic `sorry_using) (← inferType h) h
      (_, g) ← g.intro1P
    -- A non-synthetic sorry because the `sorry_using` tactic is explicitly written by the user
    g.admit (synthetic := false)
    return g

@[inherit_doc tacticSorryUsing]
macro (name := termSorryUsing) "sorry_using" " [" ids:ident,* "]" : term =>
  `(term| by sorry_using [$[$ids],*])

end Architect
