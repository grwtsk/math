# Real.tsum_eq_tsum_fourierIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aab09219a031b27024db0168a02124f3ec16c9df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05f8b5cf-f822-1143-ebd3-6242b7164c98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c97ff9ae-270e-9135-9274-ed2f780c5996",
  "kind": "theorem",
  "lexical_name": "Real.tsum_eq_tsum_fourierIntegral",
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
  "slug": "real-tsum-eq-tsum-fourierintegral--d3e7f11ca642865030ab3d65",
  "source": {
    "blob": "aab09219a031b27024db0168a02124f3ec16c9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 109,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3e7f11ca642865030ab3d653d7c43bc5f9fe41be822953cc362e87c0b13727e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c97ff9ae-270e-9135-9274-ed2f780c5996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.tsum_eq_tsum_fourierIntegral {f : C(ℝ, ℂ)}
    (h_norm :
      ∀ K : Compacts ℝ, Summable fun n : ℤ => ‖(f.comp <| ContinuousMap.addRight n).restrict K‖)
    (h_sum : Summable fun n : ℤ => 𝓕 f n) : ∑' n : ℤ, f n = (∑' n : ℤ, 𝓕 f n) := by
  let F : C(UnitAddCircle, ℂ) :=
    ⟨(f.periodic_tsum_comp_add_zsmul 1).lift, continuous_coinduced_dom.mpr (map_continuous _)⟩
  have : Summable (fourierCoeff F) := by
    convert h_sum
    exact Real.fourierCoeff_tsum_comp_add h_norm _
  convert (has_pointwise_sum_fourier_series_of_summable this 0).tsum_eq.symm using 1
  · have := (hasSum_apply (summable_of_locally_summable_norm h_norm).hasSum 0).tsum_eq
    simpa only [coe_mk, ← QuotientAddGroup.mk_zero, Periodic.lift_coe, zsmul_one, comp_apply,
      coe_addRight, zero_add] using this
  · congr 1 with n : 1
    rw [← Real.fourierCoeff_tsum_comp_add h_norm n, fourier_eval_zero, smul_eq_mul, mul_one]
    rfl
#align real.tsum_eq_tsum_fourier_integral Real.tsum_eq_tsum_fourierIntegral

section RpowDecay

variable {E : Type*} [NormedAddCommGroup E]

/-- If `f` is `O(x ^ (-b))` at infinity, then so is the function
`λ x, ‖f.restrict (Icc (x + R) (x + S))‖` for any fixed `R` and `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aab09219a031b27024db0168a02124f3ec16c9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
