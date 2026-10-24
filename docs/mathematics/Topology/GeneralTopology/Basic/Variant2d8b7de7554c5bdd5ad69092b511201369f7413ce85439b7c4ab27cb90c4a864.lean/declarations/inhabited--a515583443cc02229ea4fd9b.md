# inhabited

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec8f7b20e301b78d71ad7160779ba1fbb216d698913aa5c5632a24343ca07a91",
  "kind": "instance",
  "lexical_name": "inhabited",
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
  "slug": "inhabited--a515583443cc02229ea4fd9b",
  "source": {
    "blob": "b381e3e7d7e0ce805971183c733e534f797f5311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 384,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a515583443cc02229ea4fd9b008ee7b68b86087cbb4db717c7f95e2df2d28593",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec8f7b20e301b78d71ad7160779ba1fbb216d698913aa5c5632a24343ca07a91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance inhabited {R : Type u} [Ring R] : Inhabited (RingTopology R) :=
  ⟨let _ : TopologicalSpace R := ⊤;
    { continuous_add := continuous_top
      continuous_mul := continuous_top
      continuous_neg := continuous_top }⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2d8b7de7554c5bdd5ad69092b511201369f7413ce85439b7c4ab27cb90c4a864.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b381e3e7d7e0ce805971183c733e534f797f5311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
