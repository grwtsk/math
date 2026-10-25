# HomeCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07c7bc7aae8ee4689c7daff403b8255354e3e227ac8246ebb23b748debcec0a5",
  "kind": "structure",
  "lexical_name": "HomeCandidate",
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
  "slug": "homecandidate--f3f8bce1b05fadde00270019",
  "source": {
    "blob": "848cf882ca6ae135d3d0820b4f67c2985c74fa0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/AFc702078bf5578a5/Varianta0ade07d1f781d1f6ef6a97b4103a6a16f3a718373810560f55a183f76de9be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3f8bce1b05fadde00270019073999aea1d25d20c7e609cb8ebe38924d40e332",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/AFc702078bf5578a5/Varianta0ade07d1f781d1f6ef6a97b4103a6a16f3a718373810560f55a183f76de9be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07c7bc7aae8ee4689c7daff403b8255354e3e227ac8246ebb23b748debcec0a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HomeCandidate where
  conceptId : ConceptId
  domain : DomainPath
  score : ℝ
  kernelId : StableId
  evidence : Finset StableId
  ambiguities : Finset Nonclaim
  authority : HomeCandidateAuthority := .navigationOnly

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/AFc702078bf5578a5/Varianta0ade07d1f781d1f6ef6a97b4103a6a16f3a718373810560f55a183f76de9be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/AFc702078bf5578a5/Varianta0ade07d1f781d1f6ef6a97b4103a6a16f3a718373810560f55a183f76de9be0.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `848cf882ca6ae135d3d0820b4f67c2985c74fa0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
