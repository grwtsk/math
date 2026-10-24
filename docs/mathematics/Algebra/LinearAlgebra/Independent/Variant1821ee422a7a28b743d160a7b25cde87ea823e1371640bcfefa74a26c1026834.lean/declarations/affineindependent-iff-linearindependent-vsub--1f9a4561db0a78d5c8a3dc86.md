# affineIndependent_iff_linearIndependent_vsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf0410409315d663e14db63a7511bfa3a3a29773",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/1821ee422a7a28b743d160a7b25cde87ea823e1371640bcfefa74a26c1026834.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6374f609-4863-4229-acbd-5845a6779c8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ffae770-7f42-ef63-8399-aa8fef9d169d",
  "kind": "theorem",
  "lexical_name": "affineIndependent_iff_linearIndependent_vsub",
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
  "slug": "affineindependent-iff-linearindependent-vsub--1f9a4561db0a78d5c8a3dc86",
  "source": {
    "blob": "cf0410409315d663e14db63a7511bfa3a3a29773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant1821ee422a7a28b743d160a7b25cde87ea823e1371640bcfefa74a26c1026834.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f9a4561db0a78d5c8a3dc865374a9c5b906e64646796d8f602bf762b5b5e511",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant1821ee422a7a28b743d160a7b25cde87ea823e1371640bcfefa74a26c1026834.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ffae770-7f42-ef63-8399-aa8fef9d169d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineIndependent_iff_linearIndependent_vsub (p : ι → P) (i1 : ι) :
    AffineIndependent k p ↔ LinearIndependent k fun i : { x // x ≠ i1 } => (p i -ᵥ p i1 : V) := by
  classical
    constructor
    · intro h
      rw [linearIndependent_iff']
      intro s g hg i hi
      set f : ι → k := fun x => if hx : x = i1 then -∑ y in s, g y else g ⟨x, hx⟩ with hfdef
      let s2 : Finset ι := insert i1 (s.map (Embedding.subtype _))
      have hfg : ∀ x : { x // x ≠ i1 }, g x = f x := by
        intro x
        rw [hfdef]
        dsimp only
        erw [dif_neg x.property, Subtype.coe_eta]
      rw [hfg]
      have hf : ∑ ι in s2, f ι = 0 := by
        rw [Finset.sum_insert
            (Finset.not_mem_map_subtype_of_not_property s (Classical.not_not.2 rfl)),
          Finset.sum_subtype_map_embedding fun x _ => (hfg x).symm]
        rw [hfdef]
        dsimp only
        rw [dif_pos rfl]
        exact neg_add_self _
      have hs2 : s2.weightedVSub p f = (0 : V) := by
        set f2 : ι → V := fun x => f x • (p x -ᵥ p i1) with hf2def
        set g2 : { x // x ≠ i1 } → V := fun x => g x • (p x -ᵥ p i1)
        have hf2g2 : ∀ x : { x // x ≠ i1 }, f2 x = g2 x := by
          simp only [hf2def]
          refine' fun x => _
          rw [hfg]
        rw [Finset.weightedVSub_eq_weightedVSubOfPoint_of_sum_eq_zero s2 f p hf (p i1),
          Finset.weightedVSubOfPoint_insert, Finset.weightedVSubOfPoint_apply,
          Finset.sum_subtype_map_embedding fun x _ => hf2g2 x]
        exact hg
      exact h s2 f hf hs2 i (Finset.mem_insert_of_mem (Finset.mem_map.2 ⟨i, hi, rfl⟩))
    · intro h
      rw [linearIndependent_iff'] at h
      intro s w hw hs i hi
      rw [Finset.weightedVSub_eq_weightedVSubOfPoint_of_sum_eq_zero s w p hw (p i1), ←
        s.weightedVSubOfPoint_erase w p i1, Finset.weightedVSubOfPoint_apply] at hs
      let f : ι → V := fun i => w i • (p i -ᵥ p i1)
      have hs2 : (∑ i in (s.erase i1).subtype fun i => i ≠ i1, f i) = 0 := by
        rw [← hs]
        convert Finset.sum_subtype_of_mem f fun x => Finset.ne_of_mem_erase
      have h2 := h ((s.erase i1).subtype fun i => i ≠ i1) (fun x => w x) hs2
      simp_rw [Finset.mem_subtype] at h2
      have h2b : ∀ i ∈ s, i ≠ i1 → w i = 0 := fun i his hi =>
        h2 ⟨i, hi⟩ (Finset.mem_erase_of_ne_of_mem hi his)
      exact Finset.eq_zero_of_sum_eq_zero hw h2b i hi
#align affine_independent_iff_linear_independent_vsub affineIndependent_iff_linearIndependent_vsub

/-- A set is affinely independent if and only if the differences from
a base point in that set are linearly independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant1821ee422a7a28b743d160a7b25cde87ea823e1371640bcfefa74a26c1026834.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant1821ee422a7a28b743d160a7b25cde87ea823e1371640bcfefa74a26c1026834.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf0410409315d663e14db63a7511bfa3a3a29773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
