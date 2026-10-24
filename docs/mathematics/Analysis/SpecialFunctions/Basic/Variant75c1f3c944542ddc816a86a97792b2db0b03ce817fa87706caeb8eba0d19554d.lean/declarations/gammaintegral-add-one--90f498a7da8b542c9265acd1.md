# GammaIntegral_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1870cd7c-ad65-5072-62a2-ff002e587738",
  "kind": "theorem",
  "lexical_name": "GammaIntegral_add_one",
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
  "slug": "gammaintegral-add-one--90f498a7da8b542c9265acd1",
  "source": {
    "blob": "7955ef85b393fe1fd289876bb27a17a94b86454c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 245,
    "path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90f498a7da8b542c9265acd14c2a29ad7946258888f84c2efe57895f85e0ee46",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1870cd7c-ad65-5072-62a2-ff002e587738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GammaIntegral_add_one {s : ℂ} (hs : 0 < s.re) :
    GammaIntegral (s + 1) = s * GammaIntegral s := by
  suffices Tendsto (s + 1).partialGamma atTop (𝓝 <| s * GammaIntegral s) by
    refine' tendsto_nhds_unique _ this
    apply tendsto_partialGamma; rw [add_re, one_re]; linarith
  have : (fun X : ℝ => s * partialGamma s X - X ^ s * (-X).exp) =ᶠ[atTop]
      (s + 1).partialGamma := by
    apply eventuallyEq_of_mem (Ici_mem_atTop (0 : ℝ))
    intro X hX
    rw [partialGamma_add_one hs (mem_Ici.mp hX)]
    ring_nf
  refine' Tendsto.congr' this _
  suffices Tendsto (fun X => -X ^ s * (-X).exp : ℝ → ℂ) atTop (𝓝 0) by
    simpa using Tendsto.add (Tendsto.const_mul s (tendsto_partialGamma hs)) this
  rw [tendsto_zero_iff_norm_tendsto_zero]
  have :
      (fun e : ℝ => ‖-(e : ℂ) ^ s * (-e).exp‖) =ᶠ[atTop] fun e : ℝ => e ^ s.re * (-1 * e).exp := by
    refine' eventuallyEq_of_mem (Ioi_mem_atTop 0) _
    intro x hx; dsimp only
    rw [norm_eq_abs, map_mul, abs.map_neg, abs_cpow_eq_rpow_re_of_pos hx,
      abs_of_nonneg (exp_pos (-x)).le, neg_mul, one_mul]
  exact (tendsto_congr' this).mpr (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_0 _ _ zero_lt_one)
#align complex.Gamma_integral_add_one Complex.GammaIntegral_add_one

end GammaRecurrence

/-! Now we define `Γ(s)` on the whole complex plane, by recursion. -/


section GammaDef

/-- The `n`th function in this family is `Γ(s)` if `-n < s.re`, and junk otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7955ef85b393fe1fd289876bb27a17a94b86454c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
