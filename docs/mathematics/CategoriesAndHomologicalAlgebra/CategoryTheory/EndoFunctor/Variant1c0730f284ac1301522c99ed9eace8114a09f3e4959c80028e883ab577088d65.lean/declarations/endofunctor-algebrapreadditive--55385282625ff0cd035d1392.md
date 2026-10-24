# Endofunctor.algebraPreadditive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf0da595abfdb6c3d009b6c2b41fd024604cad1bc92f8682f803efbf43469563",
  "kind": "instance",
  "lexical_name": "Endofunctor.algebraPreadditive",
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
  "slug": "endofunctor-algebrapreadditive--55385282625ff0cd035d1392",
  "source": {
    "blob": "4aa2eb8da5adb77a426a834d31fe5ac352e3312c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55385282625ff0cd035d1392d2529f1da940128483a8d63a34d0bdf2b6992013",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf0da595abfdb6c3d009b6c2b41fd024604cad1bc92f8682f803efbf43469563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Endofunctor.algebraPreadditive : Preadditive (Endofunctor.Algebra F) where
  homGroup A₁ A₂ :=
    { add := fun α β =>
        { f := α.f + β.f
          h := by simp only [Functor.map_add, add_comp, Endofunctor.Algebra.Hom.h, comp_add] }
      zero :=
        { f := 0
          h := by simp only [Functor.map_zero, zero_comp, comp_zero] }
      nsmul := fun n α =>
        { f := n • α.f
          h := by rw [comp_nsmul, Functor.map_nsmul, nsmul_comp, Endofunctor.Algebra.Hom.h] }
      neg := fun α =>
        { f := -α.f
          h := by simp only [Functor.map_neg, neg_comp, Endofunctor.Algebra.Hom.h, comp_neg] }
      sub := fun α β =>
        { f := α.f - β.f
          h := by simp only [Functor.map_sub, sub_comp, Endofunctor.Algebra.Hom.h, comp_sub] }
      zsmul := fun r α =>
        { f := r • α.f
          h := by rw [comp_zsmul, Functor.map_zsmul, zsmul_comp, Endofunctor.Algebra.Hom.h] }
      add_assoc := by
        intros
        apply Algebra.Hom.ext
        apply add_assoc
      zero_add := by
        intros
        apply Algebra.Hom.ext
        apply zero_add
      add_zero := by
        intros
        apply Algebra.Hom.ext
        apply add_zero
      nsmul_zero := by
        intros
        apply Algebra.Hom.ext
        apply zero_smul
      nsmul_succ := by
        intros
        apply Algebra.Hom.ext
        apply succ_nsmul
      sub_eq_add_neg := by
        intros
        apply Algebra.Hom.ext
        apply sub_eq_add_neg
      zsmul_zero' := by
        intros
        apply Algebra.Hom.ext
        apply zero_smul
      zsmul_succ' := by
        intros
        apply Algebra.Hom.ext
        simp only [natCast_zsmul, succ_nsmul]
        rfl
      zsmul_neg' := by
        intros
        apply Algebra.Hom.ext
        simp only [negSucc_zsmul, neg_inj, ← Nat.cast_smul_eq_nsmul ℤ]
      neg_add_cancel := by
        intros
        apply Algebra.Hom.ext
        apply neg_add_cancel
      add_comm := by
        intros
        apply Algebra.Hom.ext
        apply add_comm }
  add_comp := by
    intros
    apply Algebra.Hom.ext
    apply add_comp
  comp_add := by
    intros
    apply Algebra.Hom.ext
    apply comp_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EndoFunctor/Variant1c0730f284ac1301522c99ed9eace8114a09f3e4959c80028e883ab577088d65.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa2eb8da5adb77a426a834d31fe5ac352e3312c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
