# propagateInjEqs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a7f15b375a402c1f0399cb014113628b38e58c43c80b98ce73cb19c8b6a3638",
  "kind": "def",
  "lexical_name": "propagateInjEqs",
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
  "slug": "propagateinjeqs--336dec665012073ecb3c4f3c",
  "source": {
    "blob": "765866cc9fe7a2f5af172f2841d3c1a005da2649",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ctor/Variantec47565430c80e8a6466079c9e7c7932827b852b0ab3e634e2bd35d20c19084e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:336dec665012073ecb3c4f3c405fbe3a69a33a97e6301eb095f159d6406cb5ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ctor/Variantec47565430c80e8a6466079c9e7c7932827b852b0ab3e634e2bd35d20c19084e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a7f15b375a402c1f0399cb014113628b38e58c43c80b98ce73cb19c8b6a3638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def propagateInjEqs (eqs : Expr) (proof : Expr) (generation : Nat) : GoalM Unit := do
  -- Remark: we must use `shareCommon` before using `pushEq` and `pushHEq`.
  -- This is needed because the result type of the injection theorem may allocate
  match_expr eqs with
  | And left right =>
    propagateInjEqs left (.proj ``And 0 proof) generation
    propagateInjEqs right (.proj ``And 1 proof) generation
  | Eq _ lhs rhs    =>
    let lhs ← preprocessLight lhs
    let rhs ← preprocessLight rhs
    internalize lhs generation
    internalize rhs generation
    let proof := mkExpectedPropHint proof (← mkEq lhs rhs)
    pushEq lhs rhs proof
  | HEq _ lhs _ rhs =>
    let lhs ← preprocessLight lhs
    let rhs ← preprocessLight rhs
    internalize lhs generation
    internalize rhs generation
    let proof := mkExpectedPropHint proof (← mkHEq lhs rhs)
    pushHEq lhs rhs proof
  | _ =>
   reportIssue! "unexpected injectivity theorem result type{indentExpr eqs}"
   return ()

/-- Homogeneous case where constructor applications `a` and `b` have the same type `α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ctor/Variantec47565430c80e8a6466079c9e7c7932827b852b0ab3e634e2bd35d20c19084e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ctor/Variantec47565430c80e8a6466079c9e7c7932827b852b0ab3e634e2bd35d20c19084e.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `765866cc9fe7a2f5af172f2841d3c1a005da2649` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
