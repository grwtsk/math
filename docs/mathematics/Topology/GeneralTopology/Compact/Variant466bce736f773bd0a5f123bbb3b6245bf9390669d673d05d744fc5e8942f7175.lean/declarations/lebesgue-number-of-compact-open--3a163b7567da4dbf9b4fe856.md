# lebesgue_number_of_compact_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:142e96ca-7a30-051b-5b31-3942ded8d49f",
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
  "slug": "lebesgue-number-of-compact-open--3a163b7567da4dbf9b4fe856",
  "source": {
    "blob": "2ea704eaaf900563c2d15d5eeab3ecd298c90cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant466bce736f773bd0a5f123bbb3b6245bf9390669d673d05d744fc5e8942f7175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a163b7567da4dbf9b4fe856a0c4a7b6eef0dcda2c6eb0f48343f23c80083a56",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant466bce736f773bd0a5f123bbb3b6245bf9390669d673d05d744fc5e8942f7175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:142e96ca-7a30-051b-5b31-3942ded8d49f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lebesgue_number_of_compact_open {K U : Set α} (hK : IsCompact K)
    (hU : IsOpen U) (hKU : K ⊆ U) : ∃ V ∈ 𝓤 α, IsOpen V ∧ ∀ x ∈ K, UniformSpace.ball x V ⊆ U :=
  let ⟨V, ⟨hV, hVo⟩, hVU⟩ :=
    (hK.nhdsSet_basis_uniformity uniformity_hasBasis_open).mem_iff.1 (hU.mem_nhdsSet.2 hKU)
  ⟨V, hV, hVo, iUnion₂_subset_iff.1 hVU⟩


/-- On a compact uniform space, the topology determines the uniform structure, entourages are
exactly the neighborhoods of the diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant466bce736f773bd0a5f123bbb3b6245bf9390669d673d05d744fc5e8942f7175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant466bce736f773bd0a5f123bbb3b6245bf9390669d673d05d744fc5e8942f7175.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ea704eaaf900563c2d15d5eeab3ecd298c90cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
