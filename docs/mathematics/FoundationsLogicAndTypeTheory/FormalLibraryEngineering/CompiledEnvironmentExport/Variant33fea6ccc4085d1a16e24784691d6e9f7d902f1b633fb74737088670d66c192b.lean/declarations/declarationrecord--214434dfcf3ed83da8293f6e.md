# declarationRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ad7197d2a8c12acea25808c4cc50997350535f1d6adf13e0bd8aba5a763f2bb",
  "kind": "def",
  "lexical_name": "declarationRecord",
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
  "slug": "declarationrecord--214434dfcf3ed83da8293f6e",
  "source": {
    "blob": "ed856d9e57224267cf6bd9a76850ef2c9d3bb35c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant33fea6ccc4085d1a16e24784691d6e9f7d902f1b633fb74737088670d66c192b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:214434dfcf3ed83da8293f6e32b4a56b2b51a3406c1bf83547b93ec1d79e1f78",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant33fea6ccc4085d1a16e24784691d6e9f7d902f1b633fb74737088670d66c192b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ad7197d2a8c12acea25808c4cc50997350535f1d6adf13e0bd8aba5a763f2bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def declarationRecord
    (env : Environment) (info : ConstantInfo) : IO DeclarationRecord := do
  let name := info.name
  return {
    name := name.toString
    kind := constantKind info
    isPrivate := isPrivateName name
    isInternalDetail := name.isInternalDetail
    typeConstants := distinctSortedStrings (info.type.getUsedConstants.map Name.toString)
    normalizedType := ← normalizedType env info
    reducibleType := ← reducibleType env info
    observedAxioms := ← observedAxioms env name
    checkerVersion := Lean.versionString
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant33fea6ccc4085d1a16e24784691d6e9f7d902f1b633fb74737088670d66c192b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompiledEnvironmentExport/Variant33fea6ccc4085d1a16e24784691d6e9f7d902f1b633fb74737088670d66c192b.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed856d9e57224267cf6bd9a76850ef2c9d3bb35c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
