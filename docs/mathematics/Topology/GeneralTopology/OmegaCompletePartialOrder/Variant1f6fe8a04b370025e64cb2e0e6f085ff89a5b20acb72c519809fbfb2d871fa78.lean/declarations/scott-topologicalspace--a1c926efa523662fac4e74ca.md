# Scott.topologicalSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbdc0e7b9cf571e2461d48efe7f76797bbf309f412e0fd3b83df56f2630de607",
  "kind": "instance",
  "lexical_name": "Scott.topologicalSpace",
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
  "slug": "scott-topologicalspace--a1c926efa523662fac4e74ca",
  "source": {
    "blob": "9360ba2bbc3cc38d043701fbb960249ebefea568",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1c926efa523662fac4e74ca128da575279372e21da3320be434ee9131d35d4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbdc0e7b9cf571e2461d48efe7f76797bbf309f412e0fd3b83df56f2630de607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Scott.topologicalSpace (α : Type u) [OmegaCompletePartialOrder α] :
    TopologicalSpace (Scott α) where
  IsOpen := Scott.IsOpen α
  isOpen_univ := Scott.isOpen_univ α
  isOpen_inter := Scott.IsOpen.inter α
  isOpen_sUnion := Scott.isOpen_sUnion α

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant1f6fe8a04b370025e64cb2e0e6f085ff89a5b20acb72c519809fbfb2d871fa78.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9360ba2bbc3cc38d043701fbb960249ebefea568` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
