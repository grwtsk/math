# source_abel_test_deriv_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f701706-a2cf-bbca-0a3f-80facee28fb8",
  "kind": "theorem",
  "lexical_name": "source_abel_test_deriv_at_zero",
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
  "slug": "source-abel-test-deriv-at-zero--3ab87be18dac64190efb412a",
  "source": {
    "blob": "a7591c27a10789f3c567253d2d32e766216b951c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 443,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ab87be18dac64190efb412aebc217a8fd8917118fa116a0c50ca726700f9216",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f701706-a2cf-bbca-0a3f-80facee28fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_abel_test_deriv_at_zero (A : ℝ) (hA : 1 ≤ A) :
    deriv (sourceAbelTest A) 0 = -(1 : ℝ) / 2 := by
  have hc : HasDerivAt (sourceCorrelation explicitSecondDerivative A) 0 0 := by
    have hd := ((CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).differentiable
      (by norm_num) 0).hasDerivAt
    simpa only [source_correlation_deriv_zero A hA] using hd
  have he : HasDerivAt (fun t : ℝ ↦ Real.exp (-t / 2)) (-(1 : ℝ) / 2) 0 := by
    have hh : HasDerivAt (fun t : ℝ ↦ -t / 2) (-(1 : ℝ) / 2) 0 :=
      (hasDerivAt_id 0).neg.div_const 2
    simpa using hh.exp
  have hd := (he.mul hc).deriv
  change deriv ((fun t : ℝ ↦ Real.exp (-t / 2)) *
    sourceCorrelation explicitSecondDerivative A) 0 = -(1 : ℝ) / 2
  simpa [EstimateCorrelation.actual_correlation_at_zero A hA] using hd

/-- Conditional `C²` instantiation retains both source endpoint jets explicitly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7591c27a10789f3c567253d2d32e766216b951c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
