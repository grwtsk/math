# _root_.MeasureTheory.Integrable.comp_snd_map_prod_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bef9d427b651443dcd00ebe371222d28463b4c51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24a8b0c2-d7c3-1870-3d52-0b1ed7c767e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d1830d2-c1d8-a240-b7bb-d29665043ae0",
  "kind": "theorem",
  "lexical_name": "_root_.MeasureTheory.Integrable.comp_snd_map_prod_id",
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
  "slug": "root-measuretheory-integrable-comp-snd-map-prod-id--a2d26cdea0da3a93019d1859",
  "source": {
    "blob": "bef9d427b651443dcd00ebe371222d28463b4c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 52,
    "path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2d26cdea0da3a93019d18599962a6ef1b927eab7e81dd6ac9f2fbb508b0dff3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d1830d2-c1d8-a240-b7bb-d29665043ae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasureTheory.Integrable.comp_snd_map_prod_id [NormedAddCommGroup F] (hm : m ≤ mΩ)
    (hf : Integrable f μ) : Integrable (fun x : Ω × Ω => f x.2)
      (@Measure.map Ω (Ω × Ω) (m.prod mΩ) mΩ (fun ω => (id ω, id ω)) μ) := by
  rw [← integrable_comp_snd_map_prod_mk_iff (measurable_id'' hm)] at hf
  simp_rw [id.def] at hf ⊢
  exact hf
#align measure_theory.integrable.comp_snd_map_prod_id MeasureTheory.Integrable.comp_snd_map_prod_id

end AuxLemmas

variable {Ω F : Type*} [TopologicalSpace Ω] {m : MeasurableSpace Ω} [mΩ : MeasurableSpace Ω]
  [PolishSpace Ω] [BorelSpace Ω] [Nonempty Ω] {μ : Measure Ω} [IsFiniteMeasure μ]

/-- Kernel associated with the conditional expectation with respect to a σ-algebra. It satisfies
`μ[f | m] =ᵐ[μ] fun ω => ∫ y, f y ∂(condexpKernel μ m ω)`.
It is defined as the conditional distribution of the identity given the identity, where the second
identity is understood as a map from `Ω` with the σ-algebra `mΩ` to `Ω` with σ-algebra `m ⊓ mΩ`.
We use `m ⊓ mΩ` instead of `m` to ensure that it is a sub-σ-algebra of `mΩ`. We then use
`kernel.comap` to get a kernel from `m` to `mΩ` instead of from `m ⊓ mΩ` to `mΩ`. -/
noncomputable irreducible_def condexpKernel (μ : Measure Ω) [IsFiniteMeasure μ]
    (m : MeasurableSpace Ω) : @kernel Ω Ω m mΩ :=
  kernel.comap (@condDistrib Ω Ω Ω _ mΩ _ _ _ mΩ (m ⊓ mΩ) id id μ _) id
    (measurable_id'' (inf_le_left : m ⊓ mΩ ≤ m))
#align probability_theory.condexp_kernel ProbabilityTheory.condexpKernel

set_option autoImplicit true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Condexp/Variant9cf11cbfe35bcf0782049f917b30b055cf7458278df5a185e65ab3f68f663fc4.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bef9d427b651443dcd00ebe371222d28463b4c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
