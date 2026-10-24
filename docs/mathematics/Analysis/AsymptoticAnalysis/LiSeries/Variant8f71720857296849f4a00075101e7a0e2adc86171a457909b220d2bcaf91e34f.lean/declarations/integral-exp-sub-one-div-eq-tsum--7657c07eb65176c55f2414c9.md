# integral_exp_sub_one_div_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cea33d7c-de3f-68a2-84e8-59ea4a7ad82d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9371d341-b05f-9078-8d82-57098afb470c",
  "kind": "theorem",
  "lexical_name": "integral_exp_sub_one_div_eq_tsum",
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
  "slug": "integral-exp-sub-one-div-eq-tsum--7657c07eb65176c55f2414c9",
  "source": {
    "blob": "f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 122,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7657c07eb65176c55f2414c9ac7bdb4557279e5df0230703443360c97256d224",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9371d341-b05f-9078-8d82-57098afb470c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_exp_sub_one_div_eq_tsum (y : ℝ) :
    ∫ u in (0 : ℝ)..y, ((exp u - 1) / u) =
      ∑' n : ℕ, y ^ (n + 1) / ((↑(n + 1) : ℝ) * ↑(n + 1).factorial) := by
  -- Step 1: Swap ∫ and ∑ using summability of norms
  have hswap := intervalIntegral.tsum_intervalIntegral_eq_of_summable_norm
    (summable_termFun_norm 0 y)
  simp only [show ∀ n, (fun x => (termFun n) x) = fun u => u ^ n / ↑(n + 1).factorial from
    fun n => rfl] at hswap
  -- Step 2: Compute each integral
  simp_rw [integral_term] at hswap
  -- hswap: ∑' n, y^{n+1}/((n+1)*(n+1)!) = ∫₀ʸ ∑' n, u^n/(n+1)!
  -- Step 3: Show ∫₀ʸ (exp u - 1)/u = ∫₀ʸ ∑' n, u^n/(n+1)! (they agree a.e.)
  trans (∫ u in (0 : ℝ)..y, ∑' n : ℕ, u ^ n / ↑(n + 1).factorial)
  · apply intervalIntegral.integral_congr_ae
    -- (exp u - 1)/u = ∑ u^n/(n+1)! for u ≠ 0 by hasSum_exp_sub_one_div;
    -- {0} has Lebesgue measure zero, so the equality holds a.e.
    have hae : ∀ᵐ (u : ℝ), u ≠ 0 :=
      ae_iff.mpr (by simp [show (volume : Measure ℝ) {(0 : ℝ)} = 0 from by simp])
    exact hae.mono (fun u hu _ => (hasSum_exp_sub_one_div hu).tsum_eq.symm)
  · exact hswap.symm

/-! ## Part C: The Euler-Mascheroni constant as an integral -/

/-- `γ = -Γ'(1) = -∫₀^∞ log(t) exp(-t) dt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant8f71720857296849f4a00075101e7a0e2adc86171a457909b220d2bcaf91e34f.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1444762eec9a3ce15b7d30b8945e3fb6d87d5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
