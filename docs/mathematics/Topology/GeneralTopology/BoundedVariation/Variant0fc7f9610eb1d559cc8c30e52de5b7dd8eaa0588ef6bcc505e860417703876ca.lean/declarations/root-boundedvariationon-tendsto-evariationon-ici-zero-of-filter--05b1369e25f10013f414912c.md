# _root_.BoundedVariationOn.tendsto_eVariationOn_Ici_zero_of_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 755,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:924039d9-86ac-4a26-7724-6de813773cf4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2c4ce5b-2298-614e-486c-8e4dce1b64b9",
  "kind": "theorem",
  "lexical_name": "_root_.BoundedVariationOn.tendsto_eVariationOn_Ici_zero_of_filter",
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
  "slug": "root-boundedvariationon-tendsto-evariationon-ici-zero-of-filter--05b1369e25f10013f414912c",
  "source": {
    "blob": "d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 808,
    "line": 755,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05b1369e25f10013f414912c4ea7a8a324ba04d84ac2b03c9ee4886ed1aec668",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2c4ce5b-2298-614e-486c-8e4dce1b64b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–808.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.BoundedVariationOn.tendsto_eVariationOn_Ici_zero_of_filter
    {f : α → E} {s : Set α} (hf : BoundedVariationOn f s)
    (L : Filter α) (hL : ∀ y ∈ s, s ∩ Ici y ∈ L) :
    Tendsto (fun y ↦ eVariationOn f (s ∩ Ici y)) L (𝓝 0) := by
  rcases eq_empty_or_nonempty s with rfl | ⟨x₀, hx₀⟩
  · simpa using tendsto_const_nhds
  /- The variation is monotone, therefore it converges. If the limit were positive, say `ε`,
  then one would get variation `ε` between two points `x₀` and `x₁`. But also between two points
  `x₁` and `x₂`, and so on. Adding up these variations would be arbitrarily large, contradicting
  the finite variation of the function. -/
  apply tendsto_order.2 ⟨by simp, fun ε εpos ↦ ?_⟩
  obtain ⟨δ, δpos, hδ⟩ : ∃ δ, δ ∈ Ioo 0 ε := exists_between εpos
  by_contra! H
  have B (y) (hy : y ∈ s) : ∃ y' ∈ s ∩ Ici y, δ ≤ eVariationOn f (s ∩ Icc y y') := by
    obtain ⟨y', hy', y'_mem⟩ : ∃ y', ε ≤ eVariationOn f (s ∩ Ici y') ∧ y' ∈ s ∩ Ici y :=
      (H.and_eventually (hL y hy)).exists
    obtain ⟨a, ha, b, hb, hab, h⟩ : ∃ a ∈ s ∩ Ici y', ∃ b ∈ s ∩ Ici y', a < b ∧
      δ < eVariationOn f ((s ∩ Ici y') ∩ Icc a b) :=
        exists_lt_eVariationOn_inter_Icc (hδ.trans_le hy')
    refine ⟨b, ⟨hb.1, le_trans y'_mem.2 hb.2⟩, ?_⟩
    have : Ici y' ∩ Icc a b = Icc a b := by grind
    rw [inter_assoc, this] at h
    exact h.le.trans (mono _ (by grind))
  choose! y y_mem le_y using B
  let v (n : ℕ) := y^[n] x₀
  have I n : v n ∈ s := by
    induction n with
    | zero => simpa [v] using hx₀
    | succ n ih =>
      simp only [Function.iterate_succ', Function.comp_apply, v]
      exact (y_mem _ ih).1
  have J (n : ℕ) : n * δ ≤ eVariationOn f s := calc
    n * δ
    _ = ∑ i ∈ Finset.range n, δ := by simp
    _ ≤ ∑ i ∈ Finset.range n, eVariationOn f (s ∩ Icc (v i) (v (i + 1))) := by
      gcongr with i hi
      simp only [Function.iterate_succ', Function.comp_apply, v]
      grind
    _ = eVariationOn f (s ∩ Icc (v 0) (v n)) := by
      apply eVariationOn.sum
      · apply monotone_nat_of_le_succ (fun n ↦ ?_)
        simp only [Function.iterate_succ', Function.comp_apply, v]
        exact (y_mem _ (I n)).2
      · grind
    _ ≤ eVariationOn f s := mono _ inter_subset_left
  have : Tendsto (fun (n : ℕ) ↦ n * δ) atTop (𝓝 (∞ * δ)) :=
    ENNReal.Tendsto.mul_const ENNReal.tendsto_nat_nhds_top (by simp)
  rw [ENNReal.top_mul δpos.ne'] at this
  have : ∞ ≤ eVariationOn f s := le_of_tendsto this (Eventually.of_forall J)
  simp only [BoundedVariationOn] at hf
  order

/-- A bounded variation function has a limit on its left within a set. Version with a general
filter, covering both left neighborhoods of points and `atTop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedVariation/Variant0fc7f9610eb1d559cc8c30e52de5b7dd8eaa0588ef6bcc505e860417703876ca.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f3dcfb0b40e8f24ecb0d0b676b5a094265e902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
