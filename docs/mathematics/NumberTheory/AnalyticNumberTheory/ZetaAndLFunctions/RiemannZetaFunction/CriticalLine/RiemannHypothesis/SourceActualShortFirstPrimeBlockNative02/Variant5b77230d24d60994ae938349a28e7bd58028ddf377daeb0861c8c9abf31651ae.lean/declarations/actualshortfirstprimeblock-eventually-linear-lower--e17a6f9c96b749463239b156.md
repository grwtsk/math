# actualShortFirstPrimeBlock_eventually_linear_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:072ceb2b-8ce4-b10e-44c1-bd963bc75380",
  "kind": "theorem",
  "lexical_name": "actualShortFirstPrimeBlock_eventually_linear_lower",
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
  "slug": "actualshortfirstprimeblock-eventually-linear-lower--e17a6f9c96b749463239b156",
  "source": {
    "blob": "84e645d2c663f7c06fd6a0dfb7b491f7608e6017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variant5b77230d24d60994ae938349a28e7bd58028ddf377daeb0861c8c9abf31651ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e17a6f9c96b749463239b156c278f277f78dbbefe8ccae379da27a2491862211",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variant5b77230d24d60994ae938349a28e7bd58028ddf377daeb0861c8c9abf31651ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:072ceb2b-8ce4-b10e-44c1-bd963bc75380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortFirstPrimeBlock_eventually_linear_lower :
    ∃ R : ℝ, 25600 ≤ R ∧ ∀ A : ℝ, R ≤ A → A / 8 ≤ actualShortFirstPrimeBlock A := by
  obtain ⟨R, hR, hpsi⟩ := actualPsi_square_eventually_lower
  refine ⟨R, hR, ?_⟩
  intro A hA
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have hs : 1 ≤ A ^ 2 := by nlinarith
  have hpp := Chebyshev.psi_sub_theta_le hs
  rw [Real.sqrt_sq hp.le, Real.log_pow] at hpp
  norm_num at hpp
  have hl := log_le_scale (hR.trans hA)
  have htheta : A ^ 2 / 4 ≤ Chebyshev.theta (A ^ 2) := by
    have hlog : 4 * A * Real.log A ≤ A ^ 2 / 4 := by
      have := mul_le_mul_of_nonneg_left hl (show 0 ≤ 4 * A by positivity)
      nlinarith
    linarith [hpsi A hA]
  have he : A / 8 = (A ^ 2 / 4) / (2 * A) := by field_simp; ring
  rw [he]
  exact (div_le_div_of_nonneg_right htheta (by positivity)).trans
    (actualShortFirstPrimeBlock_ge_theta (hR.trans hA))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variant5b77230d24d60994ae938349a28e7bd58028ddf377daeb0861c8c9abf31651ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variant5b77230d24d60994ae938349a28e7bd58028ddf377daeb0861c8c9abf31651ae.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e645d2c663f7c06fd6a0dfb7b491f7608e6017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
