# natAbs_det_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:640c122f-8345-7f95-5817-702a3941ab6c",
  "kind": "theorem",
  "lexical_name": "natAbs_det_equiv",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "natabs-det-equiv--6d6fb6eb58c215f16710bdf7",
  "source": {
    "blob": "6d923f2e4dd9a2557437ebe2b2d61abf55144b8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 294,
    "path": "GRWTSK/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d6fb6eb58c215f16710bdf7e42385c5d77db7307a544f0885266f1108ebec5d",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:640c122f-8345-7f95-5817-702a3941ab6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natAbs_det_equiv (I : Ideal S) {E : Type*} [AddEquivClass E S I] (e : E) :
    Int.natAbs
        (LinearMap.det
          ((Submodule.subtype I).restrictScalars ℤ ∘ₗ AddMonoidHom.toIntLinearMap (e : S →+ I))) =
      Ideal.absNorm I := by
  -- `S ⧸ I` might be infinite if `I = ⊥`, but then `e` can't be an equiv.
  by_cases hI : I = ⊥
  · subst hI
    have : (1 : S) ≠ 0 := one_ne_zero
    have : (1 : S) = 0 := EquivLike.injective e (Subsingleton.elim _ _)
    contradiction
  let ι := Module.Free.ChooseBasisIndex ℤ S
  let b := Module.Free.chooseBasis ℤ S
  cases isEmpty_or_nonempty ι
  · nontriviality S
    exact (not_nontrivial_iff_subsingleton.mpr
      (Function.Surjective.subsingleton b.repr.toEquiv.symm.surjective) (by infer_instance)).elim
  -- Thus `(S ⧸ I)` is isomorphic to a product of `ZMod`s, so it is a fintype.
  letI := Ideal.fintypeQuotientOfFreeOfNeBot I hI
  -- Use the Smith normal form to choose a nice basis for `I`.
  letI := Classical.decEq ι
  let a := I.smithCoeffs b hI
  let b' := I.ringBasis b hI
  let ab := I.selfBasis b hI
  have ab_eq := I.selfBasis_def b hI
  let e' : S ≃ₗ[ℤ] I := b'.equiv ab (Equiv.refl _)
  let f : S →ₗ[ℤ] S := (I.subtype.restrictScalars ℤ).comp (e' : S →ₗ[ℤ] I)
  let f_apply : ∀ x, f x = b'.equiv ab (Equiv.refl _) x := fun x => rfl
  suffices (LinearMap.det f).natAbs = Ideal.absNorm I by
    calc
      _ = (LinearMap.det ((Submodule.subtype I).restrictScalars ℤ ∘ₗ
            (AddEquiv.toIntLinearEquiv e : S ≃ₗ[ℤ] I))).natAbs := rfl
      _ = (LinearMap.det ((Submodule.subtype I).restrictScalars ℤ ∘ₗ _)).natAbs :=
            Int.natAbs_eq_iff_associated.mpr (LinearMap.associated_det_comp_equiv _ _ _)
      _ = absNorm I := this
  have ha : ∀ i, f (b' i) = a i • b' i := by
    intro i; rw [f_apply, b'.equiv_apply, Equiv.refl_apply, ab_eq]
  -- `det f` is equal to `∏ i, a i`,
  letI := Classical.decEq ι
  calc
    Int.natAbs (LinearMap.det f) = Int.natAbs (LinearMap.toMatrix b' b' f).det := by
      rw [LinearMap.det_toMatrix]
    _ = Int.natAbs (Matrix.diagonal a).det := ?_
    _ = Int.natAbs (∏ i, a i) := by rw [Matrix.det_diagonal]
    _ = ∏ i, Int.natAbs (a i) := (map_prod Int.natAbsHom a Finset.univ)
    _ = Fintype.card (S ⧸ I) := ?_
    _ = absNorm I := (Submodule.cardQuot_apply _).symm
  -- since `LinearMap.toMatrix b' b' f` is the diagonal matrix with `a` along the diagonal.
  · congr 2; ext i j
    rw [LinearMap.toMatrix_apply, ha, LinearEquiv.map_smul, Basis.repr_self, Finsupp.smul_single,
      smul_eq_mul, mul_one]
    by_cases h : i = j
    · rw [h, Matrix.diagonal_apply_eq, Finsupp.single_eq_same]
    · rw [Matrix.diagonal_apply_ne _ h, Finsupp.single_eq_of_ne (Ne.symm h)]
  -- Now we map everything through the linear equiv `S ≃ₗ (ι → ℤ)`,
  -- which maps `(S ⧸ I)` to `Π i, ZMod (a i).nat_abs`.
  haveI : ∀ i, NeZero (a i).natAbs := fun i =>
    ⟨Int.natAbs_ne_zero.mpr (Ideal.smithCoeffs_ne_zero b I hI i)⟩
  simp_rw [Fintype.card_eq.mpr ⟨(Ideal.quotientEquivPiZMod I b hI).toEquiv⟩, Fintype.card_pi,
    ZMod.card]
#align ideal.nat_abs_det_equiv Ideal.natAbs_det_equiv

/-- Let `b` be a basis for `S` over `ℤ` and `bI` a basis for `I` over `ℤ` of the same dimension.
Then an alternative way to compute the norm of `I` is given by taking the determinant of `bI`
over `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d923f2e4dd9a2557437ebe2b2d61abf55144b8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
