# actual_offAxis_dyadic_endpoint_real_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53e27888-5411-b5b6-f114-0388d88e3c8f",
  "kind": "theorem",
  "lexical_name": "actual_offAxis_dyadic_endpoint_real_bounds",
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
  "slug": "actual-offaxis-dyadic-endpoint-real-bounds--56e50c360c64e86273ecec5e",
  "source": {
    "blob": "bc27c111bd08961b4737df0e2847b79a0f017d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variant1c1f3e5966c10d76ba5e7238f9a45488c30a786d64be6c670fca1c389c6f587f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56e50c360c64e86273ecec5ef1b5469c974a845f373b9a17167f21cde25c7b8d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variant1c1f3e5966c10d76ba5e7238f9a45488c30a786d64be6c670fca1c389c6f587f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53e27888-5411-b5b6-f114-0388d88e3c8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_offAxis_dyadic_endpoint_real_bounds :
    ∃ C Rcrit : ℝ, 0 ≤ C ∧ 1 ≤ Rcrit ∧ ∀ (A c E : ℝ) (R : ℕ → ℝ),
      Rcrit ≤ A → 1 < c → c ≤ 3 / 2 → (∀ k, 7 ≤ R k) →
      (∀ k, R k ≤ R (k + 1)) →
      (∀ k s, (s.im = R k ∨ s.im = -R k) → 1 / 2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0) →
      (∀ k, ‖actualFiniteHorizontalCorrection A c (R k)‖ ≤ E * (1 / 16 : ℝ) ^ k) →
      ∀ N : ℕ,
      (actualCompletedVerticalHead A c (R N) - actualCompletedVerticalHead A c (R 0)).re -
        C / A ^ 9 - E * (1 + (1 / 16 : ℝ) ^ N) ≤
        (actualOffAxisZeroHeightHead A (R N) - actualOffAxisZeroHeightHead A (R 0)).re ∧
      (actualOffAxisZeroHeightHead A (R N) - actualOffAxisZeroHeightHead A (R 0)).re ≤
        (actualCompletedVerticalHead A c (R N) - actualCompletedVerticalHead A c (R 0)).re +
          E * (1 + (1 / 16 : ℝ) ^ N) := by
  obtain ⟨C, Rcrit, hC, hRcrit, hcrit⟩ := actualCriticalZeroHeightHead_real_uniform_ninth_bound
  refine ⟨C, Rcrit, hC, hRcrit, ?_⟩
  intro A c E R hA hc hc2 h7 horder hgood hb N
  have hA1 := hRcrit.trans hA
  have hlo := actualCriticalZeroHeightHead_re_mono A (R 0) (R N) hA1
    ((monotone_nat_of_le_succ horder) (Nat.zero_le N))
  have hhi := (hcrit A (R N) hA).2
  have hzero := (hcrit A (R 0) hA).1
  have hn := actual_compensated_dyadic_endpoint_norm A c E R hA1 hc hc2 h7 horder hgood hb N
  have hp := (Complex.re_le_norm _).trans hn
  have hm := ((neg_le_abs _).trans (Complex.abs_re_le_norm _)).trans hn
  simp only [Complex.sub_re, Complex.add_re] at hp hm ⊢
  constructor <;> linarith

/-- The whole compensated actual shell series has the exact initial boundary value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variant1c1f3e5966c10d76ba5e7238f9a45488c30a786d64be6c670fca1c389c6f587f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicEndpointPayment/Variant1c1f3e5966c10d76ba5e7238f9a45488c30a786d64be6c670fca1c389c6f587f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc27c111bd08961b4737df0e2847b79a0f017d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
