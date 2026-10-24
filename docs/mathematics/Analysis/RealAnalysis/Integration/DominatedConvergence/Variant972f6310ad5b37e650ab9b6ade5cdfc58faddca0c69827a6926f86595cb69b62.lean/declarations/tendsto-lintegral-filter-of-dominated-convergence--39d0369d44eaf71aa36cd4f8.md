# tendsto_lintegral_filter_of_dominated_convergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94235f20cc731ba18c07c020d04f13238f33d8ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86a4eb65-4d66-c76b-b3b5-18ce44a9301c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ea993ef-7337-3232-6bf1-2b117f926023",
  "kind": "theorem",
  "lexical_name": "tendsto_lintegral_filter_of_dominated_convergence",
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
  "slug": "tendsto-lintegral-filter-of-dominated-convergence--39d0369d44eaf71aa36cd4f8",
  "source": {
    "blob": "94235f20cc731ba18c07c020d04f13238f33d8ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39d0369d44eaf71aa36cd4f8532126cc3b126cf163159f9a970561acdce1bbd8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ea993ef-7337-3232-6bf1-2b117f926023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_lintegral_filter_of_dominated_convergence {ι} {l : Filter ι}
    [l.IsCountablyGenerated] {F : ι → α → ℝ≥0∞} {f : α → ℝ≥0∞} (bound : α → ℝ≥0∞)
    (hF_meas : ∀ᶠ n in l, Measurable (F n)) (h_bound : ∀ᶠ n in l, ∀ᵐ a ∂μ, F n a ≤ bound a)
    (h_fin : ∫⁻ a, bound a ∂μ ≠ ∞) (h_lim : ∀ᵐ a ∂μ, Tendsto (fun n => F n a) l (𝓝 (f a))) :
    Tendsto (fun n => ∫⁻ a, F n a ∂μ) l (𝓝 <| ∫⁻ a, f a ∂μ) := by
  rw [tendsto_iff_seq_tendsto]
  intro x xl
  have hxl := by
    rw [tendsto_atTop'] at xl
    exact xl
  have h := inter_mem hF_meas h_bound
  replace h := hxl _ h
  rcases h with ⟨k, h⟩
  rw [← tendsto_add_atTop_iff_nat k]
  refine tendsto_lintegral_of_dominated_convergence ?_ ?_ ?_ ?_ ?_
  · exact bound
  · intro
    refine (h _ ?_).1
    exact Nat.le_add_left _ _
  · intro
    refine (h _ ?_).2
    exact Nat.le_add_left _ _
  · assumption
  · refine h_lim.mono fun a h_lim => ?_
    apply @Tendsto.comp _ _ _ (fun n => x (n + k)) fun n => F n a
    · assumption
    rw [tendsto_add_atTop_iff_nat]
    assumption

/-- If a monotone sequence of functions has an upper bound and the sequence of integrals of these
functions tends to the integral of the upper bound, then the sequence of functions converges
almost everywhere to the upper bound. Auxiliary version assuming moreover that the
functions in the sequence are ae measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant972f6310ad5b37e650ab9b6ade5cdfc58faddca0c69827a6926f86595cb69b62.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94235f20cc731ba18c07c020d04f13238f33d8ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
