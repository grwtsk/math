# ContextEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae508e58ecfb6f061dca6a891cf3c51545829bee4811b6cd0f73b24ab09bea34",
  "kind": "structure",
  "lexical_name": "ContextEnvelope",
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
  "slug": "contextenvelope--9691ad45863b21283c454df6",
  "source": {
    "blob": "f6a212a4149856a46f90e36e0cd5c7522cd7b5d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9691ad45863b21283c454df61fa52cf43b2df351cba313ba38ba72b21a7c4b86",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae508e58ecfb6f061dca6a891cf3c51545829bee4811b6cd0f73b24ab09bea34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContextEnvelope where
  evidenceDigest : String
  authorityDigest : String
  scheduleDigest : String
  viewDigest : String
  capabilityDigest : String
  permissionDigest : String
  privacyDigest : String
  redactionDigest : String
  historyRevision : Nat
  exposeSourceReferences : Bool
  protectedDistinctions : Finset ProtectedDistinction
  deriving DecidableEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3ec83e30e01b7c94e1552e48b668d670360331d3c34c8eb2e1989910e4f31dee.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6a212a4149856a46f90e36e0cd5c7522cd7b5d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
