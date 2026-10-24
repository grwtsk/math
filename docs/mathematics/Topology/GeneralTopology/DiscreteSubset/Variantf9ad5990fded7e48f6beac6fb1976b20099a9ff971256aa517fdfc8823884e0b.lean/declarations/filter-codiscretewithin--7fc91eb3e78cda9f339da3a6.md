# Filter.codiscreteWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73ca6736bd3e16d32ea02e68ad8cc2f49348034f2371931eeff566b964e50e18",
  "kind": "def",
  "lexical_name": "Filter.codiscreteWithin",
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
  "slug": "filter-codiscretewithin--7fc91eb3e78cda9f339da3a6",
  "source": {
    "blob": "519b71a188b964b6240c09241cd1d599fa5803ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fc91eb3e78cda9f339da3a6dbd1d0b517cfbba55430b5115ceaecaa98664e61",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73ca6736bd3e16d32ea02e68ad8cc2f49348034f2371931eeff566b964e50e18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Filter.codiscreteWithin (S : Set X) : Filter X := ⨆ x ∈ S, 𝓝[S \ {x}] x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519b71a188b964b6240c09241cd1d599fa5803ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
