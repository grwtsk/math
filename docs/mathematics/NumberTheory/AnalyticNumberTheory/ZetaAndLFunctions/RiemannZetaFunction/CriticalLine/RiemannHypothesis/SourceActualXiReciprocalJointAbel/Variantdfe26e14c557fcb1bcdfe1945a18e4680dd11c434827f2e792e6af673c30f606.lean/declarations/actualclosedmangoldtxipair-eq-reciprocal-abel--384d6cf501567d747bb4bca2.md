# actualClosedMangoldtXiPair_eq_reciprocal_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97c1ad19-f3ab-ce3a-bfb1-c54edea42dbf",
  "kind": "theorem",
  "lexical_name": "actualClosedMangoldtXiPair_eq_reciprocal_abel",
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
  "slug": "actualclosedmangoldtxipair-eq-reciprocal-abel--384d6cf501567d747bb4bca2",
  "source": {
    "blob": "4faa26ec4df04ff8d11e93b3222cf878f8bbb17d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiReciprocalJointAbel/Variantdfe26e14c557fcb1bcdfe1945a18e4680dd11c434827f2e792e6af673c30f606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:384d6cf501567d747bb4bca209d70725e708c6025ce7c6cee00d2354a52a8a75",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiReciprocalJointAbel/Variantdfe26e14c557fcb1bcdfe1945a18e4680dd11c434827f2e792e6af673c30f606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97c1ad19-f3ab-ce3a-bfb1-c54edea42dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedMangoldtXiPair_eq_reciprocal_abel (Y : ℝ) :
    actualClosedMangoldtXiPair Y =
      ∑ d ∈ Finset.Icc 1 (Nat.floor Y - 1), alpha d *
        (actualReciprocalXiQuotientWeight Y d - actualReciprocalXiQuotientWeight Y (d + 1)) := by
  rw [actualClosedMangoldtXiPair_eq_reciprocal_weight, actual_weighted_alpha_identity,
    actualReciprocalXiQuotientWeight_at_cutoff, mul_zero, zero_add]

/-- Original F7 retains the continuous baseline, gamma and closed-seven source after exact Abel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiReciprocalJointAbel/Variantdfe26e14c557fcb1bcdfe1945a18e4680dd11c434827f2e792e6af673c30f606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiReciprocalJointAbel/Variantdfe26e14c557fcb1bcdfe1945a18e4680dd11c434827f2e792e6af673c30f606.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4faa26ec4df04ff8d11e93b3222cf878f8bbb17d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
