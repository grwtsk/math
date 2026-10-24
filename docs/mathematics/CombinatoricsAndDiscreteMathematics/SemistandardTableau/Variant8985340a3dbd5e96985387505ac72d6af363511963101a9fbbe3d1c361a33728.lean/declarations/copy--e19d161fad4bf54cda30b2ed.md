# copy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca0a63907cc7a586228c77849c0fc89a88f5955a56e423119d4c121c2b726c4a",
  "kind": "def",
  "lexical_name": "copy",
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
  "slug": "copy--e19d161fad4bf54cda30b2ed",
  "source": {
    "blob": "ec69c80ba33fb445305ba44350249160433a2413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e19d161fad4bf54cda30b2ed99ce5498c2d63039fb5bb366a3f25d2f8eef3b09",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca0a63907cc7a586228c77849c0fc89a88f5955a56e423119d4c121c2b726c4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def copy {μ : YoungDiagram} (T : SemistandardYoungTableau μ) (entry' : ℕ → ℕ → ℕ)
    (h : entry' = T) : SemistandardYoungTableau μ where
  entry := entry'
  row_weak' := h.symm ▸ T.row_weak'
  col_strict' := h.symm ▸ T.col_strict'
  zeros' := h.symm ▸ T.zeros'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec69c80ba33fb445305ba44350249160433a2413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
