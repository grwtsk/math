# criticalRemovedPairedWork_eq_second_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bce3ec76-44fd-38f8-0a9e-ba60527edeaf",
  "kind": "theorem",
  "lexical_name": "criticalRemovedPairedWork_eq_second_abel",
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
  "slug": "criticalremovedpairedwork-eq-second-abel--167e4db687d7f992d418a81b",
  "source": {
    "blob": "cc92bd3ba0ad5857a07033e5f6711075d24bf7f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourceCriticalSecondAbel/Variantd8c2e606cc438de8febf4ae18ff790d61884e16ee863807430facf7d2a18348d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:167e4db687d7f992d418a81bd7f9f9bf2ce381ab32af2b756d67e43a38612db9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourceCriticalSecondAbel/Variantd8c2e606cc438de8febf4ae18ff790d61884e16ee863807430facf7d2a18348d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bce3ec76-44fd-38f8-0a9e-ba60527edeaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalRemovedPairedWork_eq_second_abel {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      ∫ u in 0..2 * A,
        criticalDiscrepancyBridge A u * deriv (deriv (pairedTailTest A)) u := by
  have hp : 0 < A := by linarith
  have hΓ := criticalDiscrepancyBridge_absolutelyContinuous A
  have hD' := pairedTailTest_deriv_absolutelyContinuous hA
  have hi := hΓ.integral_mul_deriv_eq_deriv_mul hD'
  simp only [criticalDiscrepancyBridge_at_upper hp, criticalDiscrepancyBridge_at_zero,
    zero_mul, sub_zero, zero_sub] at hi
  rw [criticalRemovedPairedWork_eq_bridge_work hA]
  exact hi.symm

end FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourceCriticalSecondAbel/Variantd8c2e606cc438de8febf4ae18ff790d61884e16ee863807430facf7d2a18348d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourceCriticalSecondAbel/Variantd8c2e606cc438de8febf4ae18ff790d61884e16ee863807430facf7d2a18348d.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc92bd3ba0ad5857a07033e5f6711075d24bf7f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
