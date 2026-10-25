# markRhss

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46e04898eb47da4c61c983cc5ebe0ca32aa1e9d59ef57207bfabe268b5c471b1",
  "kind": "def",
  "lexical_name": "markRhss",
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
  "slug": "markrhss--8a6f781dcd4686bbb07e062f",
  "source": {
    "blob": "8213946421eefb8d9285f496a3c5b4e57958e223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 636,
    "line": 616,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a6f781dcd4686bbb07e062f5c4ac4254b18ab4f156ac44c71e938d8ab7c29ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46e04898eb47da4c61c983cc5ebe0ca32aa1e9d59ef57207bfabe268b5c471b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 616–636.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def markRhss (rhss : Array Term) : TermElabM (NameMap Nat × IdxSet × Array Term) := do
  let mut altIdxMap : NameMap Nat := {}
  let mut ignoreIfUnused : IdxSet := {}
  let mut rhssNew := #[]
  for rhs in rhss do
    if hasNoErrorIfUnused rhs then
      ignoreIfUnused := ignoreIfUnused.insert rhssNew.size
    let (idx, rhs) ← withFreshMacroScope do
      let idx ← `(alt_idx)
      let rhs ← `(alt_idx $rhs)
      return (idx, rhs)
    altIdxMap := altIdxMap.insert idx.getId rhssNew.size
    rhssNew := rhssNew.push rhs
  return (altIdxMap, ignoreIfUnused, rhssNew)

/--
Given the mapping `idxMap` built using `markRhss`, and `stx` the resulting syntax after expanding `match`-syntax,
return the pair `(stxNew, usedSet)`, where `stxNew` is `stx` after removing the `alt_idx` markers in `idxMap`,
and `i ∈ usedSet` if `stx` contains an `alt_idx` s.t. `alt_idx ↦ i` is in `idxMap`.
That is, `usedSet` contains the index of the used match-syntax right-hand-sides.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quotation/Variantb9ffcea1746bf8b849c59aec950e15b5d5bef386c0b7b17b9ae612689a4ffe76.lean#L616).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8213946421eefb8d9285f496a3c5b4e57958e223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
