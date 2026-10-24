# toNerve₂.mk_naturality_δ1i

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:556f3174-e1a0-fd35-5bb8-7f4c59cb82f8",
  "kind": "lemma",
  "lexical_name": "toNerve₂.mk_naturality_δ1i",
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
  "slug": "tonerve-mk-naturality-1i--dd64a11c9741105ea7794d57",
  "source": {
    "blob": "f1b66ba77515d913ff2099e28f4f5e1ffffb26a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 172,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd64a11c9741105ea7794d577fcc2c1e9819a579f03c1f235f5d3ad1554a7df0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:556f3174-e1a0-fd35-5bb8-7f4c59cb82f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toNerve₂.mk_naturality_δ1i (i : Fin 3) : toNerve₂.mk.naturalityProperty F (δ₂ i) := by
  ext x
  simp only [types_comp_apply, mk.app_two, ComposableArrows.mk₂]
  rw [toNerve₂.mk.app_one]
  unfold nerveFunctor₂ truncation SimplicialObject.truncation
  simp only [comp_obj, nerveFunctor_obj, Cat.of_α, whiskeringLeft_obj_obj, id_eq, op_obj,
    nerve_obj, oneTruncation₂_obj, ReflQuiv.of_val, Nat.reduceAdd, mk.app_two,
    Functor.comp_map, op_map, Quiver.Hom.unop_op]
  unfold δ₂ inclusion
  simp only [ObjectProperty.ι_map]
  fin_cases i
  · simp only [Fin.zero_eta]
    show _ = (nerve C).δ 0 _
    rw [nerve.δ₀_mk₂_eq]
    fapply ReflPrefunctor.congr_mk₁_map
    · unfold ev1₂ ι1₂ δ₂
      simp only [← FunctorToTypes.map_comp_apply, ← op_comp]
      have := δ_comp_δ (n := 0) (i := 0) (j := 1) (by decide)
      dsimp at this
      exact congrFun (congrArg X.map (congrArg Quiver.Hom.op this.symm)) x
    · unfold ev2₂ ι2₂ δ₂
      simp only [← FunctorToTypes.map_comp_apply, ← op_comp]
      have := δ_comp_δ (n := 0) (i := 0) (j := 0) (by decide)
      dsimp at this
      exact congrFun (congrArg X.map (congrArg Quiver.Hom.op this.symm)) x
    · aesop
  · simp only [Fin.mk_one]
    show _ = (nerve C).δ 1 _
    rw [nerve.δ₁_mk₂_eq]
    rw [← hyp]
    fapply ReflPrefunctor.congr_mk₁_map
    · unfold ev0₂ ι0₂ δ₂
      simp [← FunctorToTypes.map_comp_apply, ← op_comp]
    · unfold ev2₂ ι2₂ δ₂
      simp [← FunctorToTypes.map_comp_apply, ← op_comp]
    · aesop
  · simp only [Fin.reduceFinMk]
    show _ = (nerve C).δ 2 _
    rw [nerve.δ₂_mk₂_eq]
    fapply ReflPrefunctor.congr_mk₁_map
    · unfold ev0₂ ι0₂ δ₂
      simp only [← FunctorToTypes.map_comp_apply, ← op_comp]
      have := δ_comp_δ (n := 0) (i := 1) (j := 1) (by decide)
      dsimp at this
      exact congrFun (congrArg X.map (congrArg Quiver.Hom.op this)) x
    · unfold ev1₂ ι1₂ δ₂
      simp [← FunctorToTypes.map_comp_apply, ← op_comp]
    · aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantfaec288bfe55251076201bde1253502b2cadf2e5637d613949b83fadca317007.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b66ba77515d913ff2099e28f4f5e1ffffb26a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
