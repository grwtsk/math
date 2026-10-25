# ensureOutputType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f39c4f2bfbfcb7b86e5d57aea2c7437104266e899e23af240b9eca6ef2070f5e",
  "kind": "def",
  "lexical_name": "ensureOutputType",
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
  "slug": "ensureoutputtype--b7dd1587b9ef354cc3f435a9",
  "source": {
    "blob": "ab27c7bc76c79d493606228a4548f47711120e34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant69dd22629c718c46f5026ac5166578b1a1a567793a3f298cb3a0d83eea0a1791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7dd1587b9ef354cc3f435a9aa94fb1eac70107d4e3a301ba53c7829d63596dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant69dd22629c718c46f5026ac5166578b1a1a567793a3f298cb3a0d83eea0a1791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f39c4f2bfbfcb7b86e5d57aea2c7437104266e899e23af240b9eca6ef2070f5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ensureOutputType (type expectedType : IType) : MetaM Unit := do
  unless ← pureIsDefEq type.elemType expectedType.elemType do
    throwError "Inclusion has expression type {type.elemType}, expected {expectedType.elemType}"
  unless ← pureIsDefEq type.setType expectedType.setType do
    throwError "Inclusion has set type {type.setType}, expected {expectedType.setType}"
  unless ← pureIsDefEq type.toSetInst expectedType.toSetInst do
    throwError "Inclusion uses an unexpected `ToSet` instance"

/-- Construct a closed inclusion body for an expression argument of a hypothesis rule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant69dd22629c718c46f5026ac5166578b1a1a567793a3f298cb3a0d83eea0a1791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant69dd22629c718c46f5026ac5166578b1a1a567793a3f298cb3a0d83eea0a1791.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab27c7bc76c79d493606228a4548f47711120e34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
