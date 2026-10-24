# nhds_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1002e410-11b3-096b-d178-56eeff984ca1",
  "kind": "theorem",
  "lexical_name": "nhds_eq",
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
  "slug": "nhds-eq--a8bc8b32ca3f9ef6a169ad95",
  "source": {
    "blob": "df1e7928459128be046dbb8815fbc0b832a5f4dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variantcadfb4d03b61432d1c740e6962a8c7de2fe66dc42fb769de8a55ca5e826fa8ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8bc8b32ca3f9ef6a169ad9518e3c4efb6e2593f6092822e04f40ee7aaad0b4e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variantcadfb4d03b61432d1c740e6962a8c7de2fe66dc42fb769de8a55ca5e826fa8ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1002e410-11b3-096b-d178-56eeff984ca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_eq (x : G) : 𝓝 (x : G ⧸ N) = Filter.map (↑) (𝓝 x) :=
  (isOpenQuotientMap_mk.map_nhds_eq _).symm

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variantcadfb4d03b61432d1c740e6962a8c7de2fe66dc42fb769de8a55ca5e826fa8ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variantcadfb4d03b61432d1c740e6962a8c7de2fe66dc42fb769de8a55ca5e826fa8ec.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df1e7928459128be046dbb8815fbc0b832a5f4dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
