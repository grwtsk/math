# printInduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:225443c2ec9473712eca68e4e63d7aa50b8ffa92a421d1eaebca0a3943d65afe",
  "kind": "def",
  "lexical_name": "printInduct",
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
  "slug": "printinduct--d4cb62da0bb75861b9f4e3b6",
  "source": {
    "blob": "8bdbae57a80b5eb963b38beef630040a3f4c28ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4cb62da0bb75861b9f4e3b6c88bc2338268f142b339d09297b581a282b04210",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:225443c2ec9473712eca68e4e63d7aa50b8ffa92a421d1eaebca0a3943d65afe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def printInduct (id : Name) (levelParams : List Name) (numParams : Nat) (type : Expr)
    (ctors : List Name) (isUnsafe : Bool) : CommandElabM Unit := do
  let mut m ← mkHeader "inductive" id levelParams type (if isUnsafe then .unsafe else .safe)
  m := m ++ Format.line ++ "number of parameters: " ++ toString numParams
  m := m ++ Format.line ++ "constructors:"
  for ctor in ctors do
    let cinfo ← getConstInfo ctor
    m := m ++ Format.line ++ ctor ++ " : " ++ cinfo.type
  logInfo m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bdbae57a80b5eb963b38beef630040a3f4c28ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
