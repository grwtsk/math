# ne_zero_of_mem_divisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae81687d75b07a3d466a7e4a2a99f705b100627a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 633,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7555124268396deaeb0c2b2764a87d4578820d1becca4597ff48224f5a5817a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efd9706c-1e8b-62d2-9867-d3c59cae6c7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0914325-2c4f-e9f8-40a3-072e8455a83c",
  "kind": "theorem",
  "lexical_name": "ne_zero_of_mem_divisors",
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
  "slug": "ne-zero-of-mem-divisors--5a09d33f12c4ebe47619f830",
  "source": {
    "blob": "ae81687d75b07a3d466a7e4a2a99f705b100627a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 633,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Variante7555124268396deaeb0c2b2764a87d4578820d1becca4597ff48224f5a5817a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a09d33f12c4ebe47619f8306917ab48f3d54ce36eade301afb84ec111a73e16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Variante7555124268396deaeb0c2b2764a87d4578820d1becca4597ff48224f5a5817a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0914325-2c4f-e9f8-40a3-072e8455a83c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ne_zero_of_mem_divisors (h : x ∈ divisors z) : z ≠ 0 := (mem_divisors.mp h).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Variante7555124268396deaeb0c2b2764a87d4578820d1becca4597ff48224f5a5817a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Variante7555124268396deaeb0c2b2764a87d4578820d1becca4597ff48224f5a5817a.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae81687d75b07a3d466a7e4a2a99f705b100627a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
