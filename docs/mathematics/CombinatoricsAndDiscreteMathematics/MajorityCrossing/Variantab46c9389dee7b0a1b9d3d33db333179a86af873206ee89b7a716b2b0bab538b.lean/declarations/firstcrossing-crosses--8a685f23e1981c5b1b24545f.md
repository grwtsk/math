# firstCrossing_crosses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f71f2b95-993d-f32b-2303-6fed5d087528",
  "kind": "theorem",
  "lexical_name": "firstCrossing_crosses",
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
  "slug": "firstcrossing-crosses--8a685f23e1981c5b1b24545f",
  "source": {
    "blob": "4c67d361997688018e4bfadf52108e49c4f68304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a685f23e1981c5b1b24545f4f57354a99f847f631c474cb4cf1b2c353fc0194",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f71f2b95-993d-f32b-2303-6fed5d087528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstCrossing_crosses
    {magnitude : Nat}
    {word : List Bool}
    (crossing :
      IsFirstCrossingCode magnitude word) :
    magnitude < 2 * selectedCount word := by
  rw [crossing.selectedCount_eq]
  simp [majorityThreshold]
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MajorityCrossing/Variantab46c9389dee7b0a1b9d3d33db333179a86af873206ee89b7a716b2b0bab538b.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c67d361997688018e4bfadf52108e49c4f68304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
