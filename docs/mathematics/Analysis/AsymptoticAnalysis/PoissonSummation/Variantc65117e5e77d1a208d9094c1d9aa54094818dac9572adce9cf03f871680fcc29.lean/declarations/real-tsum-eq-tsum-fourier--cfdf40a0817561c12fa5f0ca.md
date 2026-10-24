# Real.tsum_eq_tsum_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67d7184c603604e4d534fac30fa5c00f2abd91ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24e38e3d-75f4-c85f-a80d-b73516a4320c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fce7d135-1821-8124-ed1e-81c82bcd2647",
  "kind": "theorem",
  "lexical_name": "Real.tsum_eq_tsum_fourier",
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
  "slug": "real-tsum-eq-tsum-fourier--cfdf40a0817561c12fa5f0ca",
  "source": {
    "blob": "67d7184c603604e4d534fac30fa5c00f2abd91ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 102,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfdf40a0817561c12fa5f0ca956c6426850f7fde9ef38d6d13aedfc06f15aa26",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fce7d135-1821-8124-ed1e-81c82bcd2647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.tsum_eq_tsum_fourier {f : C(ℝ, ℂ)}
    (h_norm :
      ∀ K : Compacts ℝ, Summable fun n : ℤ => ‖(f.comp <| ContinuousMap.addRight n).restrict K‖)
    (h_sum : Summable fun n : ℤ => 𝓕 (f : ℝ → ℂ) n) (x : ℝ) :
    ∑' n : ℤ, f (x + n) = ∑' n : ℤ, 𝓕 (f : ℝ → ℂ) n * fourier n (x : UnitAddCircle) := by
  let F : C(UnitAddCircle, ℂ) :=
    ⟨(f.periodic_tsum_comp_add_zsmul 1).lift, continuous_coinduced_dom.mpr (map_continuous _)⟩
  have : Summable (fourierCoeff F) := by
    convert! h_sum
    exact Real.fourierCoeff_tsum_comp_add h_norm _
  convert! (has_pointwise_sum_fourier_series_of_summable this x).tsum_eq.symm using 1
  · simpa only [F, coe_mk, ← QuotientAddGroup.mk_zero, Periodic.lift_coe, zsmul_one, comp_apply,
      coe_addRight, zero_add]
       using (hasSum_apply (summable_of_locally_summable_norm h_norm).hasSum x).tsum_eq
  · simp_rw [← Real.fourierCoeff_tsum_comp_add h_norm, smul_eq_mul, F, coe_mk]

section RpowDecay

variable {E : Type*} [NormedAddCommGroup E]

/-- If `f` is `O(x ^ (-b))` at infinity, then so is the function
`fun x ↦ ‖f.restrict (Icc (x + R) (x + S))‖` for any fixed `R` and `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d7184c603604e4d534fac30fa5c00f2abd91ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
