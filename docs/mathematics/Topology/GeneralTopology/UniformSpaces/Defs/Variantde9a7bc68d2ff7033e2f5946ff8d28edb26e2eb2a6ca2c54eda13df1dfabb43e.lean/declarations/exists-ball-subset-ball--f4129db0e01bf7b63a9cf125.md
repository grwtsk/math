# exists_ball_subset_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca286fe3-2f43-4818-ee27-46d7c948cbce",
  "kind": "theorem",
  "lexical_name": "exists_ball_subset_ball",
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
  "slug": "exists-ball-subset-ball--f4129db0e01bf7b63a9cf125",
  "source": {
    "blob": "a1302b6c82c9cd028793f6cad50230b5fbe3a5b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 614,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4129db0e01bf7b63a9cf125bdc6b9f37a07fc2ac3c44050e32032b179e40e8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca286fe3-2f43-4818-ee27-46d7c948cbce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ball_subset_ball (h : y ∈ ball x ε) : ∃ ε' > 0, ball y ε' ⊆ ball x ε :=
  ⟨_, sub_pos.2 h, ball_subset <| by rw [sub_sub_self]⟩

/-- If a property holds for all points in closed balls of arbitrarily large radii, then it holds for
all points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variantde9a7bc68d2ff7033e2f5946ff8d28edb26e2eb2a6ca2c54eda13df1dfabb43e.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1302b6c82c9cd028793f6cad50230b5fbe3a5b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
