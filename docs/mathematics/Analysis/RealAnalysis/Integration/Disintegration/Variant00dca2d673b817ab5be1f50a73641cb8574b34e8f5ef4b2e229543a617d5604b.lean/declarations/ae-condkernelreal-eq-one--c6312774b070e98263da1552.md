# ae_condKernelReal_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcf65f53557e43ad0721daecd32d7d5458b505b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0df70fc-57ef-2ca5-8686-ca85020f9788",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:731baa7e-6513-fb83-fd64-4bf40947e659",
  "kind": "theorem",
  "lexical_name": "ae_condKernelReal_eq_one",
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
  "slug": "ae-condkernelreal-eq-one--c6312774b070e98263da1552",
  "source": {
    "blob": "fcf65f53557e43ad0721daecd32d7d5458b505b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 231,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6312774b070e98263da15522d922ef9ee55731b12e419f96c6744a46aa4c1b2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:731baa7e-6513-fb83-fd64-4bf40947e659`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_condKernelReal_eq_one {s : Set ℝ} (hs : MeasurableSet s) (hρ : ρ {x | x.snd ∈ sᶜ} = 0) :
    ∀ᵐ a ∂ρ.fst, condKernelReal ρ a s = 1 := by
  have h : ρ {x | x.snd ∈ sᶜ} = (kernel.const Unit ρ.fst ⊗ₖ
      kernel.prodMkLeft Unit (condKernelReal ρ)) () {x | x.snd ∈ sᶜ} := by
    rw [← measure_eq_compProd_real]
  rw [hρ, kernel.compProd_apply] at h
  swap; · exact measurable_snd hs.compl
  rw [eq_comm, lintegral_eq_zero_iff] at h
  swap
  · simp_rw [kernel.prodMkLeft_apply']
    simp only [mem_compl_iff, mem_setOf_eq]
    exact kernel.measurable_coe _ hs.compl
  rw [kernel.const_apply] at h
  simp only [mem_compl_iff, mem_setOf_eq, kernel.prodMkLeft_apply'] at h
  filter_upwards [h] with a ha
  change condKernelReal ρ a sᶜ = 0 at ha
  rwa [prob_compl_eq_zero_iff hs] at ha
#align probability_theory.ae_cond_kernel_real_eq_one ProbabilityTheory.ae_condKernelReal_eq_one

end Real

section Polish

/-! ### Disintegration of measures on Polish Borel spaces

Since every standard Borel space embeds measurably into `ℝ`, we can generalize the disintegration
property on `ℝ` to all these spaces. -/


variable {Ω : Type*} [TopologicalSpace Ω] [PolishSpace Ω] [MeasurableSpace Ω] [BorelSpace Ω]
  [Nonempty Ω] (ρ : Measure (α × Ω)) [IsFiniteMeasure ρ]

/-- Existence of a conditional kernel. Use the definition `condKernel` to get that kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf65f53557e43ad0721daecd32d7d5458b505b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
