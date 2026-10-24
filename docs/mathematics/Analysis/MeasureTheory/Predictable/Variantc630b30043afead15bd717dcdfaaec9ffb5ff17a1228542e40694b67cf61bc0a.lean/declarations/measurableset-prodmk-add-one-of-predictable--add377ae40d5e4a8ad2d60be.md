# measurableSet_prodMk_add_one_of_predictable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "256cb3bff218421de976104a3231aacad07c5b6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a567547-79af-d648-1975-5b2c28fa7680",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c09384eb-09fa-cd82-d1f6-045ebea19e57",
  "kind": "lemma",
  "lexical_name": "measurableSet_prodMk_add_one_of_predictable",
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
  "slug": "measurableset-prodmk-add-one-of-predictable--add377ae40d5e4a8ad2d60be",
  "source": {
    "blob": "256cb3bff218421de976104a3231aacad07c5b6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 90,
    "path": "GRWTSK/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:add377ae40d5e4a8ad2d60beefb5b9d1b17f301149ce0264e076fdcbba6143df",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c09384eb-09fa-cd82-d1f6-045ebea19e57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_prodMk_add_one_of_predictable {𝓕 : Filtration ℕ m} {s : Set (ℕ × Ω)}
    (hs : MeasurableSet[𝓕.predictable] s) (n : ℕ) :
    MeasurableSet[𝓕 n] {ω | (n + 1, ω) ∈ s} := by
  rw [(by aesop : {ω | (n + 1, ω) ∈ s} = (Prod.mk (α := Set.singleton (n + 1)) (β := Ω)
      ⟨n + 1, rfl⟩) ⁻¹' ((fun (p : Set.singleton (n + 1) × Ω) ↦ ((p.1 : ℕ), p.2)) ⁻¹' s))]
  refine measurableSet_preimage (mβ := Subtype.instMeasurableSpace.prod (𝓕 n))
    measurable_prodMk_left <| measurableSet_preimage ?_ hs
  rw [measurable_iff_comap_le, MeasurableSpace.comap_le_iff_le_map]
  refine MeasurableSpace.generateFrom_le ?_
  rintro - (⟨A, hA, rfl⟩ | ⟨i, A, hA, rfl⟩)
  · rw [MeasurableSpace.map_def,
      (_ : (fun (p : Set.singleton (n + 1) × Ω) ↦ ((p.1 : ℕ), p.2)) ⁻¹' ({⊥} ×ˢ A) = ∅)]
    · simp
    · ext p
      simp only [Nat.bot_eq_zero, Set.mem_preimage, Set.mem_prod, Set.mem_singleton_iff,
        Set.mem_empty_iff_false, iff_false, not_and]
      exact fun hp1 ↦ False.elim <| Nat.succ_ne_zero n (hp1 ▸ p.1.2.symm)
  · rw [MeasurableSpace.map_def]
    obtain hni | hin := lt_or_ge n i
    · rw [(_ : (fun (p : Set.singleton (n + 1) × Ω) ↦ ((p.1 : ℕ), p.2)) ⁻¹' (Set.Ioi i ×ˢ A) = ∅)]
      · simp
      · ext p
        simp only [Set.mem_preimage, Set.mem_prod, Set.mem_Ioi, Set.mem_empty_iff_false,
          iff_false, not_and]
        rw [p.1.2]
        grind
    · rw [(_ : (fun (p : Set.singleton (n + 1) × Ω) ↦ ((p.1 : ℕ), p.2)) ⁻¹' (Set.Ioi i ×ˢ A)
          = {⟨n + 1, rfl⟩} ×ˢ A)]
      · exact MeasurableSet.prod (MeasurableSet.of_subtype_image trivial) (𝓕.mono hin _ hA)
      · ext p
        simp only [Set.mem_preimage, Set.mem_prod, Set.mem_Ioi, Set.mem_singleton_iff,
          and_congr_left_iff]
        intro hp2
        rw [p.1.2]
        exact ⟨fun _ ↦ by aesop, fun _ ↦ lt_add_one_iff.2 hin⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256cb3bff218421de976104a3231aacad07c5b6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
