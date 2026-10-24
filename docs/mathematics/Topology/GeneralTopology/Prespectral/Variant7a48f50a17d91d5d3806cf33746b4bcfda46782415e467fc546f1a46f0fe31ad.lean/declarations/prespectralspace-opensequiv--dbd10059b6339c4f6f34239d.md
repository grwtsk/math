# PrespectralSpace.opensEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:231588fbed822c804d2fd784b80545ebd763d72a913ffb15f1089d4f01b984ce",
  "kind": "def",
  "lexical_name": "PrespectralSpace.opensEquiv",
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
  "slug": "prespectralspace-opensequiv--dbd10059b6339c4f6f34239d",
  "source": {
    "blob": "3c9d042d7c19f0a706ddb377daed0b9e7cb665fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbd10059b6339c4f6f34239db5f9e7cb648e9138df6ff4bdcaadf9cc68645363",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:231588fbed822c804d2fd784b80545ebd763d72a913ffb15f1089d4f01b984ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PrespectralSpace.opensEquiv [PrespectralSpace X] :
    Opens X ≃o Order.Ideal (CompactOpens X) where
  toFun U := ⟨⟨{ V | (V : Set X) ⊆ U }, fun U₁ U₂ h₁ h₂ ↦ subset_trans (α := Set X) h₁ h₂⟩,
    ⟨⊥, by simp⟩, fun U₁ h₁ U₂ h₂ ↦ ⟨U₁ ⊔ U₂, by aesop, le_sup_left, le_sup_right⟩⟩
  invFun I := ⨆ U ∈ I, U.toOpens
  left_inv U := by
    apply le_antisymm
    · simp only [iSup_le_iff]
      exact fun _ ↦ id
    · intro x hxU
      obtain ⟨V, ⟨h₁, h₂⟩, hxV, hVU⟩ := isTopologicalBasis.exists_subset_of_mem_open hxU U.2
      simp only [Opens.mem_iSup]
      exact ⟨⟨⟨_, h₂⟩, h₁⟩, hVU, hxV⟩
  right_inv I := by
    ext U
    dsimp
    change U.toOpens ≤ _ ↔ _
    refine ⟨fun H ↦ ?_, fun h ↦ le_iSup₂ (f := fun U (h : U ∈ I) ↦ U.toOpens) U h⟩
    simp only [← SetLike.coe_subset_coe, Opens.iSup_mk, Opens.carrier_eq_coe, Opens.coe_mk] at H
    obtain ⟨s, hsI, hs, hU⟩ := U.isCompact.elim_finite_subcover_image (fun U _ ↦ U.2) H
    exact I.lower (a := hs.toFinset.sup fun i ↦ i) (by simpa [← SetLike.coe_subset_coe]) (by simpa)
  map_rel_iff' {U V} := by
    change (∀ (W : CompactOpens X), (W : Set X) ⊆ U → (W : Set X) ⊆ V) ↔ U ≤ V
    refine ⟨?_, fun H W ↦ (le_trans · H)⟩
    intro H x hxU
    obtain ⟨W, ⟨h₁, h₂⟩, hxW, hWU⟩ := isTopologicalBasis.exists_subset_of_mem_open hxU U.2
    exact H ⟨⟨W, h₂⟩, h₁⟩ hWU hxW

open TopologicalSpace Opens in
/-- If `X` has a basis of compact opens and `f : X → S` is open, every
compact open of `S` is the image of a compact open of `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c9d042d7c19f0a706ddb377daed0b9e7cb665fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
