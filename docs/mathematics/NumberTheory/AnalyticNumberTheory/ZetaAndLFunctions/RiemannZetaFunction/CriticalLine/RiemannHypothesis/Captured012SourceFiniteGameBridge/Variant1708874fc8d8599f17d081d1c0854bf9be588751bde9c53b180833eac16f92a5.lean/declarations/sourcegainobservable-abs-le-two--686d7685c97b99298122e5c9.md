# sourceGainObservable_abs_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08a91266-68f4-81f3-06eb-e2b0028c6262",
  "kind": "theorem",
  "lexical_name": "sourceGainObservable_abs_le_two",
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
  "slug": "sourcegainobservable-abs-le-two--686d7685c97b99298122e5c9",
  "source": {
    "blob": "167c7746c6cbaeece7568dec957da5c45b16593a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 222,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant1708874fc8d8599f17d081d1c0854bf9be588751bde9c53b180833eac16f92a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:686d7685c97b99298122e5c94d38d16b5186efa52bb0c549cb83e2bc3e684df3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant1708874fc8d8599f17d081d1c0854bf9be588751bde9c53b180833eac16f92a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08a91266-68f4-81f3-06eb-e2b0028c6262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceGainObservable_abs_le_two (A : ℝ) (hA : 1 ≤ A) (v : SourceVertex A) :
    |sourceGainObservable A v| ≤ 2 := by
  have hn : 2 ≤ v.val := (Finset.mem_Icc.mp v.property).1
  have hlog : 0 ≤ Real.log (v.val : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (by omega : 1 ≤ v.val))
  have hexp : Real.exp (-Real.log (v.val : ℝ) / 2) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by linarith)
  have hw : |closedPrimeWeight A v.val| ≤ 1 := by
    rw [closedPrimeWeight, exponentialTest, abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ Real.exp (-Real.log (v.val : ℝ) / 2) * 1 :=
        mul_le_mul_of_nonneg_left
          (EstimateCorrelation.actual_correlation_abs_le_one A (Real.log v.val) hA)
          (Real.exp_pos _).le
      _ ≤ 1 := by simpa only [mul_one] using hexp
  unfold sourceGainObservable
  rw [abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  linarith

/-- Every native flux edge has this coarse rigorous enclosure. The exact
signed price remains available when this absolute bound loses compensation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant1708874fc8d8599f17d081d1c0854bf9be588751bde9c53b180833eac16f92a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured012SourceFiniteGameBridge/Variant1708874fc8d8599f17d081d1c0854bf9be588751bde9c53b180833eac16f92a5.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `167c7746c6cbaeece7568dec957da5c45b16593a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
