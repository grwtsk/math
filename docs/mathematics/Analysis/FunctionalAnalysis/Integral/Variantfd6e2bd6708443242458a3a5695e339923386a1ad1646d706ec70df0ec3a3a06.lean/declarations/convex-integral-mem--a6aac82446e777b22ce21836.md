# Convex.integral_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e55239f5-5781-ee87-72a3-57c36fe5885f",
  "kind": "theorem",
  "lexical_name": "Convex.integral_mem",
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
  "slug": "convex-integral-mem--a6aac82446e777b22ce21836",
  "source": {
    "blob": "2fa4c96abcb589f7ad9dd1ca5590e1078660981b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 65,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6aac82446e777b22ce21836b5513bdc11fba7035623982efa83010cb7b67914",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e55239f5-5781-ee87-72a3-57c36fe5885f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.integral_mem [IsProbabilityMeasure μ] (hs : Convex ℝ s) (hsc : IsClosed s)
    (hf : ∀ᵐ x ∂μ, f x ∈ s) (hfi : Integrable f μ) : (∫ x, f x ∂μ) ∈ s := by
  borelize E
  rcases hfi.aestronglyMeasurable with ⟨g, hgm, hfg⟩
  have : SeparableSpace (range g ∩ s : Set E) :=
    (hgm.isSeparable_range.mono inter_subset_left).separableSpace
  obtain ⟨y₀, h₀⟩ : (range g ∩ s).Nonempty := by
    rcases (hf.and hfg).exists with ⟨x₀, h₀⟩
    exact ⟨f x₀, by simp only [h₀.2, mem_range_self], h₀.1⟩
  rw [integral_congr_ae hfg]; rw [integrable_congr hfg] at hfi
  have hg : ∀ᵐ x ∂μ, g x ∈ closure (range g ∩ s) := by
    filter_upwards [hfg.rw (fun _ y => y ∈ s) hf] with x hx
    apply subset_closure
    exact ⟨mem_range_self _, hx⟩
  set G : ℕ → SimpleFunc α E := SimpleFunc.approxOn _ hgm.measurable (range g ∩ s) y₀ h₀
  have : Tendsto (fun n => (G n).integral μ) atTop (𝓝 <| ∫ x, g x ∂μ) :=
    tendsto_integral_approxOn_of_measurable hfi _ hg _ (integrable_const _)
  refine hsc.mem_of_tendsto this (Eventually.of_forall fun n => hs.sum_mem ?_ ?_ ?_)
  · exact fun _ _ => ENNReal.toReal_nonneg
  · simp_rw [measureReal_def]
    rw [← ENNReal.toReal_sum, (G n).sum_range_measure_preimage_singleton, measure_univ,
      ENNReal.toReal_one]
    finiteness
  · simp only [SimpleFunc.mem_range, forall_mem_range]
    intro x
    apply (range g).inter_subset_right
    exact SimpleFunc.approxOn_mem hgm.measurable h₀ _ _

/-- If `μ` is a non-zero finite measure on `α`, `s` is a convex closed set in `E`, and `f` is an
integrable function sending `μ`-a.e. points to `s`, then the average value of `f` belongs to `s`:
`⨍ x, f x ∂μ ∈ s`. See also `Convex.centerMass_mem` for a finite sum version of this lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fa4c96abcb589f7ad9dd1ca5590e1078660981b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
