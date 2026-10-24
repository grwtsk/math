# closedPrimeMoment_eq_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:420bc8fa-10d2-9225-5414-c5d32ac50cc3",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_eq_quadratic",
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
  "slug": "closedprimemoment-eq-quadratic--dc190a6092193bf213388f15",
  "source": {
    "blob": "5e823817f063d51376422418a195e9b0b29bd39d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 133,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedDualityV1Source/Variant0719af3b157f5a94b2e72a9b696ac393b3e952ee781996dded7de6612c68448a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc190a6092193bf213388f15ac14d6acfbfaf8a6dd9d48b17bdf3277fee4f617",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedDualityV1Source/Variant0719af3b157f5a94b2e72a9b696ac393b3e952ee781996dded7de6612c68448a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:420bc8fa-10d2-9225-5414-c5d32ac50cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_eq_quadratic {A : ℝ} (hA : 0 < A) :
    closedPrimeMoment A =
      (⟪originalSourceState A, mangoldtInteraction A (originalSourceState A)⟫_ℂ).re := by
  rw [mangoldtInteraction_self_real]
  unfold closedPrimeMoment mangoldtCoefficient exponentialTest
  apply Finset.sum_congr rfl
  intro n hn
  rw [sourceCorrelation_eq_inner hA]
  ring

/-- The unchanged residual is this coefficient only under its existing source scope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedDualityV1Source/Variant0719af3b157f5a94b2e72a9b696ac393b3e952ee781996dded7de6612c68448a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedDualityV1Source/Variant0719af3b157f5a94b2e72a9b696ac393b3e952ee781996dded7de6612c68448a.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e823817f063d51376422418a195e9b0b29bd39d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
