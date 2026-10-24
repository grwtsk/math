# compensatedPrefix_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad4db107-3473-efad-8646-61ba498b1062",
  "kind": "theorem",
  "lexical_name": "compensatedPrefix_abel",
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
  "slug": "compensatedprefix-abel--8e8f64865f18a2838d99a3e0",
  "source": {
    "blob": "8b13ed25b500fba6c99cb6b160e2299019060dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 318,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e8f64865f18a2838d99a3e070012e2e3195e0f83e2aed233d05e50d38a804bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad4db107-3473-efad-8646-61ba498b1062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedPrefix_abel (b : ℝ) (hb : 0 ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ s in 0..b, compensatedPrefix (Real.exp s) * deriv F s) =
      compensatedPrefix (Real.exp b) * F b - ∑ n ∈ primePowerInventory b,
        (ArithmeticFunction.vonMangoldt n - 1) * F (Real.log n) := by
  have ht := integral_finite_steps_deriv 0 b (primePowerInventory b)
    (fun n => Real.log n) (fun n => ArithmeticFunction.vonMangoldt n - 1)
    (fun n hn => mangoldtInventory_log_bounds b n hn) F hF
  have he : (∫ s in 0..b, compensatedPrefix (Real.exp s) * deriv F s) =
      ∫ s in 0..b, ∑ n ∈ primePowerInventory b,
        (ArithmeticFunction.vonMangoldt n - 1) *
          (if Real.log n ≤ s then deriv F s else 0) := by
    apply intervalIntegral.integral_congr
    intro s hs
    have hsb := uIcc_of_le hb ▸ hs
    exact compensatedPrefix_mul_eq_steps b s (deriv F s) hsb.1 hsb.2
  rw [he, ht]
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul, compensatedPrefix_exp_eq_sum b hb]

/-- Literal finite Abel readout: the upper source boundary vanishes even at an atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variantb02a73cab0de10f80a5d2868720113a2452e114381469e468a91d1f502986845.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b13ed25b500fba6c99cb6b160e2299019060dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
