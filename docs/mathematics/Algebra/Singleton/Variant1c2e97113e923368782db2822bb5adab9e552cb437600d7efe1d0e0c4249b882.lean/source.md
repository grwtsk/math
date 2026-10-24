# Complete source: GRWTSK.Algebra.Singleton.Variant1c2e97113e923368782db2822bb5adab9e552cb437600d7efe1d0e0c4249b882

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1caf93ba61a935f6263fa8efb791219926ddafc` · SHA-256 `ad8cc5e49cb03b8df701183db6f41cd3fec06d079f6695c6c4ca50f66af4377c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingHomAdjoinAlgebraMap.Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RingHomAdjoinAlgebraMap.Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Adjoin/Singleton.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Xavier Généreux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Généreux, María Inés de Frutos Fernández
-/
module

public import Mathlib.RingTheory.Adjoin.Polynomial.Basic
public import Mathlib.RingTheory.Polynomial.Tower
/-!
# Adjoin one single element

This file contains basic results on `Algebra.adjoin`, specifically on adjoining singletons.

## Tags

adjoin, algebra, ringhom

-/


namespace GRWTSK.Algebra.RingHomAdjoinAlgebraMap.Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797

@[expose] public section

variable {A B C : Type*} [CommSemiring A] [CommSemiring B] [CommSemiring C]
variable [Algebra A B] [Algebra B C] [Algebra A C] [IsScalarTower A B C] (b : B)

namespace Algebra

open Polynomial

/-- Ring homomorphism between `A[b]` and `A[↑b]`. -/
def RingHom.adjoinAlgebraMap :
    A[b] →+* A[(algebraMap B C) b] :=
  RingHom.codRestrict (((Algebra.ofId B C).restrictScalars A).comp
    (Subalgebra.val A[b])) _
    (fun x ↦ by induction x using adjoin_singleton_induction with
      | f p => aesop (add norm [adjoin_singleton_eq_range_aeval, aeval_algebraMap_apply]))

@[simp]
theorem RingHom.adjoinAlgebraMap_apply (x : A[b]) :
    (RingHom.adjoinAlgebraMap b x (C := C) : C) = algebraMap B C x := rfl

theorem RingHom.adjoinAlgebraMap_surjective :
    Function.Surjective (RingHom.adjoinAlgebraMap (A := A) b (C := C)) := by
  intro c
  obtain ⟨p, hp⟩ := adjoin_eq_exists_aeval A (algebraMap B C b) c
  aesop (add safe ((aeval_algebraMap_apply C b p).symm))

instance : Algebra A[b] A[(algebraMap B C) b] :=
  RingHom.toAlgebra (RingHom.adjoinAlgebraMap b)

instance : IsScalarTower A[b] A[(algebraMap B C) b] C :=
  IsScalarTower.of_algebraMap_eq' rfl

/-- If the `algebraMap` injective then we have a Ring isomorphism between A[b] and A[↑b]. -/
noncomputable def RingHom.adjoinAlgebraMapEquiv [FaithfulSMul B C] :
    A[b] ≃+* A[(algebraMap B C) b] := by
  apply RingEquiv.ofBijective (RingHom.adjoinAlgebraMap b)
     ((Function.bijective_iff_existsUnique (adjoinAlgebraMap b)).mpr (fun y ↦ ?_))
  induction y using Algebra.adjoin_singleton_induction with | f p =>
  use ⟨p.aeval b, by simp⟩
  aesop (add norm [Polynomial.aeval_algebraMap_apply, Subtype.ext_iff])

end Algebra
```
