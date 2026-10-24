# integrableOn_sigma_mul_abs_nuX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "592d4fb46536da54f3f44c17fa380bb8f4c19d10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 572,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c43ea1e9-18ad-e796-fc18-683069cb87b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88d0de4d-fc52-0165-0638-4494bb7060bd",
  "kind": "theorem",
  "lexical_name": "integrableOn_sigma_mul_abs_nuX",
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
  "slug": "integrableon-sigma-mul-abs-nux--4685722b2898900dcceb9984",
  "source": {
    "blob": "592d4fb46536da54f3f44c17fa380bb8f4c19d10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 572,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4685722b2898900dcceb99842f6aae10d637b1c85fee0684e0ee5d0c87fbae48",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88d0de4d-fc52-0165-0638-4494bb7060bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_sigma_mul_abs_nuX (hνc : Continuous ν) (hF : LocalHypsCoreW cϱ p F)
    (hν : NuBound p B ν) (hT : 1 ≤ p.T) :
    IntegrableOn (fun τ : ℝ =>
      (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|) (p.I)ᶜ := by
  have hT0 : 0 < p.T := by linarith
  have hmeas : AEStronglyMeasurable (fun τ : ℝ =>
      (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ|) volume := by
    apply AEStronglyMeasurable.mul
    · apply Finset.aestronglyMeasurable_fun_sum
      intro k _
      exact (psiA_shift_integrable hF (p.tau k)).aestronglyMeasurable
    · exact hνc.abs.aestronglyMeasurable
  have hnn : ∀ τ, 0 ≤ (∑ k ∈ Finset.range p.d, psiA cϱ p (τ - p.tau k)) * |ν τ| :=
    fun τ => mul_nonneg (Finset.sum_nonneg fun k _ => psiA_nonneg_of hF _) (abs_nonneg _)
  have hcompl : (p.I)ᶜ = Iio p.T ∪ Ioi (2 * p.T) := by
    ext x
    simp only [Setting.I, Zeta23.Iwin, Set.mem_compl_iff, Set.mem_Icc, Set.mem_union, Set.mem_Iio,
      Set.mem_Ioi, not_and_or, not_le]
  rw [hcompl]
  refine IntegrableOn.union ?_ ?_
  · refine Integrable.mono' (((Mtot_integrable (B := B) hF hT0).comp_sub_left p.T).integrableOn)
      hmeas.restrict ?_
    filter_upwards [ae_restrict_mem measurableSet_Iio] with τ hτ
    rw [Real.norm_eq_abs, abs_of_nonneg (hnn τ)]
    exact dom_left hF hν hT0 hτ
  · refine Integrable.mono' (((Mtot_integrable (B := B) hF hT0).comp_sub_right (2 * p.T)).integrableOn)
      hmeas.restrict ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with τ hτ
    rw [Real.norm_eq_abs, abs_of_nonneg (hnn τ)]
    exact dom_right hF hν hT0 hτ

/-- log(2T) = log(4π) + l ≤ l + 12. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variantd0b2b73d52f0c9d36f24646c5bc9447418e18793166c026f13570d991e0c4d15.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `592d4fb46536da54f3f44c17fa380bb8f4c19d10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
