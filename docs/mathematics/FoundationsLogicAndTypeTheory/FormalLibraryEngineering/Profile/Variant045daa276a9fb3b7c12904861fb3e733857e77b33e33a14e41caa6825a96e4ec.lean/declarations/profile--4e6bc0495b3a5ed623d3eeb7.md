# Profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4de0a8666fadfaa150f7b53a7503ffac1fb47d747b5e1e59a756f9f8eeed5b73",
  "kind": "structure",
  "lexical_name": "Profile",
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
  "slug": "profile--4e6bc0495b3a5ed623d3eeb7",
  "source": {
    "blob": "da76c273b5723b2845f02e063bf933352fa65a1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profile/Variant045daa276a9fb3b7c12904861fb3e733857e77b33e33a14e41caa6825a96e4ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e6bc0495b3a5ed623d3eeb7615e07d2826cc758c52283541307861803323998",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profile/Variant045daa276a9fb3b7c12904861fb3e733857e77b33e33a14e41caa6825a96e4ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4de0a8666fadfaa150f7b53a7503ffac1fb47d747b5e1e59a756f9f8eeed5b73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Profile where
  id : RefactorProfileId
  implementationPolicy : ImplementationPolicy := .exact
  preservePublicNames : Bool := true
  preserveStatements : Bool := true
  preserveTrustClosures : Bool := true
  preserveSafety : Bool := true
  preserveProofText : Bool := true
  learnedEvidenceEnabled : Bool := false
  requireCleanTree : Bool := true
  profileDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Refactor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profile/Variant045daa276a9fb3b7c12904861fb3e733857e77b33e33a14e41caa6825a96e4ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profile/Variant045daa276a9fb3b7c12904861fb3e733857e77b33e33a14e41caa6825a96e4ec.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da76c273b5723b2845f02e063bf933352fa65a1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
