# Sum.instUniformSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5838eba8c2baa33010bab12ee14eff07ccfdd9e8d098a755ba83621aab2a8690",
  "kind": "instance",
  "lexical_name": "Sum.instUniformSpace",
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
  "slug": "sum-instuniformspace--b73bbcdfd544fea8d6db839e",
  "source": {
    "blob": "465181b36d0694eedcd5d526c39adbe802970d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 991,
    "line": 975,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b73bbcdfd544fea8d6db839ef76f6e58744d19b35df2944bb0e64f11f54d3900",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5838eba8c2baa33010bab12ee14eff07ccfdd9e8d098a755ba83621aab2a8690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 975–991.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Sum.instUniformSpace : UniformSpace (α ⊕ β) where
  uniformity := map (fun p : α × α => (inl p.1, inl p.2)) (𝓤 α) ⊔
    map (fun p : β × β => (inr p.1, inr p.2)) (𝓤 β)
  symm := fun _ hs ↦ ⟨symm_le_uniformity hs.1, symm_le_uniformity hs.2⟩
  comp := fun s hs ↦ by
    rcases comp_mem_uniformity_sets hs.1 with ⟨tα, htα, Htα⟩
    rcases comp_mem_uniformity_sets hs.2 with ⟨tβ, htβ, Htβ⟩
    filter_upwards [mem_lift' (union_mem_sup (image_mem_map htα) (image_mem_map htβ))]
    rintro ⟨_, _⟩ ⟨z, ⟨⟨a, b⟩, hab, ⟨⟩⟩ | ⟨⟨a, b⟩, hab, ⟨⟩⟩, ⟨⟨_, c⟩, hbc, ⟨⟩⟩ | ⟨⟨_, c⟩, hbc, ⟨⟩⟩⟩
    exacts [@Htα (_, _) ⟨b, hab, hbc⟩, @Htβ (_, _) ⟨b, hab, hbc⟩]
  nhds_eq_comap_uniformity x := by
    ext
    cases x <;> simp [mem_comap', -mem_comap, nhds_inl, nhds_inr, nhds_eq_comap_uniformity,
      Prod.ext_iff]

/-- The union of an entourage of the diagonal in each set of a disjoint union is again an entourage
of the diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean#L975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465181b36d0694eedcd5d526c39adbe802970d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
