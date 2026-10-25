# Profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:807039c0db27f22c46df6c34f5304421245a933009f7857c9683700fe076c43a",
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
  "slug": "profile--9a4da6a855bd4db9353465d9",
  "source": {
    "blob": "63722209dd2abedddbfa645d168eb215cc0c4292",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A4b6ae5366b6356ac/Variant1430af499bf8d0ba17882b7a5f00046925d6a0f9d02ee396223fdacd70f4d02d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a4da6a855bd4db9353465d94d5633e11713d15d48a7bec9d25c54b8ef3f86cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A4b6ae5366b6356ac/Variant1430af499bf8d0ba17882b7a5f00046925d6a0f9d02ee396223fdacd70f4d02d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:807039c0db27f22c46df6c34f5304421245a933009f7857c9683700fe076c43a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–34.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A4b6ae5366b6356ac/Variant1430af499bf8d0ba17882b7a5f00046925d6a0f9d02ee396223fdacd70f4d02d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A4b6ae5366b6356ac/Variant1430af499bf8d0ba17882b7a5f00046925d6a0f9d02ee396223fdacd70f4d02d.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63722209dd2abedddbfa645d168eb215cc0c4292` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
