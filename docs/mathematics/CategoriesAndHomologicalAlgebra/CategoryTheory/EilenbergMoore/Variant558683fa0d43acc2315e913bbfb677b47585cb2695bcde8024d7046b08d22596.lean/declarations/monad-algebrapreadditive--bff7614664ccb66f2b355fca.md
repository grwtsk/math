# Monad.algebraPreadditive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:295967e6001da40ed938d8f6ac6545a065b57e03efd53585138934bd620ee808",
  "kind": "instance",
  "lexical_name": "Monad.algebraPreadditive",
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
  "slug": "monad-algebrapreadditive--bff7614664ccb66f2b355fca",
  "source": {
    "blob": "f7dd3eabd7f76f94daab52ff12e6b1a650a270df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 30,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bff7614664ccb66f2b355fca4298f96db86bcd8a44514f3bf32b909a15c2559e",
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

Occurrence: `declaration:295967e6001da40ed938d8f6ac6545a065b57e03efd53585138934bd620ee808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Monad.algebraPreadditive : Preadditive (Monad.Algebra T) where
  homGroup F G :=
    { add := fun α β =>
        { f := α.f + β.f
          h := by simp only [Functor.map_add, add_comp, Monad.Algebra.Hom.h, comp_add] }
      zero :=
        { f := 0
          h := by simp only [Functor.map_zero, zero_comp, comp_zero] }
      nsmul := fun n α =>
        { f := n • α.f
          h := by rw [Functor.map_nsmul, nsmul_comp, Monad.Algebra.Hom.h, comp_nsmul] }
      neg := fun α =>
        { f := -α.f
          h := by simp only [Functor.map_neg, neg_comp, Monad.Algebra.Hom.h, comp_neg] }
      sub := fun α β =>
        { f := α.f - β.f
          h := by simp only [Functor.map_sub, sub_comp, Monad.Algebra.Hom.h, comp_sub] }
      zsmul := fun r α =>
        { f := r • α.f
          h := by rw [Functor.map_zsmul, zsmul_comp, Monad.Algebra.Hom.h, comp_zsmul] }
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EilenbergMoore/Variant558683fa0d43acc2315e913bbfb677b47585cb2695bcde8024d7046b08d22596.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7dd3eabd7f76f94daab52ff12e6b1a650a270df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
