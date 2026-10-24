# criticalWeightMass_difference_abs_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5363daa1-9b30-93d0-8764-c7eeff1952e2",
  "kind": "theorem",
  "lexical_name": "criticalWeightMass_difference_abs_lt_one",
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
  "slug": "criticalweightmass-difference-abs-lt-one--a6939f8f34f7a93618c2bc55",
  "source": {
    "blob": "e567bc91f697db244334bbc2b55431cb9353e242",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant8ca6071a32a601b6b4ccc07f3605d12c746e0465e6575353e4b7563fc8c0d404.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6939f8f34f7a93618c2bc55f98a0233f4124dfd800de71ac0d0df2460e97b19",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant8ca6071a32a601b6b4ccc07f3605d12c746e0465e6575353e4b7563fc8c0d404.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5363daa1-9b30-93d0-8764-c7eeff1952e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalWeightMass_difference_abs_lt_one {A : ℝ} (hA : 1 ≤ A) :
    |positiveCriticalWeightMass A - negativeCriticalWeightMass A| < 1 := by
  rw [criticalWeightMass_difference hA]
  have hh := criticalContinuousMoment_strict_bounds hA
  exact abs_lt.mpr ⟨by linarith, by linarith⟩

/-- Both actual sign sectors have exponential mass, despite bounded difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant8ca6071a32a601b6b4ccc07f3605d12c746e0465e6575353e4b7563fc8c0d404.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalSignedSectorMassAttempt01/Variant8ca6071a32a601b6b4ccc07f3605d12c746e0465e6575353e4b7563fc8c0d404.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e567bc91f697db244334bbc2b55431cb9353e242` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
