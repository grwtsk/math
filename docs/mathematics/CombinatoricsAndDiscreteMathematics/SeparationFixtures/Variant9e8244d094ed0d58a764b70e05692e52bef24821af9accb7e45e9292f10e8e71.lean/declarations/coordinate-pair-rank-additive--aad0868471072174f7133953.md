# coordinate_pair_rank_additive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96c97b50-0bed-d36c-6026-44cc365d3647",
  "kind": "theorem",
  "lexical_name": "coordinate_pair_rank_additive",
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
  "slug": "coordinate-pair-rank-additive--aad0868471072174f7133953",
  "source": {
    "blob": "4abb93d19a679f666f87c8522036b6ba5e5b61c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aad0868471072174f71339532a6e8aae2099b7e1f4f2333abd33de4cd435b7f0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96c97b50-0bed-d36c-6026-44cc365d3647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinate_pair_rank_additive :
    TargetSeparationRank coordinateObservation Finset.univ (id : BooleanPair → BooleanPair) =
      TargetSeparationRank coordinateObservation Finset.univ (Prod.fst : BooleanPair → Bool) +
        TargetSeparationRank coordinateObservation Finset.univ (Prod.snd : BooleanPair → Bool) := by
  rw [coordinate_identity_rank_two, coordinate_component_ranks_one.1,
    coordinate_component_ranks_one.2]
  decide

/-- The concrete first-coordinate target refinement obeys the general rank monotonicity theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4abb93d19a679f666f87c8522036b6ba5e5b61c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
