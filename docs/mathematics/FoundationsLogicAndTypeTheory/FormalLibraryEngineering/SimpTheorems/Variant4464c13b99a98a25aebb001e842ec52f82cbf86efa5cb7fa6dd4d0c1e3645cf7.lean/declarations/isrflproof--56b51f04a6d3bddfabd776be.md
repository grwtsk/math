# isRflProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28ffd62642af9f3af0fbe18e0ec75e3be301c21c71b0c67c0f30c0fe3bf8f0e3",
  "kind": "def",
  "lexical_name": "isRflProof",
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
  "slug": "isrflproof--56b51f04a6d3bddfabd776be",
  "source": {
    "blob": "375077889ab38d6151fbb04b213bf66513572d23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 232,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56b51f04a6d3bddfabd776be0842795b415282985267e3dade0e294cdc72f526",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28ffd62642af9f3af0fbe18e0ec75e3be301c21c71b0c67c0f30c0fe3bf8f0e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isRflProof (proof : Expr) : MetaM Bool := do
  -- Make theorem body available if `declName` is from the current module; the body does not matter
  -- for the ultimate application of a rfl theorem, only that the theorem type's LHS and RHS are
  -- defeq.
  withoutExporting do
    if let .const declName .. := proof then
      isRflTheoremCore (includeBackward := false) declName
    else
      isRflProofCore (includeBackward := false) (← inferType proof) proof

/-- Like `isRflProof`, but also returns `true` for proofs that are rfl only at default
transparency (via `@[backward_defeq]`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375077889ab38d6151fbb04b213bf66513572d23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
