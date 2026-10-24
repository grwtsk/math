# _root_.Homeomorph.preimageImageRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3541fc4419d173f6c1eb66494cfbf6b93ee91ac544044cd91b939c6d839b0c65",
  "kind": "def",
  "lexical_name": "_root_.Homeomorph.preimageImageRestrict",
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
  "slug": "root-homeomorph-preimageimagerestrict--fd948177c250aaccaf9c5d92",
  "source": {
    "blob": "4a2f8db97317b60738697d767e025ac4aa411474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd948177c250aaccaf9c5d928000720391f0b41f8cc307a18bf28afa761d90ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3541fc4419d173f6c1eb66494cfbf6b93ee91ac544044cd91b939c6d839b0c65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Homeomorph.preimageImageRestrict (α : ι → Type*) [∀ i, TopologicalSpace (α i)]
    (S : Set ι) (s : Set (Π j, α j)) :
    Sᶜ.domRestrict ⁻¹' Sᶜ.domRestrict '' s ≃ₜ Sᶜ.domRestrict '' s × (Π i : S, α i) where
  toFun x := ⟨⟨Sᶜ.domRestrict x, x.2⟩, fun i ↦ (x : Π j, α j) i⟩
  invFun p := ⟨reorderRestrictProd S s p, reorderRestrictProd_mem_preimage_image_restrict p⟩
  left_inv x := by ext; simp
  right_inv p := by ext <;> simp
  continuous_toFun := by
    refine (Continuous.subtype_mk (by fun_prop) _).prodMk ?_
    rw [continuous_pi_iff]
    exact fun _ ↦ (continuous_apply _).comp continuous_subtype_val
  continuous_invFun := continuous_reorderRestrictProd.subtype_mk _

/-- The image by `preimageImageRestrict α S s` of `s` seen as a set of
`Sᶜ.domRestrict ⁻¹' Sᶜ.domRestrict '' s` is a set of
`Sᶜ.domRestrict '' s × (Π i : S, α i)`, and the image of that set by `Prod.snd` is
`S.domRestrict '' s`.

Used in `IsCompact.isClosed_image_restrict` to prove that the restriction of a compact closed set
in a product space to a set of coordinates is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsClosedRestrict/Variantafaa60afd619831e793f0b319ae079407410341c9f6621dc6e4bfaddc8a76531.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a2f8db97317b60738697d767e025ac4aa411474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
