# lebesgue_number_of_compact_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9254b406-98a1-b6a1-219e-17518ba54fb4",
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
  "slug": "lebesgue-number-of-compact-open--781038ae9883fc042888ff50",
  "source": {
    "blob": "0fb08d4c0bcb32094ba5960b19ca36ca0e5e0465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1922,
    "line": 1881,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb3a81c5c598649e8f2090d130830370413c9a25ce99740cdce7c29440ef2bc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:781038ae9883fc042888ff5033112adb9fbe35f229254b24a4ef4fcc87c59f20",
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

Occurrence: `result:9254b406-98a1-b6a1-219e-17518ba54fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1881–1922.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb3a81c5c598649e8f2090d130830370413c9a25ce99740cdce7c29440ef2bc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb3a81c5c598649e8f2090d130830370413c9a25ce99740cdce7c29440ef2bc16.lean#L1881).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb08d4c0bcb32094ba5960b19ca36ca0e5e0465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
