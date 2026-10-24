# induced_generateFrom_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "987652d85471476cee875bf94b5a36143a178e1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 580,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cf43af2-e015-c3dd-6bfd-a61e74a6c992",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f09c77de-3451-eb80-41c8-e6f02356acc7",
  "kind": "theorem",
  "lexical_name": "induced_generateFrom_eq",
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
  "slug": "induced-generatefrom-eq--32b8ccf1f2f90e2e934f854b",
  "source": {
    "blob": "987652d85471476cee875bf94b5a36143a178e1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 580,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32b8ccf1f2f90e2e934f854b88f3a647f6638a9fc3179dbb7e89a1ffa5ae1f68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f09c77de-3451-eb80-41c8-e6f02356acc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 580–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induced_generateFrom_eq {α β} {b : Set (Set β)} {f : α → β} :
    (generateFrom b).induced f = generateFrom (preimage f '' b) :=
  le_antisymm (le_generateFrom <| ball_image_iff.2 fun s hs => ⟨s, GenerateOpen.basic _ hs, rfl⟩)
    (coinduced_le_iff_le_induced.1 <| le_generateFrom fun _s hs => .basic _ (mem_image_of_mem _ hs))
#align induced_generate_from_eq induced_generateFrom_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean#L580).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987652d85471476cee875bf94b5a36143a178e1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
