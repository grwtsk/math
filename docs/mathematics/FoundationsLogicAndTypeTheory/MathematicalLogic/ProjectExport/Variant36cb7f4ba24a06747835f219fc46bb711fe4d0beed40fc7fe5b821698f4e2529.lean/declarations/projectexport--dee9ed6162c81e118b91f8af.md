# ProjectExport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2775df7dfb5c8f94ccba39e80039b8ab21c7164afc975ecab7b6a66a100c457",
  "kind": "structure",
  "lexical_name": "ProjectExport",
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
  "slug": "projectexport--dee9ed6162c81e118b91f8af",
  "source": {
    "blob": "688e6c4b8a33c589f9a0ddda63454b4034ea44a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 12,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectExport/Variant36cb7f4ba24a06747835f219fc46bb711fe4d0beed40fc7fe5b821698f4e2529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dee9ed6162c81e118b91f8af25d1038f53fd4eff050301b888497061a9a3c76b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectExport/Variant36cb7f4ba24a06747835f219fc46bb711fe4d0beed40fc7fe5b821698f4e2529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2775df7dfb5c8f94ccba39e80039b8ab21c7164afc975ecab7b6a66a100c457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProjectExport where
  key : ProjectKey
  packageName : String
  publicRoot : String
  leanToolchainDigest : DigestRef
  lakeGraphDigest : DigestRef
  sourceDigest : DigestRef
  compiledEnvironmentDigest : DigestRef
  publicApiDigest : DigestRef
  theoremIndexDigest : DigestRef
  kernelCheckDigest : DigestRef
  unresolvedDigest : DigestRef
  payloadRoot : ObjectRef
  exportDigest : DigestRef
  deriving DecidableEq, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectExport/Variant36cb7f4ba24a06747835f219fc46bb711fe4d0beed40fc7fe5b821698f4e2529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectExport/Variant36cb7f4ba24a06747835f219fc46bb711fe4d0beed40fc7fe5b821698f4e2529.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `688e6c4b8a33c589f9a0ddda63454b4034ea44a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
