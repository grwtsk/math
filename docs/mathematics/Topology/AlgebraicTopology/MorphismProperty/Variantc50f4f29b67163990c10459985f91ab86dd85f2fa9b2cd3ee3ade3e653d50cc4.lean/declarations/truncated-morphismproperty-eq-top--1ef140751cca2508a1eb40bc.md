# Truncated.morphismProperty_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfede67f942de517cfbccc9989ed396e3896a417",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c50f4f29b67163990c10459985f91ab86dd85f2fa9b2cd3ee3ade3e653d50cc4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:675913e9-92f8-9449-7e62-2a5660f0a7c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:415b7923-0c22-b5c6-58b3-31a92b0b2734",
  "kind": "lemma",
  "lexical_name": "Truncated.morphismProperty_eq_top",
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
  "slug": "truncated-morphismproperty-eq-top--1ef140751cca2508a1eb40bc",
  "source": {
    "blob": "cfede67f942de517cfbccc9989ed396e3896a417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 25,
    "path": "GRWTSK/Topology/AlgebraicTopology/MorphismProperty/Variantc50f4f29b67163990c10459985f91ab86dd85f2fa9b2cd3ee3ade3e653d50cc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ef140751cca2508a1eb40bc173080f0abac44b9c32268453a94b6f3e64b65e9",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/MorphismProperty/Variantc50f4f29b67163990c10459985f91ab86dd85f2fa9b2cd3ee3ade3e653d50cc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:415b7923-0c22-b5c6-58b3-31a92b0b2734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Truncated.morphismProperty_eq_top
    {d : ℕ} (W : MorphismProperty (Truncated d)) [W.IsMultiplicative]
    (δ_mem : ∀ (n : ℕ) (hn : n < d) (i : Fin (n + 2)),
    W (SimplexCategory.δ (n := n) i : ⟨.mk n, by dsimp; omega⟩ ⟶
      ⟨.mk (n + 1), by dsimp; omega⟩))
    (σ_mem : ∀ (n : ℕ) (hn : n < d) (i : Fin (n + 1)),
    W (SimplexCategory.σ (n := n) i : ⟨.mk (n + 1), by dsimp; omega⟩ ⟶
      ⟨.mk n, by dsimp; omega⟩)) :
    W = ⊤ := by
  ext ⟨a, ha⟩ ⟨b, hb⟩ f
  simp only [MorphismProperty.top_apply, iff_true]
  induction' a using SimplexCategory.rec with a
  induction' b using SimplexCategory.rec with b
  dsimp at ha hb
  generalize h : a + b = c
  induction c generalizing a b with
  | zero =>
    obtain rfl : a = 0 := by omega
    obtain rfl : b = 0 := by omega
    obtain rfl : f = 𝟙 _ := by
      ext i : 3
      apply Subsingleton.elim (α := Fin 1)
    apply MorphismProperty.id_mem
  | succ c hc =>
    let f' : mk a ⟶ mk b := f
    by_cases h₁ : Function.Surjective f'.toOrderHom; swap
    · obtain _ | b := b
      · exact (h₁ (fun _ ↦ ⟨0, Subsingleton.elim (α := Fin 1) _ _⟩)).elim
      · obtain ⟨i, g', hf'⟩ := eq_comp_δ_of_not_surjective _ h₁
        obtain rfl : f = (g' : _ ⟶ ⟨mk b, by dsimp; omega⟩) ≫ δ i := hf'
        exact W.comp_mem _ _ (hc _ _ _ _ _ (by omega))
          (δ_mem _ (by omega) _)
    by_cases h₂ : Function.Injective f'.toOrderHom; swap
    · obtain _ | a := a
      · exact (h₂ (Function.injective_of_subsingleton (α := Fin 1) _)).elim
      · obtain ⟨i, g', hf'⟩ := eq_σ_comp_of_not_injective _ h₂
        obtain rfl : f = (by exact σ i) ≫ (g' : ⟨mk a, by dsimp; omega⟩ ⟶ _) := hf'
        exact W.comp_mem _ _ (σ_mem _ (by omega) _) (hc _ _ _ _ _ (by omega))
    rw [← epi_iff_surjective] at h₁
    rw [← mono_iff_injective] at h₂
    obtain rfl : a = b := le_antisymm (len_le_of_mono h₂) (len_le_of_epi h₁)
    obtain rfl : f = 𝟙 _ := eq_id_of_mono f'
    apply W.id_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/MorphismProperty/Variantc50f4f29b67163990c10459985f91ab86dd85f2fa9b2cd3ee3ade3e653d50cc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/MorphismProperty/Variantc50f4f29b67163990c10459985f91ab86dd85f2fa9b2cd3ee3ade3e653d50cc4.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfede67f942de517cfbccc9989ed396e3896a417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
