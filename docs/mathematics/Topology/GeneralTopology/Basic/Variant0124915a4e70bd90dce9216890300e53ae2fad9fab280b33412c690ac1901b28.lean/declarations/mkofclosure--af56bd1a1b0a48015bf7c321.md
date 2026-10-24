# mkOfClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66682c3d3edc4515c0a6bfb437be643fec393fabc37a6149f8c2ea4bb6f0dc37",
  "kind": "def",
  "lexical_name": "mkOfClosure",
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
  "slug": "mkofclosure--af56bd1a1b0a48015bf7c321",
  "source": {
    "blob": "f939f7ba65de37bf6f597e3961e24e97283a5401",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af56bd1a1b0a48015bf7c3214b08079d47c03420ce67f9ead48d5ee32699df4d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66682c3d3edc4515c0a6bfb437be643fec393fabc37a6149f8c2ea4bb6f0dc37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def mkOfClosure (s : Set (Set α)) (hs : (generate s).sets = s) : Filter α where
  sets := s
  univ_sets := hs ▸ univ_mem
  sets_of_superset := hs ▸ mem_of_superset
  inter_sets := hs ▸ inter_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f939f7ba65de37bf6f597e3961e24e97283a5401` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
