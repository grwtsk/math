# printRecursor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:352e387c8d41bf66b54a1611659803a75bc79f9175e921ccf7d8fa664059e32a",
  "kind": "def",
  "lexical_name": "printRecursor",
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
  "slug": "printrecursor--b7c1eca9706e2799f0297b8d",
  "source": {
    "blob": "959bc81feb0c9f003838693ffc787ff3834adb94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant55a91bc520d838922b24d95113791251acf68a9c4239583cce118eeb2bd81ed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7c1eca9706e2799f0297b8da82ae9ae3330d6374804895f0b954859b3800746",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant55a91bc520d838922b24d95113791251acf68a9c4239583cce118eeb2bd81ed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:352e387c8d41bf66b54a1611659803a75bc79f9175e921ccf7d8fa664059e32a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def printRecursor (recInfo : RecursorVal) : CommandElabM Unit := do
  let mut m ← mkHeader "recursor" recInfo.name recInfo.levelParams recInfo.type (if recInfo.isUnsafe then .unsafe else .safe)
  m := m ++ Format.line ++ m!"number of parameters: {recInfo.numParams}"
  m := m ++ Format.line ++ m!"number of indices: {recInfo.numIndices}"
  m := m ++ Format.line ++ m!"number of motives: {recInfo.numMotives}"
  m := m ++ Format.line ++ m!"number of minors: {recInfo.numMinors}"
  if recInfo.k then
    m := m ++ Format.line ++ m!"supports k-like reduction"
  m := m ++ Format.line ++ "rules:"
  for rule in recInfo.rules do
    m := m ++ Format.line ++ m!"for {rule.ctor} ({rule.nfields} fields): {rule.rhs}"
  logInfo m

/--
Computes the origin of a field. Returns its `StructureFieldInfo` at the origin.
Multiple parents could be the origin of a field, but we say the first parent that provides it is the one that determines the origin.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant55a91bc520d838922b24d95113791251acf68a9c4239583cce118eeb2bd81ed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant55a91bc520d838922b24d95113791251acf68a9c4239583cce118eeb2bd81ed1.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959bc81feb0c9f003838693ffc787ff3834adb94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
