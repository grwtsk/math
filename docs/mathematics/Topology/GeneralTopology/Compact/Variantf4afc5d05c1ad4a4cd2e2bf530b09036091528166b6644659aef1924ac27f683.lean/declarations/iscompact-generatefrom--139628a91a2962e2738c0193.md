# isCompact_generateFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0527cbe6-41ef-592d-77eb-68322dabb085",
  "kind": "theorem",
  "lexical_name": "isCompact_generateFrom",
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
  "slug": "iscompact-generatefrom--139628a91a2962e2738c0193",
  "source": {
    "blob": "50faf667b485e24757b73ff5809b3fb7d2f4a5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 522,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:139628a91a2962e2738c019377098b5307a67bacb01878cb5d52f151f0ed6137",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0527cbe6-41ef-592d-77eb-68322dabb085`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_generateFrom [T : TopologicalSpace X]
    {S : Set (Set X)} (hTS : T = generateFrom S) {s : Set X}
    (h : ∀ P ⊆ S, s ⊆ ⋃₀ P → ∃ Q ⊆ P, Q.Finite ∧ s ⊆ ⋃₀ Q) :
    IsCompact s := by
  rw [isCompact_iff_ultrafilter_le_nhds', hTS]
  intro F hsF
  by_contra hF
  have hSF : ∀ x ∈ s, ∃ t, x ∈ t ∧ t ∈ S ∧ t ∉ F := by simpa [nhds_generateFrom] using hF
  choose! U hxU hSU hUF using hSF
  obtain ⟨Q, hQU, hQ, hsQ⟩ := h (U '' s) (by simpa [Set.subset_def])
    (fun x hx ↦ Set.mem_sUnion_of_mem (hxU _ hx) (by aesop))
  have : ∀ s ∈ Q, s ∉ F := fun s hsQ ↦ (hQU hsQ).choose_spec.2 ▸ hUF _ (hQU hsQ).choose_spec.1
  have hQF : ⋂₀ (compl '' Q) ∈ F.sets := by simpa [Filter.biInter_mem hQ, F.compl_mem_iff_notMem]
  have : ⋃₀ Q ∉ F := by
    simpa [-Set.sInter_image, ← Set.compl_sUnion, hsQ, F.compl_mem_iff_notMem] using hQF
  exact this (F.mem_of_superset hsF hsQ)

namespace Filter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50faf667b485e24757b73ff5809b3fb7d2f4a5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
