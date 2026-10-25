# mkDivEqProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:096b378337e146fa9824c0492b4c3339ebba4190781d057a51a15f4a10c55737",
  "kind": "def",
  "lexical_name": "mkDivEqProof",
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
  "slug": "mkdiveqproof--3bc7c55c2227b5f0ae3490f2",
  "source": {
    "blob": "cf84cd10edc5ac314dcbe6f644a88942bae39c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 281,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bc7c55c2227b5f0ae3490f27f5aaad785f611c4499cdff9c510280f13efdde2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:096b378337e146fa9824c0492b4c3339ebba4190781d057a51a15f4a10c55737`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkDivEqProof (k : Int) (y? : Option Var) (c : EqCnstr) (c' : EqCnstr) : ProofM Expr := do
  let .add _ x _ := c'.p | c'.throwUnexpected
  let_expr HDiv.hDiv _ _ _ _ a b := (← getCurrVars)[x]! | c'.throwUnexpected
  let bVar ← getVarOf b
  let h := mkApp6 (mkConst ``Int.Internal.Linear.var_eq) (← getContext) (← mkVarDecl bVar) (toExpr k) (← mkPolyDecl c.p) eagerReflBoolTrue (← c.toExprProof)
  if let some y := y? then
    let h := mkApp4 (mkConst ``Int.Internal.Linear.div_eq) a b (toExpr k) h
    return mkApp6 (mkConst ``Int.Internal.Linear.of_var_eq_var) (← getContext) (← mkVarDecl x) (← mkVarDecl y) (← mkPolyDecl c'.p) eagerReflBoolTrue h
  else
    let b' := k
    let some aVal ← getIntValue? a | unreachable!
    let k := aVal / b'
    let h := mkApp6 (mkConst ``Int.Internal.Linear.div_eq') a b (toExpr b') (toExpr k) h eagerReflBoolTrue
    return mkApp6 (mkConst ``Int.Internal.Linear.of_var_eq) (← getContext) (← mkVarDecl x) (toExpr k) (← mkPolyDecl c'.p) eagerReflBoolTrue h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf84cd10edc5ac314dcbe6f644a88942bae39c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
