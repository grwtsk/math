# Complete source: GRWTSK.Algebra.FiniteStability.Variantad00af87bc03a83a9b28aa4a8fb6d44f8aa08a12d47c148fe9831d3bfad08b4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2381d76c2c06d4fc4946f5ada6a786fc3e463426` · SHA-256 `72bc7abc0d445e79728948a2c0890f76324d8025887b1ddb3d8e56d252929282`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.BaseChangeAuxSurj.Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.BaseChangeAuxSurj.Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/FiniteStability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.LinearAlgebra.TensorProduct.RightExactness
import Mathlib.RingTheory.FinitePresentation
import Mathlib.RingTheory.TensorProduct.MvPolynomial

/-!

# Stability of finiteness conditions in commutative algebra

In this file we show that `Algebra.FiniteType` and `Algebra.FinitePresentation` are
stable under base change.

-/


namespace GRWTSK.Algebra.BaseChangeAuxSurj.Variant2e15cfde5b9393e464ce8ae2a1542565250e937dc5e8618c26e34e5da5b2a735

open scoped TensorProduct

universe w₁ w₂ w₃

variable {R : Type w₁} [CommRing R]
variable {A : Type w₂} [CommRing A] [Algebra R A]
variable (B : Type w₃) [CommRing B] [Algebra R B]

namespace Algebra

namespace FiniteType

theorem baseChangeAux_surj {σ : Type*} {f : MvPolynomial σ R →ₐ[R] A} (hf : Function.Surjective f) :
    Function.Surjective (Algebra.TensorProduct.map (AlgHom.id B B) f) := by
  show Function.Surjective (TensorProduct.map (AlgHom.id R B) f)
  apply TensorProduct.map_surjective
  · exact Function.RightInverse.surjective (congrFun rfl)
  · exact hf

instance baseChange [hfa : FiniteType R A] : Algebra.FiniteType B (B ⊗[R] A) := by
  rw [iff_quotient_mvPolynomial''] at *
  obtain ⟨n, f, hf⟩ := hfa
  let g : B ⊗[R] MvPolynomial (Fin n) R →ₐ[B] B ⊗[R] A :=
    Algebra.TensorProduct.map (AlgHom.id B B) f
  have : Function.Surjective g := baseChangeAux_surj B hf
  use n, AlgHom.comp g (MvPolynomial.algebraTensorAlgEquiv R B).symm.toAlgHom
  simpa

end FiniteType

namespace FinitePresentation

instance baseChange [FinitePresentation R A] : FinitePresentation B (B ⊗[R] A) := by
  obtain ⟨n, f, hsurj, hfg⟩ := ‹FinitePresentation R A›
  let g : B ⊗[R] MvPolynomial (Fin n) R →ₐ[B] B ⊗[R] A :=
    Algebra.TensorProduct.map (AlgHom.id B B) f
  have hgsurj : Function.Surjective g := Algebra.FiniteType.baseChangeAux_surj B hsurj
  have hker_eq : RingHom.ker g = Ideal.map Algebra.TensorProduct.includeRight (RingHom.ker f) :=
    Algebra.TensorProduct.lTensor_ker f hsurj
  have hfgg : Ideal.FG (RingHom.ker g) := by
    rw [hker_eq]
    exact Ideal.FG.map hfg _
  let g' : MvPolynomial (Fin n) B →ₐ[B] B ⊗[R] A :=
    AlgHom.comp g (MvPolynomial.algebraTensorAlgEquiv R B).symm.toAlgHom
  refine ⟨n, g', ?_, Ideal.fg_ker_comp _ _ ?_ hfgg ?_⟩
  · simp_all [g, g']
  · show Ideal.FG (RingHom.ker (AlgEquiv.symm (MvPolynomial.algebraTensorAlgEquiv R B)))
    simp only [RingHom.ker_equiv]
    exact Submodule.fg_bot
  · simpa using EquivLike.surjective _

end FinitePresentation

end Algebra
```
