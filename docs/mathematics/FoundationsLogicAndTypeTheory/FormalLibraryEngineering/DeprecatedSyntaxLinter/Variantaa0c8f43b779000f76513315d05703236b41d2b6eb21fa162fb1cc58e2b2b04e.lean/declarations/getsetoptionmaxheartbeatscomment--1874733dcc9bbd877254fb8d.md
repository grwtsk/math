# getSetOptionMaxHeartbeatsComment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42d33aa441bfb1a19142470d9f6a80b698423bb6f60c9de802577c9fd624789a",
  "kind": "def",
  "lexical_name": "getSetOptionMaxHeartbeatsComment",
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
  "slug": "getsetoptionmaxheartbeatscomment--1874733dcc9bbd877254fb8d",
  "source": {
    "blob": "0cd5a6c2eb96a16f94867ced26aaec79b5bafb73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1874733dcc9bbd877254fb8da695b5b1f226f652be7d3203d657eeab0f4dfa93",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42d33aa441bfb1a19142470d9f6a80b698423bb6f60c9de802577c9fd624789a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getSetOptionMaxHeartbeatsComment : Syntax → Option (Name × Nat × Substring)
  | stx@`(command|set_option $mh $n:num in $_) =>
    let opt := mh.getId
    if !opt.components.contains `maxHeartbeats then
      none
    else
      if let some inAtom := stx.find? (·.getAtomVal == "in") then
        inAtom.getTrailing?.map (opt, n.getNat, ·)
      else
        -- This branch should be unreachable.
        some default
  | _ => none

/-- `getDeprecatedSyntax t` returns all usages of deprecated syntax in the input syntax `t`. -/
partial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedSyntaxLinter/Variantaa0c8f43b779000f76513315d05703236b41d2b6eb21fa162fb1cc58e2b2b04e.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cd5a6c2eb96a16f94867ced26aaec79b5bafb73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
