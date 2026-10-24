# Submodule.natAbs_det_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a890ebe0-54da-6b09-658a-08ce73f5aced",
  "kind": "theorem",
  "lexical_name": "Submodule.natAbs_det_equiv",
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
  "slug": "submodule-natabs-det-equiv--8041c19212d6f250ffd2f9ff",
  "source": {
    "blob": "7628fc46b586a165466f26e818e72dbab58e64ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8041c19212d6f250ffd2f9ff441d87d2669e9e28e1dffbbc6542d2772e3dda4c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a890ebe0-54da-6b09-658a-08ce73f5aced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.natAbs_det_equiv (N : Submodule ℤ M) {E : Type*} [EquivLike E M N]
    [AddEquivClass E M N] (e : E) :
    Int.natAbs
      (LinearMap.det
        (N.subtype ∘ₗ AddMonoidHom.toIntLinearMap (e : M →+ N))) =
      Nat.card (M ⧸ N) := by
  let b := Module.Free.chooseBasis ℤ M
  -- Since `e : M ≃ₗ[ℤ] N`, the submodule `N` has full rank.
  have h : Module.finrank ℤ N = Module.finrank ℤ M :=
    (AddEquiv.toIntLinearEquiv e : M ≃ₗ[ℤ] N).symm.finrank_eq
  -- Use the Smith normal form to choose a nice basis for `N`.
  let a := smithNormalFormCoeffs b h
  let b' := smithNormalFormTopBasis b h
  let ab := smithNormalFormBotBasis b h
  have ab_eq := smithNormalFormBotBasis_def b h
  let e' : M ≃ₗ[ℤ] N := b'.equiv ab (Equiv.refl _)
  let f : M →ₗ[ℤ] M := N.subtype.comp (e' : M →ₗ[ℤ] N)
  let f_apply : ∀ x, f x = b'.equiv ab (Equiv.refl _) x := fun x ↦ rfl
  suffices (LinearMap.det f).natAbs = Nat.card (M ⧸ N) by
    calc
      _ = (LinearMap.det (N.subtype ∘ₗ
            (AddEquiv.toIntLinearEquiv e : M ≃ₗ[ℤ] N))).natAbs := rfl
      _ = (LinearMap.det (N.subtype ∘ₗ _)).natAbs :=
            Int.natAbs_eq_iff_associated.mpr (LinearMap.associated_det_comp_equiv _ _ _)
      _ = Nat.card (M ⧸ N) := this
  have ha : ∀ i, f (b' i) = a i • b' i := by
    intro i
    rw [f_apply, b'.equiv_apply, Equiv.refl_apply]
    exact ab_eq i
  calc
    Int.natAbs (LinearMap.det f) = Int.natAbs (LinearMap.toMatrix b' b' f).det := by
      rw [LinearMap.det_toMatrix]
    _ = Int.natAbs (Matrix.diagonal a).det := ?_
    _ = Int.natAbs (∏ i, a i) := by rw [Matrix.det_diagonal]
    _ = ∏ i, Int.natAbs (a i) := map_prod Int.natAbsHom a Finset.univ
    _ = Nat.card (M ⧸ N) := ?_
  -- since `LinearMap.toMatrix b' b' f` is the diagonal matrix with `a` along the diagonal.
  · congr 2; ext i j
    rw [LinearMap.toMatrix_apply, ha, LinearEquiv.map_smul, Basis.repr_self, Finsupp.smul_single,
      smul_eq_mul, mul_one]
    by_cases h : i = j
    · rw [h, Matrix.diagonal_apply_eq, Finsupp.single_eq_same]
    · rw [Matrix.diagonal_apply_ne _ h, Finsupp.single_eq_of_ne (Ne.symm h)]
  -- Now we map everything through the linear equiv `M ≃ₗ (ι → ℤ)`,
  -- which maps `(M ⧸ N)` to `Π i, ZMod (a i).nat_abs`.
  haveI : ∀ i, NeZero (a i).natAbs := fun i ↦
    ⟨Int.natAbs_ne_zero.mpr (smithNormalFormCoeffs_ne_zero b h i)⟩
  simp_rw [Nat.card_congr (quotientEquivPiZMod N b h).toEquiv, Nat.card_pi, Nat.card_zmod, a]

/-- Let `b` be a basis for `M` over `ℤ` and `bN` a basis for `N` over `ℤ` of the same dimension.
Then an alternative way to compute the cardinality of `M ⧸ N` is given by taking the determinant
of `bN` over `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variantd192c920639751f8237dbf14be6826ff2b97784df2343e5a63b4f921ff04baaf.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7628fc46b586a165466f26e818e72dbab58e64ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
