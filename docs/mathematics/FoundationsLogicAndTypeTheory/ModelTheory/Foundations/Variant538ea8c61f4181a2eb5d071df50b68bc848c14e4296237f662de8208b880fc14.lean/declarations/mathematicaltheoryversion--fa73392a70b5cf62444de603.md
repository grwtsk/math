# MathematicalTheoryVersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47867cdc34db85bcbf9dcabe16d3964c445ef8203ff7e8e374519248307f3e91",
  "kind": "structure",
  "lexical_name": "MathematicalTheoryVersion",
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
  "slug": "mathematicaltheoryversion--fa73392a70b5cf62444de603",
  "source": {
    "blob": "6993a469a8e3a08edcc7daffa51496abf318d034",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 628,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa73392a70b5cf62444de603eeb3138a57322e34b1ea9794c66c1aa2718e450b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47867cdc34db85bcbf9dcabe16d3964c445ef8203ff7e8e374519248307f3e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MathematicalTheoryVersion
    (theory : Theory) (foundation : Foundation) where
  artifact : VersionId
  theoryIdentity : MathematicalTheoryIdentity
  signatureVersion : VersionId
  axiomSetVersion : VersionId
  definitionSetVersion : VersionId
  importedTheoryVersions : List VersionId
  semanticRegime : String
  quantifierProfile : QuantifierProfile
  formalizationArtifactVersion : VersionId
  releaseStatus : TheoryReleaseStatus
  provenance : List VersionId

/-- One proposition-valued assumption in an exact theory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Foundations/Variant538ea8c61f4181a2eb5d071df50b68bc848c14e4296237f662de8208b880fc14.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6993a469a8e3a08edcc7daffa51496abf318d034` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
