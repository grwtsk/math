# Comonad.coalgebraPreadditive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34b814a6939521cb080783ebf897b62c290d164a26be364b627c6321c9c2f605",
  "kind": "instance",
  "lexical_name": "Comonad.coalgebraPreadditive",
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
  "slug": "comonad-coalgebrapreadditive--44e831375740571ba12c08d7",
  "source": {
    "blob": "f7dd3eabd7f76f94daab52ff12e6b1a650a270df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44e831375740571ba12c08d7671b3dadcd0e6834e2a1b499ad0fce42f62df023",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34b814a6939521cb080783ebf897b62c290d164a26be364b627c6321c9c2f605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Comonad.coalgebraPreadditive : Preadditive (Comonad.Coalgebra U) where
  homGroup F G :=
    { add := fun α β =>
        { f := α.f + β.f
          h := by simp only [Functor.map_add, comp_add, Comonad.Coalgebra.Hom.h, add_comp] }
      zero :=
        { f := 0
          h := by simp only [Functor.map_zero, comp_zero, zero_comp] }
      nsmul := fun n α =>
        { f := n • α.f
          h := by rw [Functor.map_nsmul, comp_nsmul, Comonad.Coalgebra.Hom.h, nsmul_comp] }
      neg := fun α =>
        { f := -α.f
          h := by simp only [Functor.map_neg, comp_neg, Comonad.Coalgebra.Hom.h, neg_comp] }
      sub := fun α β =>
        { f := α.f - β.f
          h := by simp only [Functor.map_sub, comp_sub, Comonad.Coalgebra.Hom.h, sub_comp] }
      zsmul := fun r α =>
        { f := r • α.f
          h := by rw [Functor.map_zsmul, comp_zsmul, Comonad.Coalgebra.Hom.h, zsmul_comp] }
      add_assoc := by
        intros
        ext
        apply add_assoc
      zero_add := by
        intros
        ext
        apply zero_add
      add_zero := by
        intros
        ext
        apply add_zero
      nsmul_zero := by
        intros
        ext
        apply zero_smul
      nsmul_succ := by
        intros
        ext
        apply succ_nsmul
      sub_eq_add_neg := by
        intros
        ext
        apply sub_eq_add_neg
      zsmul_zero' := by
        intros
        ext
        apply zero_smul
      zsmul_succ' := by
        intros
        ext
        simp only [natCast_zsmul, succ_nsmul]
        rfl
      zsmul_neg' := by
        intros
        ext
        simp only [negSucc_zsmul, neg_inj, ← Nat.cast_smul_eq_nsmul ℤ]
      neg_add_cancel := by
        intros
        ext
        apply neg_add_cancel
      add_comm := by
        intros
        ext
        apply add_comm }
  add_comp := by
    intros
    ext
    apply add_comp
  comp_add := by
    intros
    ext
    apply comp_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7dd3eabd7f76f94daab52ff12e6b1a650a270df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
