# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f83cbd0a0da178a791c87fc8f95bf37cf0d22d4aa9cdfca5f9327917def63d5",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--55c7fcb5afbf2cc467b07666",
  "source": {
    "blob": "af387a70441dd06da98b61da72d861179d487979",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 769,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConstructionContracts/Variantfa266f48a8389049ad808cfd71dd4a3fa97981ecdd124690921024fd2d9a6471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55c7fcb5afbf2cc467b07666a6983cbd1dc7b2bbce47245742b262aa7a0338d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConstructionContracts/Variantfa266f48a8389049ad808cfd71dd4a3fa97981ecdd124690921024fd2d9a6471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f83cbd0a0da178a791c87fc8f95bf37cf0d22d4aa9cdfca5f9327917def63d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 769–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (objects : Objects) (records : Files Record) (slots : Slots)
    (recordUnique : unique records) (slotUnique : unique slots)
    (checked : recordsMatch objects records slots = true) :
    (records.map fun row => row.2.bytes).sum = totalBytes (payloadCosts objects slots) :=
  checked_record_bytes_exact objects records slots recordUnique slotUnique checked

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConstructionContracts/Variantfa266f48a8389049ad808cfd71dd4a3fa97981ecdd124690921024fd2d9a6471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConstructionContracts/Variantfa266f48a8389049ad808cfd71dd4a3fa97981ecdd124690921024fd2d9a6471.lean#L769).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af387a70441dd06da98b61da72d861179d487979` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
