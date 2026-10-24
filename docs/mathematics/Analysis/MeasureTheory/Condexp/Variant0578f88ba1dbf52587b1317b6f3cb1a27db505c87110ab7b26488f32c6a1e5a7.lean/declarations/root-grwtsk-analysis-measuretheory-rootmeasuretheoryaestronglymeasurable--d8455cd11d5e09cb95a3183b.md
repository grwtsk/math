# _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.Integrable.comp_snd_map_prod_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c955a32d-d63d-047e-398b-e590db266208",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.Integrable.comp_snd_map_prod_id",
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
  "slug": "root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable--d8455cd11d5e09cb95a3183b",
  "source": {
    "blob": "742d05005989bce92e9cb9295aa56b39f1c7cd4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 60,
    "path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8455cd11d5e09cb95a3183b0cbad6e2a96c88815b9919748191dd7aa4769870",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c955a32d-d63d-047e-398b-e590db266208`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasureTheoryAEStronglyMeasurableCompSndMapProdId.Variant13da7a432a0864dea3c870b6fecba459ecede58f178a8770ac058427ca54b223.MeasureTheory.Integrable.comp_snd_map_prod_id [NormedAddCommGroup F] (hm : m ≤ mΩ)
    (hf : Integrable f μ) : Integrable (fun x : Ω × Ω => f x.2)
      (@Measure.map Ω (Ω × Ω) mΩ (m.prod mΩ) (fun ω => (id ω, id ω)) μ) := by
  rw [← integrable_comp_snd_map_prodMk_iff (measurable_id'' hm)] at hf
  simp_rw [id] at hf ⊢
  exact hf

end AuxLemmas

variable {Ω F : Type*} {m : MeasurableSpace Ω} [mΩ : MeasurableSpace Ω]
  [StandardBorelSpace Ω] {μ : Measure Ω} [IsFiniteMeasure μ]

open Classical in
/-- Kernel associated with the conditional expectation with respect to a σ-algebra. It satisfies
`μ[f | m] =ᵐ[μ] fun ω => ∫ y, f y ∂(condExpKernel μ m ω)`.
It is defined as the conditional distribution of the identity given the identity, where the second
identity is understood as a map from `Ω` with the σ-algebra `mΩ` to `Ω` with σ-algebra `m ⊓ mΩ`.
We use `m ⊓ mΩ` instead of `m` to ensure that it is a sub-σ-algebra of `mΩ`. We then use
`Kernel.comap` to get a kernel from `m` to `mΩ` instead of from `m ⊓ mΩ` to `mΩ`. -/
noncomputable irreducible_def condExpKernel (μ : Measure Ω) [IsFiniteMeasure μ]
    (m : MeasurableSpace Ω) : @Kernel Ω Ω m mΩ :=
  if _h : Nonempty Ω then
    Kernel.comap (@condDistrib Ω Ω Ω mΩ _ _ mΩ (m ⊓ mΩ) id id μ _) id
      (measurable_id'' (inf_le_left : m ⊓ mΩ ≤ m))
  else 0

@[deprecated (since := "2025-01-21")] alias condexpKernel := condExpKernel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Condexp/Variant0578f88ba1dbf52587b1317b6f3cb1a27db505c87110ab7b26488f32c6a1e5a7.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `742d05005989bce92e9cb9295aa56b39f1c7cd4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
