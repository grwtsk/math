-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CSA.Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CSA.Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BrauerGroup/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yunzhou Xie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yunzhou Xie, Jujian Zhang
-/
import Mathlib.Algebra.Category.AlgCat.Basic
import Mathlib.Algebra.Central.Defs
import Mathlib.LinearAlgebra.FiniteDimensional.Defs
import Mathlib.LinearAlgebra.Matrix.Reindex

/-!
# Definition of Brauer group of a field K

We introduce the definition of Brauer group of a field K, which is the quotient of the set of
all finite-dimensional central simple algebras over K modulo the Brauer Equivalence where two
central simple algebras `A` and `B` are Brauer Equivalent if there exist `n, m ∈ ℕ+` such
that `Mₙ(A) ≃ₐ[K] Mₘ(B)`.

# TODOs
1. Prove that the Brauer group is an abelian group where multiplication is defined as tensorproduct.
2. Prove that the Brauer group is a functor from the category of fields to the category of groups.
3. Prove that over a field, being Brauer equivalent is the same as being Morita equivalent.

# References
* [Algebraic Number Theory, *J.W.S Cassels*][cassels1967algebraic]

## Tags
Brauer group, Central simple algebra, Galois Cohomology
-/


namespace GRWTSK.Algebra.LinearAlgebra.CSA.Variant3a561647b5648d2cf8cc50353e7c8963ca902da0bc49886d38c51e54e55f2170

universe u v

/-- `CSA` is the set of all finite dimensional central simple algebras over field `K`, for its
generalisation over a `CommRing` please find `IsAzumaya` in `Mathlib/Algebra/Azumaya/Defs.lean`. -/
structure CSA (K : Type u) [Field K] extends AlgCat.{v} K where
  /-- Any member of `CSA` is central. -/
  [isCentral : Algebra.IsCentral K carrier]
  /-- Any member of `CSA` is simple. -/
  [isSimple : IsSimpleRing carrier]
  /-- Any member of `CSA` is finite-dimensional. -/
  [fin_dim : FiniteDimensional K carrier]

variable {K : Type u} [Field K]

instance : CoeSort (CSA.{u, v} K) (Type v) := ⟨(·.carrier)⟩

attribute [instance] CSA.isCentral CSA.isSimple CSA.fin_dim

/-- Two finite dimensional central simple algebras `A` and `B` are Brauer Equivalent
  if there exist `n, m ∈ ℕ+` such that the `Mₙ(A) ≃ₐ[K] Mₙ(B)`. -/
abbrev IsBrauerEquivalent (A B : CSA K) : Prop :=
  ∃ n m : ℕ, n ≠ 0 ∧ m ≠ 0 ∧ (Nonempty <| Matrix (Fin n) (Fin n) A ≃ₐ[K] Matrix (Fin m) (Fin m) B)

namespace IsBrauerEquivalent

@[refl]
lemma refl (A : CSA K) : IsBrauerEquivalent A A :=
  ⟨1, 1, one_ne_zero, one_ne_zero, ⟨AlgEquiv.refl⟩⟩

@[symm]
lemma symm {A B : CSA K} (h : IsBrauerEquivalent A B) : IsBrauerEquivalent B A :=
  let ⟨n, m, hn, hm, ⟨iso⟩⟩ := h
  ⟨m, n, hm, hn, ⟨iso.symm⟩⟩

open Matrix in
@[trans]
lemma trans {A B C : CSA K} (hAB : IsBrauerEquivalent A B) (hBC : IsBrauerEquivalent B C) :
    IsBrauerEquivalent A C := by
  obtain ⟨n, m, hn, hm, ⟨iso1⟩⟩ := hAB
  obtain ⟨p, q, hp, hq, ⟨iso2⟩⟩ := hBC
  exact ⟨p * n, m * q, by simp_all, by simp_all,
    ⟨reindexAlgEquiv _ _ finProdFinEquiv |>.symm.trans <| compAlgEquiv _ _ _ _|>.symm.trans <|
    iso1.mapMatrix (m := Fin p)|>.trans <| compAlgEquiv _ _ _ _|>.trans <|
    reindexAlgEquiv K B (.prodComm (Fin p) (Fin m))|>.trans <| compAlgEquiv _ _ _ _|>.symm.trans <|
    iso2.mapMatrix.trans <| compAlgEquiv _ _ _ _|>.trans <| reindexAlgEquiv _ _ finProdFinEquiv⟩⟩

lemma is_eqv : Equivalence (IsBrauerEquivalent (K := K)) where
  refl := refl
  symm := symm
  trans := trans

end IsBrauerEquivalent

variable (K)

/-- `CSA` equipped with Brauer Equivalence is indeed a setoid. -/
def Brauer.CSA_Setoid: Setoid (CSA K) where
  r := IsBrauerEquivalent
  iseqv := IsBrauerEquivalent.is_eqv

/-- `BrauerGroup` is the set of all finite-dimensional central simple algebras quotient
  by Brauer Equivalence. -/
abbrev BrauerGroup := Quotient (Brauer.CSA_Setoid K)
