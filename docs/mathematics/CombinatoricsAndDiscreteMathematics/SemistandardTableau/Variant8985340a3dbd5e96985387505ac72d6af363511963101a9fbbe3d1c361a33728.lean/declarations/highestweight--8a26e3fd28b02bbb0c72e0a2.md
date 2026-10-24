# highestWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e2da2eb95b381d6964f0a03ab8a7f33877afc0442e263e4f58ad2908c796fdd",
  "kind": "def",
  "lexical_name": "highestWeight",
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
  "slug": "highestweight--8a26e3fd28b02bbb0c72e0a2",
  "source": {
    "blob": "ec69c80ba33fb445305ba44350249160433a2413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a26e3fd28b02bbb0c72e0a20c1020ebab30d447d70da7b45f20daca9e0831ea",
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

Occurrence: `declaration:5e2da2eb95b381d6964f0a03ab8a7f33877afc0442e263e4f58ad2908c796fdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def highestWeight (μ : YoungDiagram) : SemistandardYoungTableau μ where
  entry i j := if (i, j) ∈ μ then i else 0
  row_weak' hj hcell := by
    rw [ite_eq_left hcell, ite_eq_left (μ.up_left_mem (by rfl) (le_of_lt hj) hcell)]
  col_strict' hi hcell := by
    rwa [ite_eq_left hcell, ite_eq_left (μ.up_left_mem (le_of_lt hi) (by rfl) hcell)]
  zeros' not_cell := ite_eq_right not_cell

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant8985340a3dbd5e96985387505ac72d6af363511963101a9fbbe3d1c361a33728.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec69c80ba33fb445305ba44350249160433a2413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
