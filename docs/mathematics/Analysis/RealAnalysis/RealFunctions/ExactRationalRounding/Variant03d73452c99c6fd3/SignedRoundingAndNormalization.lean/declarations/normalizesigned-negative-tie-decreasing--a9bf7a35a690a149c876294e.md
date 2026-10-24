# normalizeSigned_negative_tie_decreasing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a438792-3be6-6cb6-4974-b1d8bab04310",
  "kind": "theorem",
  "lexical_name": "normalizeSigned_negative_tie_decreasing",
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
  "slug": "normalizesigned-negative-tie-decreasing--a9bf7a35a690a149c876294e",
  "source": {
    "blob": "201ec1edefe87aef531ed47a39063015aeb278ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9bf7a35a690a149c876294ebffe9ab0905aa7b86f52c69177e10f6471f8a3fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a438792-3be6-6cb6-4974-b1d8bab04310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem normalizeSigned_negative_tie_decreasing (extent : Nat) :
    (normalizeSignedRasterCoordinate .nearest .decreasing extent
      (-1 / 2)).value = 1 ∧
    (normalizeSignedRasterCoordinate .nearest .decreasing extent
      (-1 / 2)).negativeZero = false := by
  constructor <;>
    simp [normalizeSignedRasterCoordinate, normalizeSignedInteger]

/-- Quantize a pixel coordinate, normalize by a positive extent, and apply
the configured axis direction.  No clamping is performed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201ec1edefe87aef531ed47a39063015aeb278ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
