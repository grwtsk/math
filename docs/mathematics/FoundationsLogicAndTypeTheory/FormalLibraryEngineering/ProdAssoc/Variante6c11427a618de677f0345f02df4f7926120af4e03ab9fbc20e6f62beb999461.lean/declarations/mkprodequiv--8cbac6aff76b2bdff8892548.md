# mkProdEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7cd6280ed1a91db7c7a2e1b1dff1f9d6561dc4045624733157d4161364d143a",
  "kind": "def",
  "lexical_name": "mkProdEquiv",
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
  "slug": "mkprodequiv--8cbac6aff76b2bdff8892548",
  "source": {
    "blob": "40a335233a30ebb7f74a962a53d6b5cc0267189a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cbac6aff76b2bdff8892548465dbc8f64ecbf26c702e7cc8a784026b6aeb198",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7cd6280ed1a91db7c7a2e1b1dff1f9d6561dc4045624733157d4161364d143a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkProdEquiv (a b : Expr) : MetaM Expr := do
  let some u := (← whnfD <| ← inferType a).type? | throwError "Not a type{indentExpr a}"
  let some v := (← whnfD <| ← inferType b).type? | throwError "Not a type{indentExpr b}"
  return mkAppN (.const ``Equiv.mk [.succ u,.succ v])
    #[a, b, ← mkProdFun a b, ← mkProdFun b a,
      .app (.const ``rfl [.succ u]) a,
      .app (.const ``rfl [.succ v]) b]

/-- IMPLEMENTATION: Syntax used in the implementation of `prod_assoc%`.
This elaborator postpones if there are metavariables in the expected type,
and to propagate the fact that this elaborator produces an `Equiv`,
the `prod_assoc%` macro sets things up with a type ascription.
This enables using `prod_assoc%` with, for example `Equiv.trans` dot notation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a335233a30ebb7f74a962a53d6b5cc0267189a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
