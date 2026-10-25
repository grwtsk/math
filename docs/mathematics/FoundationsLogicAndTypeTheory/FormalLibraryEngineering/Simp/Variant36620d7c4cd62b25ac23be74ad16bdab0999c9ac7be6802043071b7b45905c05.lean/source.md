# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant36620d7c4cd62b25ac23be74ad16bdab0999c9ac7be6802043071b7b45905c05

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7041c8dfb5738a91464dbc2caa81030c644e60da` · SHA-256 `3fe5e5151e2393c5c28520f55a692dff439ed3f95b00479867c5aa0e689f3bc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StepQDone.Variant22b544ad69576ae068f4e7fc22b4c1f8132f577ed6efee714701985fac8e787f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22b544ad69576ae068f4e7fc22b4c1f8132f577ed6efee714701985fac8e787f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.StepQDone.Variant22b544ad69576ae068f4e7fc22b4c1f8132f577ed6efee714701985fac8e787f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"22b544ad69576ae068f4e7fc22b4c1f8132f577ed6efee714701985fac8e787f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/Qq/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Qq.MetaM
public import Lean.Meta.Tactic.Simp.Types


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StepQDone.Variant22b544ad69576ae068f4e7fc22b4c1f8132f577ed6efee714701985fac8e787f

public section

/-!
# Qq integration for `simproc`s

This file adds wrappers for operations relating to `simproc`s in the `Lean.Meta.Simp` namespace.

It can be used as
```lean
simproc_decl some_proc (some_pattern) := Meta.Simp.Simproc.ofQ fun u α e => do
  sorry
```
instead of the usual
```lean
simproc_decl some_proc (some_pattern) := fun e => do
  sorry
```
-/

open Lean Qq

variable {u : Level} {α : Q(Sort u)}

namespace Lean.Meta.Simp

/-- A copy of `Meta.Simp.Result` with explicit types. -/
@[expose] def ResultQ (_e : Q($α)) : Type := Lean.Meta.Simp.Result

/-- A copy of `Meta.Simp.Result.mk` with explicit types. -/
@[inline] def ResultQ.mk {e : Q($α)}
    (expr : Q($α))
    (proof? : Option Q($e = $expr))
    (cache : Bool := true) : ResultQ e :=
  {expr, proof?, cache}

/-- A copy of `Meta.Simp.Step` with explicit types. -/
@[expose] def StepQ (_e : Q($α)) : Type := Step

@[inherit_doc Step.done, inline]
def StepQ.done {e : Q($α)} (r : ResultQ e) : StepQ e := Step.done r
@[inherit_doc Step.visit, inline]
def StepQ.visit {e : Q($α)} (r : ResultQ e) : StepQ e := Step.visit r
@[inherit_doc Step.continue, inline]
def StepQ.continue {e : Q($α)} (r : Option (ResultQ e) := none) : StepQ e := Step.continue r

/-- A copy of `Lean.Meta.Simproc` with explicit types.

See `Simproc.ofQ` to construct terms of this type. -/
abbrev SimprocQ : Type := ∀ (u : Level) (α : Q(Sort u)) (e : Q($α)), Meta.SimpM (StepQ e)

/-- Build a simproc with Qq-enabled typechecking of inputs and outputs.

This calls `inferTypeQ` on the expression and passes the arguments to `proc`. -/
@[inline] def Simproc.ofQ (proc : SimprocQ) : Simproc := fun e => do
  let ⟨u, α, e⟩ ← inferTypeQ e
  proc u α e

end Lean.Meta.Simp
````
