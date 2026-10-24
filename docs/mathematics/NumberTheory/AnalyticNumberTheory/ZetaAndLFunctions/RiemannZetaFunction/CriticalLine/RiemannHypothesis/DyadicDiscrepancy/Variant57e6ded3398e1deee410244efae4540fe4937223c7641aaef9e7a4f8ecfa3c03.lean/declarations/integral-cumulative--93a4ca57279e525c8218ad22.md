# integral_cumulative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcb995b1-1288-304d-1075-031457298351",
  "kind": "theorem",
  "lexical_name": "integral_cumulative",
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
  "slug": "integral-cumulative--93a4ca57279e525c8218ad22",
  "source": {
    "blob": "e54ed6f2f472cad8f6e60d4b80e9d0648f15f6ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 162,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDiscrepancy/Variant57e6ded3398e1deee410244efae4540fe4937223c7641aaef9e7a4f8ecfa3c03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93a4ca57279e525c8218ad2255f3c886475e8d805e9a54474720d24042647bc8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDiscrepancy/Variant57e6ded3398e1deee410244efae4540fe4937223c7641aaef9e7a4f8ecfa3c03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcb995b1-1288-304d-1075-031457298351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_cumulative {X : ℕ} (hX : 0<X) :
    (∫ t, cumulative X t ∂unitVolume)=center X := by
  unfold cumulative
  rw [integral_sub]
  · rw [integral_finsetSum]
    · simp_rw [integral_const_mul]
      have hp : (∑ n ∈ window X, coefficient n *
          ∫ t, step (location X n) t ∂unitVolume)=
          ∑ n ∈ window X, coefficient n*(1-location X n) := by
        apply Finset.sum_congr rfl
        intro n hn
        rw [integral_step (location_mem hX hn)]
      rw [hp]
      have hlog : (∫ t, logarithm t ∂unitVolume)=2*Real.log 2-1 := by
        change (∫ t in Icc (0:ℝ) 1, logarithm t)=_
        rw [integral_Icc_eq_integral_Ioc,
          ← intervalIntegral.integral_of_le (show (0:ℝ)≤1 by norm_num)]
        exact integral_logarithm
      rw [hlog, center_expansion]
    · intro n hn
      exact (step_integrable (location X n)).const_mul _
  · exact integrable_finsetSum (window X) (fun n hn ↦
      (step_integrable (location X n)).const_mul _)
  · change IntegrableOn logarithm (Icc (0:ℝ) 1)
    exact logarithm_continuousOn.integrableOn_Icc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDiscrepancy/Variant57e6ded3398e1deee410244efae4540fe4937223c7641aaef9e7a4f8ecfa3c03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDiscrepancy/Variant57e6ded3398e1deee410244efae4540fe4937223c7641aaef9e7a4f8ecfa3c03.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54ed6f2f472cad8f6e60d4b80e9d0648f15f6ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
