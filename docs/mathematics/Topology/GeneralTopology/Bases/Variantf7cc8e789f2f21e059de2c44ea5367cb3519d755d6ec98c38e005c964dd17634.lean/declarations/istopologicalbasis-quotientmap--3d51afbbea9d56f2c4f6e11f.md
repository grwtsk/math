# IsTopologicalBasis.quotientMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ddc7f0b27974f7aa68cec5098b525682b845de82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 882,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a8e00c8-dd84-6dbb-2f65-c1f8803a3f97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab2e2ab8-4729-54b7-1a89-5ab64ec5f39c",
  "kind": "theorem",
  "lexical_name": "IsTopologicalBasis.quotientMap",
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
  "slug": "istopologicalbasis-quotientmap--3d51afbbea9d56f2c4f6e11f",
  "source": {
    "blob": "ddc7f0b27974f7aa68cec5098b525682b845de82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 897,
    "line": 882,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantf7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d51afbbea9d56f2c4f6e11f8d688fafb653fdd3e94fa69927ef77714a175ee4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantf7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab2e2ab8-4729-54b7-1a89-5ab64ec5f39c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 882–897.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsTopologicalBasis.quotientMap {V : Set (Set X)} (hV : IsTopologicalBasis V)
    (h' : QuotientMap π) (h : IsOpenMap π) : IsTopologicalBasis (Set.image π '' V) := by
  apply isTopologicalBasis_of_open_of_nhds
  · rintro - ⟨U, U_in_V, rfl⟩
    apply h U (hV.isOpen U_in_V)
  · intro y U y_in_U U_open
    obtain ⟨x, rfl⟩ := h'.surjective y
    let W := π ⁻¹' U
    have x_in_W : x ∈ W := y_in_U
    have W_open : IsOpen W := U_open.preimage h'.continuous
    obtain ⟨Z, Z_in_V, x_in_Z, Z_in_W⟩ := hV.exists_subset_of_mem_open x_in_W W_open
    have πZ_in_U : π '' Z ⊆ U := (Set.image_subset _ Z_in_W).trans (image_preimage_subset π U)
    exact ⟨π '' Z, ⟨Z, Z_in_V, rfl⟩, ⟨x, x_in_Z, rfl⟩, πZ_in_U⟩
#align topological_space.is_topological_basis.quotient_map TopologicalSpace.IsTopologicalBasis.quotientMap

/-- A second countable space is mapped by an open quotient map to a second countable space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantf7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantf7cc8e789f2f21e059de2c44ea5367cb3519d755d6ec98c38e005c964dd17634.lean#L882).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddc7f0b27974f7aa68cec5098b525682b845de82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
