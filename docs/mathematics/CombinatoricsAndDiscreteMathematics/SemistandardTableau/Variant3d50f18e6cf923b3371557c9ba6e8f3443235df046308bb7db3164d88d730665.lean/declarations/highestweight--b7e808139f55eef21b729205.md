# highestWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59382cf7876f4b0b28d655c1a7eca7f82d93057450f815f9f879cc9e8b5e9266",
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
  "slug": "highestweight--b7e808139f55eef21b729205",
  "source": {
    "blob": "f196b7e94670c2d4c198b480f7ea7a122ff68aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7e808139f55eef21b729205cc4099c6ab071b2e6956470d9bf0ae98b9326be7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59382cf7876f4b0b28d655c1a7eca7f82d93057450f815f9f879cc9e8b5e9266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def highestWeight (μ : YoungDiagram) : SemistandardYoungTableau μ where
  entry i j := if (i, j) ∈ μ then i else 0
  row_weak' hj hcell := by
    rw [if_pos hcell, if_pos (μ.up_left_mem (by rfl) (le_of_lt hj) hcell)]
  col_strict' hi hcell := by
    rwa [if_pos hcell, if_pos (μ.up_left_mem (le_of_lt hi) (by rfl) hcell)]
  zeros' not_cell := if_neg not_cell

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SemistandardTableau/Variant3d50f18e6cf923b3371557c9ba6e8f3443235df046308bb7db3164d88d730665.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f196b7e94670c2d4c198b480f7ea7a122ff68aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
