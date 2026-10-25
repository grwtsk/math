# mkEMatchTheoremWithKind'?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c97f974fe1ba972756f63962b5096375d5aa8bee7bbec20b6224e4b07d4d88d4",
  "kind": "def",
  "lexical_name": "mkEMatchTheoremWithKind'?",
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
  "slug": "mkematchtheoremwithkind--457c124026cf2495038ff594",
  "source": {
    "blob": "14bb804b0ede7aac0ac190c76c5c11b5baa95a12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:457c124026cf2495038ff5946dc4f78a583d3ec1f2b99d227fcbc0b51a6d039a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c97f974fe1ba972756f63962b5096375d5aa8bee7bbec20b6224e4b07d4d88d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkEMatchTheoremWithKind'? (origin : Origin) (proof : Expr) (kind : EMatchTheoremKind) (prios : SymbolPriorities) : MetaM (Option EMatchTheorem) := do
  try
    -- **Note**: for local theorems, we want to use very general patterns, this is why we set `minIndexable := true`
    -- The same approach is used in Z3.
    mkEMatchTheoremWithKind? origin #[] proof kind prios (groundPatterns := false) (minIndexable := true)
  catch _ =>
    return none

/-- Returns `true` if `thm?` is none or its patterns are different from the ones in `thm'` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14bb804b0ede7aac0ac190c76c5c11b5baa95a12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
