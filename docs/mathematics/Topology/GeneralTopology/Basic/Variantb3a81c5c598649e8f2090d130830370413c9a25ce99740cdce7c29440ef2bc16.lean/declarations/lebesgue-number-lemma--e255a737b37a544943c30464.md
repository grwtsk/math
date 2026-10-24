# lebesgue_number_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1955de42-2b2b-7509-4522-dd1352aead75",
  "kind": "theorem",
  "lexical_name": "lebesgue_number_lemma",
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
  "slug": "lebesgue-number-lemma--e255a737b37a544943c30464",
  "source": {
    "blob": "0fb08d4c0bcb32094ba5960b19ca36ca0e5e0465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1871,
    "line": 1845,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb3a81c5c598649e8f2090d130830370413c9a25ce99740cdce7c29440ef2bc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e255a737b37a544943c304642c697a0620da9a279b0ee6c1f8beae60798d1ad0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb3a81c5c598649e8f2090d130830370413c9a25ce99740cdce7c29440ef2bc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1955de42-2b2b-7509-4522-dd1352aead75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1845–1871.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lebesgue_number_lemma {α : Type u} [UniformSpace α] {s : Set α} {ι} {c : ι → Set α}
    (hs : IsCompact s) (hc₁ : ∀ i, IsOpen (c i)) (hc₂ : s ⊆ ⋃ i, c i) :
    ∃ n ∈ 𝓤 α, ∀ x ∈ s, ∃ i, { y | (x, y) ∈ n } ⊆ c i := by
  let u n := { x | ∃ i, ∃ m ∈ 𝓤 α, { y | (x, y) ∈ m ○ n } ⊆ c i }
  have hu₁ : ∀ n ∈ 𝓤 α, IsOpen (u n) := by
    refine' fun n _ => isOpen_uniformity.2 _
    rintro x ⟨i, m, hm, h⟩
    rcases comp_mem_uniformity_sets hm with ⟨m', hm', mm'⟩
    apply (𝓤 α).sets_of_superset hm'
    rintro ⟨x, y⟩ hp rfl
    refine' ⟨i, m', hm', fun z hz => h (monotone_id.compRel monotone_const mm' _)⟩
    dsimp [-mem_compRel] at hz ⊢
    rw [compRel_assoc]
    exact ⟨y, hp, hz⟩
  have hu₂ : s ⊆ ⋃ n ∈ 𝓤 α, u n := fun x hx => by
    rcases mem_iUnion.1 (hc₂ hx) with ⟨i, h⟩
    rcases comp_mem_uniformity_sets (isOpen_uniformity.1 (hc₁ i) x h) with ⟨m', hm', mm'⟩
    exact mem_biUnion hm' ⟨i, _, hm', fun y hy => mm' hy rfl⟩
  rcases hs.elim_finite_subcover_image hu₁ hu₂ with ⟨b, bu, b_fin, b_cover⟩
  refine' ⟨_, (biInter_mem b_fin).2 bu, fun x hx => _⟩
  rcases mem_iUnion₂.1 (b_cover hx) with ⟨n, bn, i, m, hm, h⟩
  refine' ⟨i, fun y hy => h _⟩
  exact prod_mk_mem_compRel (refl_mem_uniformity hm) (biInter_subset_of_mem bn hy)
#align lebesgue_number_lemma lebesgue_number_lemma

/-- Let `c : Set (Set α)` be an open cover of a compact set `s`. Then there exists an entourage
`n` such that for each `x ∈ s` its `n`-neighborhood is contained in some `t ∈ c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb3a81c5c598649e8f2090d130830370413c9a25ce99740cdce7c29440ef2bc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb3a81c5c598649e8f2090d130830370413c9a25ce99740cdce7c29440ef2bc16.lean#L1845).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb08d4c0bcb32094ba5960b19ca36ca0e5e0465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
