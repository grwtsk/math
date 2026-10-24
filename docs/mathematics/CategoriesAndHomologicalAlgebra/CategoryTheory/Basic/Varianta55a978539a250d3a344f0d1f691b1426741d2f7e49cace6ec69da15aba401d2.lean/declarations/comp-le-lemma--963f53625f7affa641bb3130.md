# comp_le_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e888dddefc2cd400a63bd9f6a98956022f6ec79c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a55a978539a250d3a344f0d1f691b1426741d2f7e49cace6ec69da15aba401d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82287376-0b7e-15fe-154e-1aad0dbc3933",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da0c6471-68f5-c442-2edf-7ff74416aae5",
  "kind": "theorem",
  "lexical_name": "comp_le_lemma",
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
  "slug": "comp-le-lemma--963f53625f7affa641bb3130",
  "source": {
    "blob": "e888dddefc2cd400a63bd9f6a98956022f6ec79c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta55a978539a250d3a344f0d1f691b1426741d2f7e49cace6ec69da15aba401d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:963f53625f7affa641bb3130491b48291b566b609fedab9b6f90c15edb61c8e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta55a978539a250d3a344f0d1f691b1426741d2f7e49cace6ec69da15aba401d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da0c6471-68f5-c442-2edf-7ff74416aae5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_le_lemma {X Y Z : Dial C} (F : Dial.Hom X Y) (G : Dial.Hom Y Z) :
    (Subobject.pullback π(π₁, π(π₁, prod.map F.f (𝟙 _) ≫ G.F) ≫ F.F)).obj X.rel ≤
    (Subobject.pullback (prod.map (F.f ≫ G.f) (𝟙 Z.tgt))).obj Z.rel := by
  refine
    le_trans ?_ <| ((Subobject.pullback (π(π₁, prod.map F.f (𝟙 _) ≫ G.F))).monotone F.le).trans <|
    le_trans ?_ <| ((Subobject.pullback (prod.map F.f (𝟙 Z.tgt))).monotone G.le).trans ?_
    <;> simp [← Subobject.pullback_comp]

@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta55a978539a250d3a344f0d1f691b1426741d2f7e49cace6ec69da15aba401d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta55a978539a250d3a344f0d1f691b1426741d2f7e49cace6ec69da15aba401d2.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e888dddefc2cd400a63bd9f6a98956022f6ec79c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
