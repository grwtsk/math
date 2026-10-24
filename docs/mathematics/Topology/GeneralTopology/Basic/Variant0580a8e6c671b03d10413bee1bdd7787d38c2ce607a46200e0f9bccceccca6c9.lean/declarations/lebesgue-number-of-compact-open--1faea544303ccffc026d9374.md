# lebesgue_number_of_compact_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "095842172c30b0f12e6f84aa2a9ef6bac9e1441b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1873,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f697abe0-5845-d5b7-5817-ac6548512dce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b35ecdab-c947-22fd-40e7-cabb9a14b131",
  "kind": "theorem",
  "lexical_name": "lebesgue_number_of_compact_open",
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
  "slug": "lebesgue-number-of-compact-open--1faea544303ccffc026d9374",
  "source": {
    "blob": "095842172c30b0f12e6f84aa2a9ef6bac9e1441b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1914,
    "line": 1873,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1faea544303ccffc026d9374fe8a9911cdbca3547fa0e5c94324ad052f59f8a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b35ecdab-c947-22fd-40e7-cabb9a14b131`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1873–1914.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lebesgue_number_of_compact_open [UniformSpace α] {K U : Set α} (hK : IsCompact K)
    (hU : IsOpen U) (hKU : K ⊆ U) : ∃ V ∈ 𝓤 α, IsOpen V ∧ ∀ x ∈ K, UniformSpace.ball x V ⊆ U := by
  let W : K → Set (α × α) := fun k =>
    Classical.choose <| isOpen_iff_open_ball_subset.mp hU k.1 <| hKU k.2
  have hW : ∀ k, W k ∈ 𝓤 α ∧ IsOpen (W k) ∧ UniformSpace.ball k.1 (W k) ⊆ U := by
    intro k
    obtain ⟨h₁, h₂, h₃⟩ := Classical.choose_spec (isOpen_iff_open_ball_subset.mp hU k.1 (hKU k.2))
    exact ⟨h₁, h₂, h₃⟩
  let c : K → Set α := fun k => UniformSpace.ball k.1 (W k)
  have hc₁ : ∀ k, IsOpen (c k) := fun k => UniformSpace.isOpen_ball k.1 (hW k).2.1
  have hc₂ : K ⊆ ⋃ i, c i := by
    intro k hk
    simp only [mem_iUnion, SetCoe.exists]
    exact ⟨k, hk, UniformSpace.mem_ball_self k (hW ⟨k, hk⟩).1⟩
  have hc₃ : ∀ k, c k ⊆ U := fun k => (hW k).2.2
  obtain ⟨V, hV, hV'⟩ := lebesgue_number_lemma hK hc₁ hc₂
  refine' ⟨interior V, interior_mem_uniformity hV, isOpen_interior, _⟩
  intro k hk
  obtain ⟨k', hk'⟩ := hV' k hk
  exact ((ball_mono interior_subset k).trans hk').trans (hc₃ k')
#align lebesgue_number_of_compact_open lebesgue_number_of_compact_open

/-!
### Expressing continuity properties in uniform spaces

We reformulate the various continuity properties of functions taking values in a uniform space
in terms of the uniformity in the target. Since the same lemmas (essentially with the same names)
also exist for metric spaces and emetric spaces (reformulating things in terms of the distance or
the edistance in the target), we put them in a namespace `Uniform` here.

In the metric and emetric space setting, there are also similar lemmas where one assumes that
both the source and the target are metric spaces, reformulating things in terms of the distance
on both sides. These lemmas are generally written without primes, and the versions where only
the target is a metric space is primed. We follow the same convention here, thus giving lemmas
with primes.
-/


namespace Uniform

variable [UniformSpace α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean#L1873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095842172c30b0f12e6f84aa2a9ef6bac9e1441b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
