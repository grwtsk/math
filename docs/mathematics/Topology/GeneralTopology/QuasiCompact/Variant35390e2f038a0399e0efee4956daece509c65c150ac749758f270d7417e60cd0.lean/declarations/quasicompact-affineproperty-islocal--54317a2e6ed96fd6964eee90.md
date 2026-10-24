# QuasiCompact.affineProperty_isLocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e831017f254a9020ca5d9d84886c006d9492e1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5469f517-285d-9255-8382-784c13af15e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:966fdec0-cfeb-6608-0aa1-56ac7e24c2a2",
  "kind": "theorem",
  "lexical_name": "QuasiCompact.affineProperty_isLocal",
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
  "slug": "quasicompact-affineproperty-islocal--54317a2e6ed96fd6964eee90",
  "source": {
    "blob": "6e831017f254a9020ca5d9d84886c006d9492e1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54317a2e6ed96fd6964eee90909381d91c196be92f1142dbe6778b6b632c4ef8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:966fdec0-cfeb-6608-0aa1-56ac7e24c2a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuasiCompact.affineProperty_isLocal : (QuasiCompact.affineProperty : _).IsLocal := by
  constructor
  · apply AffineTargetMorphismProperty.respectsIso_mk <;> rintro X Y Z e _ _ H
    exacts [@Homeomorph.compactSpace _ _ _ _ H (TopCat.homeoOfIso (asIso e.inv.1.base)), H]
  · introv H
    dsimp [affineProperty] at H ⊢
    change CompactSpace ((Opens.map f.val.base).obj (Y.basicOpen r))
    rw [Scheme.preimage_basicOpen f r]
    erw [← isCompact_iff_compactSpace]
    rw [← isCompact_univ_iff] at H
    apply isCompact_basicOpen
    exact H
  · rintro X Y H f S hS hS'
    rw [← IsAffineOpen.basicOpen_union_eq_self_iff] at hS
    delta QuasiCompact.affineProperty
    rw [← isCompact_univ_iff]
    change IsCompact ((Opens.map f.val.base).obj ⊤).1
    rw [← hS]
    dsimp [Opens.map]
    simp only [Opens.iSup_mk, Opens.carrier_eq_coe, Opens.coe_mk, Set.preimage_iUnion]
    exacts [isCompact_iUnion fun i => isCompact_iff_compactSpace.mpr (hS' i),
      topIsAffineOpen _]
#align algebraic_geometry.quasi_compact.affine_property_is_local AlgebraicGeometry.QuasiCompact.affineProperty_isLocal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e831017f254a9020ca5d9d84886c006d9492e1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
