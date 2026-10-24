# actual_fullXiLogWeight_deriv_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:605bbcf9-c6e1-bea4-5ba5-0fd4baa7f2a2",
  "kind": "theorem",
  "lexical_name": "actual_fullXiLogWeight_deriv_continuous",
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
  "slug": "actual-fullxilogweight-deriv-continuous--031e689320ee0ccd385eec63",
  "source": {
    "blob": "6b55cd36aff88a791920c81d372053c180801efc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCostAttempt01/Variant3157bd81e774bc3331d0a74eefede605f99084ac0e96dcb2d91e091afbf66aef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:031e689320ee0ccd385eec63235181d0cfcf7092fef46043e14371d89db285d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCostAttempt01/Variant3157bd81e774bc3331d0a74eefede605f99084ac0e96dcb2d91e091afbf66aef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:605bbcf9-c6e1-bea4-5ba5-0fd4baa7f2a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_fullXiLogWeight_deriv_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (deriv (fullXiLogWeight A)) := by
  have he : deriv (fullXiLogWeight A) = fun t =>
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 :=
    funext fun t => actual_fullXiLogWeight_deriv A t hA
  rw [he]
  exact (sourceCorrelation_deriv_contDiff hA).continuous_deriv_one.sub
    ((sourceCorrelation_deriv_contDiff hA).continuous.div_const 2)

/-- A uniform signed primitive of the actual Xi/log density would pay at most 11/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCostAttempt01/Variant3157bd81e774bc3331d0a74eefede605f99084ac0e96dcb2d91e091afbf66aef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFullXiSignedPrimitiveCostAttempt01/Variant3157bd81e774bc3331d0a74eefede605f99084ac0e96dcb2d91e091afbf66aef.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b55cd36aff88a791920c81d372053c180801efc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
