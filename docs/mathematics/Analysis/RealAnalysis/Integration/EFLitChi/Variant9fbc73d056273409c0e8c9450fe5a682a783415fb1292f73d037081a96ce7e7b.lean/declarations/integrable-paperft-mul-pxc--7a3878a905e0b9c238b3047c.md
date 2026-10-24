# integrable_paperFT_mul_PXc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f820de52-f9a3-5492-6762-84652f48dfef",
  "kind": "theorem",
  "lexical_name": "integrable_paperFT_mul_PXc",
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
  "slug": "integrable-paperft-mul-pxc--7a3878a905e0b9c238b3047c",
  "source": {
    "blob": "0ad7b731b075be77880c8d65388a34b96aaf7eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 204,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a3878a905e0b9c238b3047c8a27f6ee4d2386975002101b1762dec1d590d486",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f820de52-f9a3-5492-6762-84652f48dfef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_paperFT_mul_PXc {k : ℝ → ℂ} (c : ℕ → ℂ) (L : ℝ)
    (hFk : Integrable (FourierTransform.fourier k)) :
    Integrable (fun τ : ℝ => paperFT k τ * (PXc c (Real.exp L) τ : ℂ)) := by
  set S := Finset.Ioc 0 ⌊Real.exp L⌋₊ with hS
  have hint : ∀ n : ℕ, Integrable (fun τ : ℝ => paperFT k τ
      * (((c n).re * Real.cos (τ * Real.log n)
        + (c n).im * Real.sin (τ * Real.log n) : ℝ) : ℂ)) := by
    intro n
    have h1 := (Zeta23.EF.integrable_paperFT_mul_cos hFk (Real.log n)).const_mul
      (((c n).re : ℂ))
    have h2 := (integrable_paperFT_mul_sin hFk (Real.log n)).const_mul (((c n).im : ℂ))
    refine (h1.add h2).congr (Filter.Eventually.of_forall fun τ => ?_)
    simp only [Pi.add_apply]
    push_cast [-Complex.ofReal_cos, -Complex.ofReal_sin]
    ring
  have step2 : (fun τ : ℝ => paperFT k τ * (PXc c (Real.exp L) τ : ℂ))
      = fun τ : ℝ => ∑ n ∈ S, (-(1 / π) * ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ))
          * (paperFT k τ * (((c n).re * Real.cos (τ * Real.log n)
            + (c n).im * Real.sin (τ * Real.log n) : ℝ) : ℂ)) := by
    ext τ
    rw [PXc_eq_sum_cos_sin, ← hS]
    push_cast
    rw [Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun n hn => ?_
    have hn0 : 0 < n := (Finset.mem_Ioc.mp hn).1
    have hn0' : (0:ℝ) < (n:ℝ) := by exact_mod_cast hn0
    have hpow : ((n:ℝ) ^ (-(1/2 : ℝ)) : ℝ) = 1 / Real.sqrt n := by
      rw [Real.rpow_neg hn0'.le, Real.sqrt_eq_rpow]
      exact (one_div _).symm
    rw [hpow]
    push_cast
    ring
  rw [step2]
  exact integrable_finsetSum _ (fun n _ => (hint n).const_mul _)

/-- Mirror of Zeta23.EF.literatureRHS_eq_integral_nu — NO pole term for q > 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EFLitChi/Variant9fbc73d056273409c0e8c9450fe5a682a783415fb1292f73d037081a96ce7e7b.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad7b731b075be77880c8d65388a34b96aaf7eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
