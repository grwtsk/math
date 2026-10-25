# SourceAstLevel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:375323717c0e5a3e0e9a59ee70645d0e791680098f9a0d1b3f5f9a76e562b64c",
  "kind": "inductive",
  "lexical_name": "SourceAstLevel",
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
  "slug": "sourceastlevel--ae2ee949b11fdab307b79729",
  "source": {
    "blob": "e9dcc4cf3f35b3f4e98b061221d98fba957cb97a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 8,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f4173744f776e6572736869702e6c65616e/Variant2d3c1613ec68dd1aa25a7842e532a5a0506cd8ea7f155da76ddc75ffae7b7ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae2ee949b11fdab307b79729b0a6b88b4567daea31ec583cfcac61bf8af9c71f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f4173744f776e6572736869702e6c65616e/Variant2d3c1613ec68dd1aa25a7842e532a5a0506cd8ea7f155da76ddc75ffae7b7ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:375323717c0e5a3e0e9a59ee70645d0e791680098f9a0d1b3f5f9a76e562b64c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive SourceAstLevel where
  | repositoryRoot
  | sourceFolder
  | sourceFile
  | declaration
  | astLeaf
deriving DecidableEq, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f4173744f776e6572736869702e6c65616e/Variant2d3c1613ec68dd1aa25a7842e532a5a0506cd8ea7f155da76ddc75ffae7b7ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f4173744f776e6572736869702e6c65616e/Variant2d3c1613ec68dd1aa25a7842e532a5a0506cd8ea7f155da76ddc75ffae7b7ff7.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9dcc4cf3f35b3f4e98b061221d98fba957cb97a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
