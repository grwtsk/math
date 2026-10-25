# AssignmentEvidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e02a33347977cbea3a554408e613f3673ab8c10327fca62918da3977624a88c2",
  "kind": "structure",
  "lexical_name": "AssignmentEvidence",
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
  "slug": "assignmentevidence--8f88680f495d1c386904a3d1",
  "source": {
    "blob": "07fb91187aaaf491da640187bfdfb2bba98cdfbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Assignment/Variantd1bce69af32aa7706ad04b9828d773a927c3f92d3bd64b53ebcd99c4a849b32b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f88680f495d1c386904a3d1b082e0cbfa572ce35c7347be596e3ae0cff39413",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Assignment/Variantd1bce69af32aa7706ad04b9828d773a927c3f92d3bd64b53ebcd99c4a849b32b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e02a33347977cbea3a554408e613f3673ab8c10327fca62918da3977624a88c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AssignmentEvidence where
  id : EvidenceId
  classifier : String
  rationale : String
  reviewedDefinitionDigest : Digest
  reviewedBoundaryDigest : Digest
  reviewedAuthorityDigest : Digest
  digest : Digest
  deriving DecidableEq, Inhabited

/-- One entity classification record. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Assignment/Variantd1bce69af32aa7706ad04b9828d773a927c3f92d3bd64b53ebcd99c4a849b32b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Assignment/Variantd1bce69af32aa7706ad04b9828d773a927c3f92d3bd64b53ebcd99c4a849b32b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07fb91187aaaf491da640187bfdfb2bba98cdfbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
