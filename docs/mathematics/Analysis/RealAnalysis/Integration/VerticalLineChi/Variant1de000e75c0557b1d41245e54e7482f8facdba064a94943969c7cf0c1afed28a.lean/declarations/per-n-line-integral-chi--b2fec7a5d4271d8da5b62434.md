# per_n_line_integral_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a78846a-3fd4-5f95-13c7-cf287001e3b0",
  "kind": "theorem",
  "lexical_name": "per_n_line_integral_chi",
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
  "slug": "per-n-line-integral-chi--b2fec7a5d4271d8da5b62434",
  "source": {
    "blob": "7b7033b926b715aa7d0952e5790330aaa2c56ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2fec7a5d4271d8da5b62434e93e04e46a2db2db89bfaa259b7bcf2e8192fa17",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a78846a-3fd4-5f95-13c7-cf287001e3b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem per_n_line_integral_chi {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    {c : ℝ} (n : ℕ) :
    (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ,
        paperFT (tilt k (c - 1/2)) t
          * LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n
      = (χ n : ℂ) * ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp [LSeries.term]
  · have hn1 : (1:ℝ) ≤ (n:ℝ) := by exact_mod_cast hn
    have hn0 : (0:ℝ) < (n:ℝ) := by linarith
    have hnC : (n:ℂ) ≠ 0 := by exact_mod_cast hn.ne'
    have hterm : ∀ t : ℝ, LSeries.term (fun n => (χ n : ℂ) * (Λ n : ℂ)) (((c:ℝ):ℂ) + t * I) n
        = (χ n : ℂ) * ((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ)
          * cexp (-I * t * Real.log n) := by
      intro t
      rw [LSeries.term_of_ne_zero hn.ne', div_eq_mul_inv, ← Complex.cpow_neg]
      have hsplit : (-((((c:ℝ)):ℂ) + t * I)) = (-((c:ℝ):ℂ)) + (-(I * t)) := by ring
      rw [hsplit, Complex.cpow_add _ _ hnC]
      have h1 : (n:ℂ) ^ (-((c:ℝ):ℂ)) = (((n:ℝ) ^ (-c) : ℝ) : ℂ) := by
        rw [show ((n:ℂ)) = (((n:ℝ):ℂ)) by push_cast; rfl,
          show (-((c:ℝ):ℂ)) = ((-c : ℝ) : ℂ) by push_cast; rfl,
          ← Complex.ofReal_cpow hn0.le]
      have h2 : (n:ℂ) ^ (-(I * t)) = cexp (-I * t * Real.log n) := by
        rw [Complex.cpow_def_of_ne_zero hnC]
        congr 1
        rw [show ((n:ℂ)) = (((n:ℝ):ℂ)) by push_cast; rfl, ← Complex.ofReal_log hn0.le]
        ring
      rw [h1, h2]
      ring
    simp_rw [hterm]
    have hre : (fun t : ℝ => paperFT (tilt k (c - 1/2)) t
        * ((χ n : ℂ) * ((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ) * cexp (-I * t * Real.log n)))
        = fun t : ℝ => ((χ n : ℂ) * ((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
          * (paperFT (tilt k (c - 1/2)) t * cexp (-I * t * Real.log n)) := by
      funext t
      ring
    rw [hre, Zeta23.EF.cintegral_const_mul]
    rw [show (1 / (2 * (Real.pi : ℂ))) * (((χ n : ℂ) * ((Λ n : ℝ) : ℂ)
          * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
        * ∫ t : ℝ, paperFT (tilt k (c - 1/2)) t * cexp (-I * t * Real.log n))
        = ((χ n : ℂ) * ((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
          * ((1 / (2 * (Real.pi : ℂ))) * ∫ t : ℝ, paperFT (tilt k (c - 1/2)) t
            * cexp (-I * t * Real.log n)) from by ring]
    rw [tilted_inversion hk hkc (c - 1/2) (Real.log n)]
    have hexp : Real.exp ((c - 1/2) * Real.log n) = (n:ℝ) ^ (c - 1/2) := by
      rw [Real.rpow_def_of_pos hn0]
      ring_nf
    have hpow : ((n:ℝ) ^ (-c) : ℝ) * ((n:ℝ) ^ (c - 1/2) : ℝ) = ((n:ℝ) ^ (-(1/2) : ℝ) : ℝ) := by
      rw [← Real.rpow_add hn0]
      congr 1
      ring
    have hsqrt : ((n:ℝ) ^ (-(1/2) : ℝ) : ℝ) = 1 / Real.sqrt n := by
      rw [Real.rpow_neg hn0.le, Real.sqrt_eq_rpow]
      exact (one_div _).symm
    calc (χ n : ℂ) * ((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ)
        * (k (Real.log n) * ((Real.exp ((c - 1/2) * Real.log n) : ℝ) : ℂ))
        = (χ n : ℂ) * (((Λ n * ((n:ℝ) ^ (-c) * (n:ℝ) ^ (c - 1/2)) : ℝ)) : ℂ)
          * k (Real.log n) := by
          rw [hexp]
          push_cast
          ring
      _ = (χ n : ℂ) * ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
          rw [hpow, hsqrt, mul_one_div]

omit [NeZero q] in
/-- Twisted tsum/integral swap (domination: ‖χ(n)‖ ≤ 1 reduces to the ζ-side majorant). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant1de000e75c0557b1d41245e54e7482f8facdba064a94943969c7cf0c1afed28a.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7033b926b715aa7d0952e5790330aaa2c56ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
