# HasBasis.mem_lift_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cce126a3c518a1b0d699208940f4ad202ed5593",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4baea103dc8104f416300813c37fa5ec76d5479b06034f444fc8e28c851a7455.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e96a9ab3-081e-bf4a-83e9-06dd39d39e8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52f732e9-a28c-8de9-49a3-e4bef9ce7bd2",
  "kind": "theorem",
  "lexical_name": "HasBasis.mem_lift_iff",
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
  "slug": "hasbasis-mem-lift-iff--d304ff6ea0b73586ac6d5a7e",
  "source": {
    "blob": "8cce126a3c518a1b0d699208940f4ad202ed5593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/Lift/Variant4baea103dc8104f416300813c37fa5ec76d5479b06034f444fc8e28c851a7455.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d304ff6ea0b73586ac6d5a7ee7b7d913f33d73d3c4b69f718ca0df68bbf59462",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lift/Variant4baea103dc8104f416300813c37fa5ec76d5479b06034f444fc8e28c851a7455.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52f732e9-a28c-8de9-49a3-e4bef9ce7bd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasBasis.mem_lift_iff {ι} {p : ι → Prop} {s : ι → Set α} {f : Filter α}
    (hf : f.HasBasis p s) {β : ι → Type*} {pg : ∀ i, β i → Prop} {sg : ∀ i, β i → Set γ}
    {g : Set α → Filter γ} (hg : ∀ i, (g <| s i).HasBasis (pg i) (sg i)) (gm : Monotone g)
    {s : Set γ} : s ∈ f.lift g ↔ ∃ i, p i ∧ ∃ x, pg i x ∧ sg i x ⊆ s := by
  refine (mem_biInf_of_directed ?_ ⟨univ, univ_sets _⟩).trans ?_
  · intro t₁ ht₁ t₂ ht₂
    exact ⟨t₁ ∩ t₂, inter_mem ht₁ ht₂, gm inter_subset_left, gm inter_subset_right⟩
  · simp only [← (hg _).mem_iff]
    exact hf.exists_iff fun t₁ t₂ ht H => gm ht H

/-- If `(p : ι → Prop, s : ι → Set α)` is a basis of a filter `f`, `g` is a monotone function
`Set α → Filter γ`, and for each `i`, `(pg : β i → Prop, sg : β i → Set α)` is a basis
of the filter `g (s i)`, then
`(fun (i : ι) (x : β i) ↦ p i ∧ pg i x, fun (i : ι) (x : β i) ↦ sg i x)`
is a basis of the filter `f.lift g`.

This basis is parametrized by `i : ι` and `x : β i`, so in order to formulate this fact using
`has_basis` one has to use `Σ i, β i` as the index type. See also `Filter.HasBasis.mem_lift_iff`
for the corresponding `mem_iff` statement formulated without using a sigma type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lift/Variant4baea103dc8104f416300813c37fa5ec76d5479b06034f444fc8e28c851a7455.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lift/Variant4baea103dc8104f416300813c37fa5ec76d5479b06034f444fc8e28c851a7455.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cce126a3c518a1b0d699208940f4ad202ed5593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
