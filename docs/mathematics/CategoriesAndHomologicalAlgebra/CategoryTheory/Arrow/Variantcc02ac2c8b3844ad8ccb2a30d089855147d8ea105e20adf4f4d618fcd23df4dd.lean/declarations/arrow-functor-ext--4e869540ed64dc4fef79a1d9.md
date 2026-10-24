# Arrow.functor_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c86d35f9-8b4d-5154-df0e-fe6a4510ab68",
  "kind": "lemma",
  "lexical_name": "Arrow.functor_ext",
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
  "slug": "arrow-functor-ext--4e869540ed64dc4fef79a1d9",
  "source": {
    "blob": "bee5cbc3e9f2c9fd5bf30701a0bf239d992ea70b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 411,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantcc02ac2c8b3844ad8ccb2a30d089855147d8ea105e20adf4f4d618fcd23df4dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e869540ed64dc4fef79a1d94a43fee181692ce7971e38556d449a08f992464e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantcc02ac2c8b3844ad8ccb2a30d089855147d8ea105e20adf4f4d618fcd23df4dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c86d35f9-8b4d-5154-df0e-fe6a4510ab68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Arrow.functor_ext {F G : C ⥤ D} (h : ∀ ⦃X Y : C⦄ (f : X ⟶ Y),
    F.mapArrow.obj (Arrow.mk f) = G.mapArrow.obj (Arrow.mk f)) :
    F = G :=
  Functor.ext (fun X ↦ congr_arg Comma.left (h (𝟙 X))) (fun X Y f ↦ by
    have := h f
    simp only [Functor.mapArrow_obj, mk_eq_mk_iff] at this
    tauto)

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantcc02ac2c8b3844ad8ccb2a30d089855147d8ea105e20adf4f4d618fcd23df4dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantcc02ac2c8b3844ad8ccb2a30d089855147d8ea105e20adf4f4d618fcd23df4dd.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bee5cbc3e9f2c9fd5bf30701a0bf239d992ea70b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
