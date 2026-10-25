# mkPowEqProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d8722e1244445ef1495eddc417d843a4a36bbd270d9522b733c397004aaa14c",
  "kind": "def",
  "lexical_name": "mkPowEqProof",
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
  "slug": "mkpoweqproof--2dbc2ad9c9d681aec1a293f7",
  "source": {
    "blob": "cf84cd10edc5ac314dcbe6f644a88942bae39c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 311,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2dbc2ad9c9d681aec1a293f7f6efc14d214f80cd5d063b1bc8842878cf557756",
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

Occurrence: `declaration:3d8722e1244445ef1495eddc417d843a4a36bbd270d9522b733c397004aaa14c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkPowEqProof (ka : Int) (ca? : Option EqCnstr) (kb : Nat) (cb? : Option EqCnstr) (c' : EqCnstr) : ProofM Expr := do
  let .add _ x _ := c'.p | c'.throwUnexpected
  let_expr HPow.hPow _ _ _ _ a b := (← getCurrVars)[x]! | c'.throwUnexpected
  let h₁ ← if let some ca := ca? then
    pure <| mkApp6 (mkConst ``Int.Internal.Linear.var_eq) (← getContext) (← mkVarDecl (← getVarOf a)) (toExpr ka) (← mkPolyDecl ca.p) eagerReflBoolTrue (← ca.toExprProof)
  else
    pure <| mkApp2 (mkConst ``Eq.refl [1]) Int.mkType (mkIntLit ka)
  let kbInt := Int.ofNat kb
  let h₂ ← if let some cb := cb? then
    let (b', _) ← mkNatVar b
    pure <| mkApp6 (mkConst ``Int.Internal.Linear.var_eq) (← getContext) (← mkVarDecl (← getVarOf b')) (toExpr kbInt) (← mkPolyDecl cb.p) eagerReflBoolTrue (← cb.toExprProof)
  else
    pure <| mkApp2 (mkConst ``Eq.refl [1]) Int.mkType (mkIntLit kb)
  let k := ka^kb
  let h := mkApp8 (mkConst ``Int.Internal.Linear.pow_eq) a b (toExpr ka) (toExpr kbInt) (toExpr k) h₁ h₂ eagerReflBoolTrue
  return mkApp6 (mkConst ``Int.Internal.Linear.of_var_eq) (← getContext) (← mkVarDecl x) (toExpr k) (← mkPolyDecl c'.p) eagerReflBoolTrue h

set_option compiler.ignoreBorrowAnnotation true in
mutual

@[export lean_cutsat_eq_cnstr_to_proof]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf84cd10edc5ac314dcbe6f644a88942bae39c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
