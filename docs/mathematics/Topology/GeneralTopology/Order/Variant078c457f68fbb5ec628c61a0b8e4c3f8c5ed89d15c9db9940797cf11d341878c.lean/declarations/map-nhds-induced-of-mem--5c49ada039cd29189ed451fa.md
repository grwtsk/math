# map_nhds_induced_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad625311-bbb6-c872-ccdc-4a76e5e66fcf",
  "kind": "theorem",
  "lexical_name": "map_nhds_induced_of_mem",
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
  "slug": "map-nhds-induced-of-mem--5c49ada039cd29189ed451fa",
  "source": {
    "blob": "136aa517e684d22a8f9f80eb74e71f4f42251704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 905,
    "line": 902,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant078c457f68fbb5ec628c61a0b8e4c3f8c5ed89d15c9db9940797cf11d341878c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c49ada039cd29189ed451fa6ba3da086765eefde49cf503f58a3718139b44b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant078c457f68fbb5ec628c61a0b8e4c3f8c5ed89d15c9db9940797cf11d341878c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad625311-bbb6-c872-ccdc-4a76e5e66fcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 902–905.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_nhds_induced_of_mem {a : α} (h : range f ∈ 𝓝 (f a)) :
    map f (@nhds α (induced f t) a) = 𝓝 (f a) := by rw [nhds_induced, Filter.map_comap_of_mem h]
#align map_nhds_induced_of_mem map_nhds_induced_of_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant078c457f68fbb5ec628c61a0b8e4c3f8c5ed89d15c9db9940797cf11d341878c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant078c457f68fbb5ec628c61a0b8e4c3f8c5ed89d15c9db9940797cf11d341878c.lean#L902).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `136aa517e684d22a8f9f80eb74e71f4f42251704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
