# kernel_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e9167b7-8f8c-1d5a-c1d4-d5252b9612fd",
  "kind": "theorem",
  "lexical_name": "kernel_continuous",
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
  "slug": "kernel-continuous--13d5569fea50b7e3c73c9980",
  "source": {
    "blob": "c218db2ab8027173411f51c506a6f17980c6ee6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d5569fea50b7e3c73c998003a3b812597780f2affebfd3b2f7cf40abd3928d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e9167b7-8f8c-1d5a-c1d4-d5252b9612fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem kernel_continuous (A : ℝ) (hA : 0 < A) :
    Continuous (fun t : ℝ => Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) := by
  have hd := (contDiff_one_iff_deriv.mp (criticalPrimeTest_contDiff A hA)).2
  have he : (fun t : ℝ => Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) =
        fun t => deriv (criticalPrimeTest A) t / 2 := by
    funext t
    rw [criticalPrimeTest_deriv A t hA]
    ring
  rw [he]
  exact hd.div_const 2

/-- The test kernel has its exact full lower-seven mass, with the touching upper zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variantf4a5ff4598c80792cfbb45563a49502c45d86bb65bed04c978965e62026e89ad.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c218db2ab8027173411f51c506a6f17980c6ee6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
