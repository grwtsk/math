# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variant69084af86652e55959711fe3b2071b5c35cbfe478ccfa559db0b81a5c611afe5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `051cf419cac354374e24aa60bdcb9a591c912620` · SHA-256 `291c53d06750de9d138b5f501e8008102a862566d042b372410e9953d809dc3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ModuleFiniteOfBasis.Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ModuleFiniteOfBasis.Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/FreeModule/Finite/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca
-/
import Mathlib.LinearAlgebra.FreeModule.Basic
import Mathlib.LinearAlgebra.Matrix.StdBasis
import Mathlib.RingTheory.Finiteness.Cardinality

/-!
# Finite and free modules

We provide some instances for finite and free modules.

## Main results

* `Module.Free.ChooseBasisIndex.fintype` : If a free module is finite, then any basis is finite.
* `Module.Finite.of_basis` : A free module with a basis indexed by a `Fintype` is finite.
-/


namespace GRWTSK.Algebra.LinearAlgebra.ModuleFiniteOfBasis.Variantb26da8fe59af751f6d3a70849f7d60746b46ad8e90c7a57c310497ecfa1502c4

universe u v w

/-- If a free module is finite, then the arbitrary basis is finite. -/
noncomputable instance Module.Free.ChooseBasisIndex.fintype (R : Type u) (M : Type v)
    [Semiring R] [AddCommMonoid M] [Module R M] [Module.Free R M] [Module.Finite R M] :
    Fintype (Module.Free.ChooseBasisIndex R M) := by
  refine @Fintype.ofFinite _ ?_
  cases subsingleton_or_nontrivial R
  · have := Module.subsingleton R M
    rw [ChooseBasisIndex]
    infer_instance
  · exact Module.Finite.finite_basis (chooseBasis _ _)

/-- A free module with a basis indexed by a `Fintype` is finite. -/
theorem Module.Finite.of_basis {R M ι : Type*} [Semiring R] [AddCommMonoid M] [Module R M]
    [_root_.Finite ι] (b : Basis ι R M) : Module.Finite R M := by
  cases nonempty_fintype ι
  classical
    refine ⟨⟨Finset.univ.image b, ?_⟩⟩
    simp only [Set.image_univ, Finset.coe_univ, Finset.coe_image, Basis.span_eq]

instance Module.Finite.matrix {R ι₁ ι₂ M : Type*}
    [Semiring R] [AddCommMonoid M] [Module R M] [Module.Free R M] [Module.Finite R M]
    [_root_.Finite ι₁] [_root_.Finite ι₂] :
    Module.Finite R (Matrix ι₁ ι₂ M) := by
  cases nonempty_fintype ι₁
  cases nonempty_fintype ι₂
  exact Module.Finite.of_basis <| (Free.chooseBasis _ _).matrix _ _

example {ι₁ ι₂ R : Type*} [Semiring R] [Finite ι₁] [Finite ι₂] :
    Module.Finite R (Matrix ι₁ ι₂ R) := inferInstance
```
