# UniformSpace.Core.sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22fe15144a187ba7bb502cefaa1dca5e14e185c9084432a612142b1e0ad54cec",
  "kind": "def",
  "lexical_name": "UniformSpace.Core.sum",
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
  "slug": "uniformspace-core-sum--896dcb512f16f8dce658710a",
  "source": {
    "blob": "095842172c30b0f12e6f84aa2a9ef6bac9e1441b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1772,
    "line": 1751,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:896dcb512f16f8dce658710a2a6448ba64114ecdf2eb7d8b828e4225ce8599c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22fe15144a187ba7bb502cefaa1dca5e14e185c9084432a612142b1e0ad54cec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1751–1772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UniformSpace.Core.sum : UniformSpace.Core (Sum α β) :=
  UniformSpace.Core.mk'
    (map (fun p : α × α => (inl p.1, inl p.2)) (𝓤 α) ⊔
      map (fun p : β × β => (inr p.1, inr p.2)) (𝓤 β))
    (fun r ⟨H₁, H₂⟩ x => by
      cases x <;> [apply refl_mem_uniformity H₁; apply refl_mem_uniformity H₂])
    (fun r ⟨H₁, H₂⟩ => ⟨symm_le_uniformity H₁, symm_le_uniformity H₂⟩)
    (fun r ⟨Hrα, Hrβ⟩ => by
      rcases comp_mem_uniformity_sets Hrα with ⟨tα, htα, Htα⟩
      rcases comp_mem_uniformity_sets Hrβ with ⟨tβ, htβ, Htβ⟩
      refine' ⟨_, ⟨mem_map_iff_exists_image.2 ⟨tα, htα, subset_union_left _ _⟩,
        mem_map_iff_exists_image.2 ⟨tβ, htβ, subset_union_right _ _⟩⟩, _⟩
      rintro ⟨_, _⟩ ⟨z, ⟨⟨a, b⟩, hab, ⟨⟩⟩ | ⟨⟨a, b⟩, hab, ⟨⟩⟩,
          ⟨⟨_, c⟩, hbc, ⟨⟩⟩ | ⟨⟨_, c⟩, hbc, ⟨⟩⟩⟩
      · have A : (a, c) ∈ tα ○ tα := ⟨b, hab, hbc⟩
        exact Htα A
      · have A : (a, c) ∈ tβ ○ tβ := ⟨b, hab, hbc⟩
        exact Htβ A)
#align uniform_space.core.sum UniformSpace.Core.sum

/-- The union of an entourage of the diagonal in each set of a disjoint union is again an entourage
of the diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean#L1751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095842172c30b0f12e6f84aa2a9ef6bac9e1441b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
