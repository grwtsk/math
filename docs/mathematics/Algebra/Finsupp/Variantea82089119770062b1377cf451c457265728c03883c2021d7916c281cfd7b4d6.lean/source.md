# Complete source: GRWTSK.Algebra.Finsupp.Variantea82089119770062b1377cf451c457265728c03883c2021d7916c281cfd7b4d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f4f07bd7ba3cc32b6b99bc9d4f9522738af6829` · SHA-256 `d5582cea56760f2dab49b6d75efe8ec1ab3fd1dff1d72e9bdafda1d5abd59a49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FinsuppLEquivDirectSum.Variant11e509f28d2714efde26c861f309e6d35868d8c199a16041e1c1631a79ea84eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11e509f28d2714efde26c861f309e6d35868d8c199a16041e1c1631a79ea84eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FinsuppLEquivDirectSum.Variant11e509f28d2714efde26c861f309e6d35868d8c199a16041e1c1631a79ea84eb","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"11e509f28d2714efde26c861f309e6d35868d8c199a16041e1c1631a79ea84eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/DirectSum/Finsupp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
module

public import Mathlib.Algebra.DirectSum.Module
public import Mathlib.Data.Finsupp.ToDFinsupp

/-!
# Results on direct sums and finitely supported functions.

1. The linear equivalence between finitely supported functions `ι →₀ M` and
   the direct sum of copies of `M` indexed by `ι`.
-/


namespace GRWTSK.Algebra.FinsuppLEquivDirectSum.Variant11e509f28d2714efde26c861f309e6d35868d8c199a16041e1c1631a79ea84eb

@[expose] public section


universe u v w

noncomputable section

open DirectSum

open LinearMap

variable {R : Type u} {M : Type v} [Semiring R] [AddCommMonoid M] [Module R M]

section finsuppLequivDirectSum

variable (R M) (ι : Type*) [DecidableEq ι]

/-- The finitely supported functions `ι →₀ M` are in linear equivalence with the direct sum of
copies of M indexed by ι. -/
def finsuppLEquivDirectSum : (ι →₀ M) ≃ₗ[R] ⨁ _ : ι, M :=
  haveI : ∀ m : M, Decidable (m ≠ 0) := Classical.decPred _
  finsuppLequivDFinsupp R

@[simp]
theorem finsuppLEquivDirectSum_single (i : ι) (m : M) :
    finsuppLEquivDirectSum R M ι (Finsupp.single i m) = DirectSum.lof R ι _ i m :=
  Finsupp.toDFinsupp_single i m

@[simp]
theorem finsuppLEquivDirectSum_apply (m : ι →₀ M) (i : ι) :
    finsuppLEquivDirectSum R M ι m i = m i := by
  rfl

@[simp]
theorem finsuppLEquivDirectSum_symm_lof (i : ι) (m : M) :
    (finsuppLEquivDirectSum R M ι).symm (DirectSum.lof R ι _ i m) = Finsupp.single i m :=
  letI : ∀ m : M, Decidable (m ≠ 0) := Classical.decPred _
  DFinsupp.toFinsupp_single i m

theorem lmap_finsuppLEquivDirectSum_eq {N : Type*} [AddCommMonoid N] [Module R N]
    (ε : M →ₗ[R] N) (m : ι →₀ M) :
    (lmap fun _ ↦ ε) ((finsuppLEquivDirectSum R M ι) m) =
      (finsuppLEquivDirectSum R N ι) (m.mapRange ⇑ε ε.map_zero) := by
  ext i
  rfl

end finsuppLequivDirectSum
```
