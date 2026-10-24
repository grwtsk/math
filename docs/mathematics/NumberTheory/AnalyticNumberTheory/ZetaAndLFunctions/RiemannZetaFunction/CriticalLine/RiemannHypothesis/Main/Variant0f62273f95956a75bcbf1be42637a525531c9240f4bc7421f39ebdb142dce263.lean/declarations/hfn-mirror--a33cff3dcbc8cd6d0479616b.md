# Hfn_mirror

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e42d00f-a093-6ae7-0d07-89a70c535383",
  "kind": "theorem",
  "lexical_name": "Hfn_mirror",
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
  "slug": "hfn-mirror--a33cff3dcbc8cd6d0479616b",
  "source": {
    "blob": "bcad63ca9eb0281b3ca62c8530f119c96acc3ded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant0f62273f95956a75bcbf1be42637a525531c9240f4bc7421f39ebdb142dce263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a33cff3dcbc8cd6d0479616b3c495f63b4ae4223d1b47f8fc1acc4d8b23e0bcb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant0f62273f95956a75bcbf1be42637a525531c9240f4bc7421f39ebdb142dce263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e42d00f-a093-6ae7-0d07-89a70c535383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Hfn_mirror (k : ℝ → ℂ) (c t : ℝ) :
    Hfn k (1 - c - t * I) = Hfn (fun u => k (-u)) ((c:ℂ) + t * I) := by
  rw [Hfn_line]
  unfold Hfn tilt paperFT
  conv_rhs => rw [← integral_neg_eq_self]
  refine integral_congr_ae (Filter.Eventually.of_forall fun u => ?_)
  simp only [neg_neg]
  have harg : I * ((1 - (c:ℂ) - t * I - 1/2) / I) * u
      = (((- ((c - 1/2) * u) : ℝ)) : ℂ) + I * ↑t * ↑(-u : ℝ) := by
    have hI : (I : ℂ) ≠ 0 := I_ne_zero
    field_simp
    push_cast
    ring
  rw [harg, Complex.exp_add, ← Complex.ofReal_exp]
  push_cast
  ring

/-- The literature-form Weil explicit formula holds for Mathlib's ζ
(zero set = IsNontrivialZero, multiplicities = analyticOrderAt).  Together with Zeta23.EF.explicitFormulaPaper_of_lit + GammaFacts this yields
ExplicitFormulaPaper (zetaZeros hs) outright.

Assembly: full_line_identity (Contour) splits via logDeriv_completedZeta (XiLogDeriv) into
• ζ-part = prime_side_line (k) + prime_side_line (k ∘ Neg.neg),
    giving −Σ Λ(n)n^{−1/2}(k(log n) + k(−log n)) after sign bookkeeping,
• Γℝ-part = gamma_line_shift + gammaR_bracket → (1/2π)∫ h(r)[Re ψ(1/4+ir/2) − log π]dr,
• zero side: Σ' m_ρ H(ρ) with H(ρ) = h(γ_ρ) (Hfn at ρ = paperFT k ((ρ−1/2)/i) = h(γ_ρ) by
  gammaOf's definition), pole side: H(0) = h(i/2), H(1) = h(−i/2);
EF_lit's Summable clause = EF_zero_sum_summable (ZeroSummability). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant0f62273f95956a75bcbf1be42637a525531c9240f4bc7421f39ebdb142dce263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variant0f62273f95956a75bcbf1be42637a525531c9240f4bc7421f39ebdb142dce263.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcad63ca9eb0281b3ca62c8530f119c96acc3ded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
