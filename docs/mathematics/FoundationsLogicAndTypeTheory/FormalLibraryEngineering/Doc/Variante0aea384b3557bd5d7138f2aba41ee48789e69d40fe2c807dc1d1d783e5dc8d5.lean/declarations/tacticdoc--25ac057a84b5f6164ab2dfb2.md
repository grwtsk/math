# TacticDoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3d8da8df508422def987f90615fd44b700f3b4a0bc721bfae188ab09aca866f",
  "kind": "structure",
  "lexical_name": "TacticDoc",
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
  "slug": "tacticdoc--25ac057a84b5f6164ab2dfb2",
  "source": {
    "blob": "3befa1d468facd100bcc69dfb7d1edc7c57ed60c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variante0aea384b3557bd5d7138f2aba41ee48789e69d40fe2c807dc1d1d783e5dc8d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25ac057a84b5f6164ab2dfb275913dd83066aa2b1015dfb9642ae5ac52728f74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variante0aea384b3557bd5d7138f2aba41ee48789e69d40fe2c807dc1d1d783e5dc8d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3d8da8df508422def987f90615fd44b700f3b4a0bc721bfae188ab09aca866f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TacticDoc where
  /-- The name of the canonical parser for the tactic -/
  internalName : Name
  /-- The user-facing name to display (typically the first keyword token) -/
  userName : String
  /-- The tags that have been applied to the tactic -/
  tags : NameSet
  /-- The docstring for the tactic -/
  docString : Option String
  /-- Any docstring extensions that have been specified -/
  extensionDocs : Array String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variante0aea384b3557bd5d7138f2aba41ee48789e69d40fe2c807dc1d1d783e5dc8d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variante0aea384b3557bd5d7138f2aba41ee48789e69d40fe2c807dc1d1d783e5dc8d5.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3befa1d468facd100bcc69dfb7d1edc7c57ed60c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
