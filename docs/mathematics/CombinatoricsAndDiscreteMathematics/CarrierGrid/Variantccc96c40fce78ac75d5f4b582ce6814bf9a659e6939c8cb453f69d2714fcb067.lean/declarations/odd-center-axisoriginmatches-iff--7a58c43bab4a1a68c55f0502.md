# odd_center_axisOriginMatches_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44fa8b35-2f88-172b-057d-8741bd31edad",
  "kind": "theorem",
  "lexical_name": "odd_center_axisOriginMatches_iff",
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
  "slug": "odd-center-axisoriginmatches-iff--7a58c43bab4a1a68c55f0502",
  "source": {
    "blob": "532352edb4c09a07b85ea4a479de3d907284722c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 344,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a58c43bab4a1a68c55f0502e73a626176d1239a7d1a8d7be45c31b42326fdeb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44fa8b35-2f88-172b-057d-8741bd31edad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_center_axisOriginMatches_iff (half : Nat)
    (index : Fin (2 * half + 1)) :
    AxisOriginMatches (2 * half + 1) center index ↔
      index = oddCenterIndex half := by
  unfold AxisOriginMatches center
  constructor
  · intro equality
    apply Fin.ext
    dsimp [oddCenterIndex]
    push_cast at equality
    ring_nf at equality
    have rationalEquality : (index.val : ℚ) = (half : ℚ) := by
      linarith
    exact_mod_cast rationalEquality
  · rintro rfl
    dsimp [oddCenterIndex]
    push_cast
    ring

/-- On a positive even grid, the normalized center is an internal boundary
and therefore is not any cell's barycenter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantccc96c40fce78ac75d5f4b582ce6814bf9a659e6939c8cb453f69d2714fcb067.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `532352edb4c09a07b85ea4a479de3d907284722c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
