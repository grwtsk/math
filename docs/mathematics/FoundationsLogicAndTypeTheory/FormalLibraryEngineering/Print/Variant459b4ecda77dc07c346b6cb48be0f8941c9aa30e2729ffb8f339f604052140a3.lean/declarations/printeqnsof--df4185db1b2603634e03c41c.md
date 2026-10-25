# printEqnsOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38ce2f099d783e776e41b65cf801b24a5818f550f39f7bfd2122dbaf3b5a3f8f",
  "kind": "def",
  "lexical_name": "printEqnsOf",
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
  "slug": "printeqnsof--df4185db1b2603634e03c41c",
  "source": {
    "blob": "8bdbae57a80b5eb963b38beef630040a3f4c28ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 253,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df4185db1b2603634e03c41cbff5693f4ef59ab2eda4d26fc33cc5692ace4106",
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

Occurrence: `declaration:38ce2f099d783e776e41b65cf801b24a5818f550f39f7bfd2122dbaf3b5a3f8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def printEqnsOf (constName : Name) : CommandElabM Unit := do
  let some eqns ← liftTermElabM <| Meta.getEqnsFor? constName |
    logInfo m!"'{constName}' does not have equations"
  let mut m := m!"equations:"
  for eq in eqns do
    let cinfo ← getConstInfo eq
    m := m ++ Format.line ++ (← mkHeader "theorem" eq cinfo.levelParams cinfo.type .safe)
  logInfo m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bdbae57a80b5eb963b38beef630040a3f4c28ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
