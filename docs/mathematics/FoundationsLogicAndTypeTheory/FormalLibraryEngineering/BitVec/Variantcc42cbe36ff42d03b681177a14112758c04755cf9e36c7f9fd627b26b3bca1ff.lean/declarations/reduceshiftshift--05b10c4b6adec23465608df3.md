# reduceShiftShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36dbd2a66394992169fd4eb5ba118731d20068b9531bce2c375889e82481e58c",
  "kind": "def",
  "lexical_name": "reduceShiftShift",
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
  "slug": "reduceshiftshift--05b10c4b6adec23465608df3",
  "source": {
    "blob": "7dcaf81d7ab991c096afb5f1bb0c26821879ead0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 385,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05b10c4b6adec23465608df3fac238148783c75a1cc4076d2241a21b6e288afc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36dbd2a66394992169fd4eb5ba118731d20068b9531bce2c375889e82481e58c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] private def reduceShiftShift (declName : Name) (thmName : Name) (e : Expr) : SimpM Step := do
  unless e.isAppOfArity declName 6 do return .continue
  let aux := e.appFn!.appArg!
  let some i ← Nat.fromExpr? e.appArg! | return .continue
  unless aux.isAppOfArity declName 6 do return .continue
  let x := aux.appFn!.appArg!
  let some j ← Nat.fromExpr? aux.appArg! | return .continue
  let i_add_j := toExpr (i + j)
  let expr ← mkAppM declName #[x, i_add_j]
  let proof ← mkAppM thmName #[x, aux.appArg!, e.appArg!]
  let proof ← mkEqSymm proof -- we rewrite (x <<< i) <<< j ↦ x <<< (i + j) [the opposite direction]
  return .visit { expr, proof? := some proof }

builtin_simproc reduceShiftLeftShiftLeft (((_ <<< _ : BitVec _) <<< _ : BitVec _)) :=
  reduceShiftShift ``HShiftLeft.hShiftLeft ``shiftLeft_add
builtin_simproc reduceShiftRightShiftRight (((_ >>> _ : BitVec _) >>> _ : BitVec _)) :=
  reduceShiftShift ``HShiftRight.hShiftRight ``shiftRight_add

end BitVec
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variantcc42cbe36ff42d03b681177a14112758c04755cf9e36c7f9fd627b26b3bca1ff.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dcaf81d7ab991c096afb5f1bb0c26821879ead0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
