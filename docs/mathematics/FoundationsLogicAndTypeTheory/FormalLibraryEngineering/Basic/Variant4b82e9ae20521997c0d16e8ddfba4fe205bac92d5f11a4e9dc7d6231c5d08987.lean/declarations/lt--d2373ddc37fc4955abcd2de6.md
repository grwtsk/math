# lt?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6022bc2b3b125509daeee0b1d2768759b6ceb1c4733c4d2b681847714a40f323",
  "kind": "def",
  "lexical_name": "lt?",
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
  "slug": "lt--d2373ddc37fc4955abcd2de6",
  "source": {
    "blob": "e67f7aa32b4f4ed7c1414a56493affd1726ecabd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 361,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b82e9ae20521997c0d16e8ddfba4fe205bac92d5f11a4e9dc7d6231c5d08987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2373ddc37fc4955abcd2de600d293dffaba587fd2f222a1286ec44f5efb56e4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b82e9ae20521997c0d16e8ddfba4fe205bac92d5f11a4e9dc7d6231c5d08987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6022bc2b3b125509daeee0b1d2768759b6ceb1c4733c4d2b681847714a40f323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def lt? (p : Expr) : Option (Expr × Expr × Expr) := do
  let (type, _, lhs, rhs) ← p.app4? ``LT.lt
  return (type, lhs, rhs)

/-- Given a proposition `ty` that is an `Eq`, `Iff`, or `HEq`, returns `(tyLhs, lhs, tyRhs, rhs)`,
where `lhs : tyLhs` and `rhs : tyRhs`,
and where `lhs` is related to `rhs` by the respective relation.

See also `Lean.Expr.iff?`, `Lean.Expr.eq?`, and `Lean.Expr.heq?`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b82e9ae20521997c0d16e8ddfba4fe205bac92d5f11a4e9dc7d6231c5d08987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4b82e9ae20521997c0d16e8ddfba4fe205bac92d5f11a4e9dc7d6231c5d08987.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e67f7aa32b4f4ed7c1414a56493affd1726ecabd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
