# actualCenteredPrimeLogBulk_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6c8d1e8-9524-d81b-343b-20ded17dc232",
  "kind": "theorem",
  "lexical_name": "actualCenteredPrimeLogBulk_intervalIntegrable",
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
  "slug": "actualcenteredprimelogbulk-intervalintegrable--1af98d223e2327592271495f",
  "source": {
    "blob": "5a19f59d450a7636301e11bf08a38c7d10b6846d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1af98d223e2327592271495f26b625bf169ed968db9da58afd546a8f53c2e031",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6c8d1e8-9524-d81b-343b-20ded17dc232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredPrimeLogBulk_intervalIntegrable (A c T : ℝ) :
    IntervalIntegrable (fun t : ℝ =>
      actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I) *
        (actualClosedPrimeLogPotential A ((c : ℂ) + (t : ℂ) * I) -
          actualClosedPrimeLogPotential A (c : ℂ))) volume (-T) T := by
  have hp := potential_continuous A
  have hs := slope_continuous A
  exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- The original true head retains exactly the centered bulk and both centered endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a19f59d450a7636301e11bf08a38c7d10b6846d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
