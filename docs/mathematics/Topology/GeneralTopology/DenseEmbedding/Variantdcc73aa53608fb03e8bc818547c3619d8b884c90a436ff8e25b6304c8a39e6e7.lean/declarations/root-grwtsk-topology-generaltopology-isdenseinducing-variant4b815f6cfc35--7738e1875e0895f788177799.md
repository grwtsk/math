# _root_.GRWTSK.Topology.GeneralTopology.IsDenseInducing.Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.Dense.isDenseInducing_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09172a1c-ce2b-3b2f-cea0-669823afb063",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsDenseInducing.Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.Dense.isDenseInducing_val",
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
  "slug": "root-grwtsk-topology-generaltopology-isdenseinducing-variant4b815f6cfc35--7738e1875e0895f788177799",
  "source": {
    "blob": "70612eb0eb555b17815e744a679f4741e07d9717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7738e1875e0895f788177799422231271019fd18b4e6d7b93ce294646bde47c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09172a1c-ce2b-3b2f-cea0-669823afb063`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsDenseInducing.Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.Dense.isDenseInducing_val {s : Set α} (hs : Dense s) :
    IsDenseInducing (@Subtype.val α s) := ⟨IsInducing.subtypeVal, hs.denseRange_val⟩

variable {i : α → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70612eb0eb555b17815e744a679f4741e07d9717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
