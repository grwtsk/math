# checkComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da7db260fee3f4797b621f778b68e83f2b83bc26a40a05f45da515182b465af6",
  "kind": "def",
  "lexical_name": "checkComputable",
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
  "slug": "checkcomputable--37e0be4fbf87a8571bb837c2",
  "source": {
    "blob": "855a348185006c9b3aaf13af2db2ac63ba492853",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 440,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37e0be4fbf87a8571bb837c24d5dc869de5d72e11a8c528937ca3a1f2b02044c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da7db260fee3f4797b621f778b68e83f2b83bc26a40a05f45da515182b465af6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkComputable (ref : Name) : M Unit := do
  if (← read).ignoreNoncomputable then
    return
  if ref matches ``Quot.mk | ``Quot.lift || isExtern (← getEnv) ref || (getImplementedBy? (← getEnv) ref).isSome then
    return
  -- The executable code of a recursive definition comes from its `_unsafe_rec` implementation (see
  -- `getDeclInfo?`), so `ref` is noncomputable whenever that implementation is. This case arises in a
  -- `noncomputable section`, where the failure to compile the `_unsafe_rec` version is tolerated and
  -- only that auxiliary is marked `noncomputable`, leaving `ref` itself unmarked.
  if isNoncomputable (← getEnv) ref || isNoncomputable (← getEnv) (mkUnsafeRecName ref) then
    throwNamedError lean.dependsOnNoncomputable m!"failed to compile definition, consider marking it as 'noncomputable' because it depends on '{.ofConstName ref}', which is 'noncomputable'"
  else if getOriginalConstKind? (← getEnv) ref matches some .axiom | some .quot | some .induct | some .thm then
    throwNamedError lean.dependsOnNoncomputable f!"`{ref}` not supported by code generator; consider marking definition as `noncomputable`"

/--
Eta reduce implicits. We use this function to eliminate introduced by the implicit lambda feature,
where it generates terms such as `fun {α} => ReaderT.pure`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `855a348185006c9b3aaf13af2db2ac63ba492853` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
