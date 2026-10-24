# Kernel.apply_eq_measure_condKernel_of_compProd_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a15f4a1c9244f398f42d5162075d447bc491e7e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df0c8597-03b0-3f47-b708-4ea07b50bd8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f3b8d91-ef9e-ceaf-646c-a537d3c5e080",
  "kind": "lemma",
  "lexical_name": "Kernel.apply_eq_measure_condKernel_of_compProd_eq",
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
  "slug": "kernel-apply-eq-measure-condkernel-of-compprod-eq--dbd2da3bb4659d79213bcda2",
  "source": {
    "blob": "a15f4a1c9244f398f42d5162075d447bc491e7e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 135,
    "path": "GRWTSK/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbd2da3bb4659d79213bcda21a997c8291437b904147d81957ddd473a71ad28f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f3b8d91-ef9e-ceaf-646c-a537d3c5e080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Kernel.apply_eq_measure_condKernel_of_compProd_eq
    {ρ : Kernel α (β × Ω)} [IsFiniteKernel ρ] {κ : Kernel (α × β) Ω} [IsFiniteKernel κ]
    (hκ : Kernel.fst ρ ⊗ₖ κ = ρ) (a : α) :
    (fun b ↦ κ (a, b)) =ᵐ[Kernel.fst ρ a] (ρ a).condKernel := by
  have : ρ a = (ρ a).fst ⊗ₘ Kernel.comap κ (fun b ↦ (a, b)) measurable_prodMk_left := by
    ext s hs
    conv_lhs => rw [← hκ]
    rw [Measure.compProd_apply hs, Kernel.compProd_apply hs]
    rfl
  have h := eq_condKernel_of_measure_eq_compProd _ this
  rw [Kernel.fst_apply]
  filter_upwards [h] with b hb
  rw [← hb, Kernel.comap_apply]

/-- For `fst κ a`-almost all `b`, the conditional kernel `Kernel.condKernel κ` applied to `(a, b)`
is equal to the conditional kernel of the measure `κ a` applied to `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Unique/Variant6a420f8243cbcadfcd640a84058fa2b85da1d2fbd5938b5cc98791e5e786efed.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a15f4a1c9244f398f42d5162075d447bc491e7e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
