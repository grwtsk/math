# elabProxyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32f2b14e7b399d6740484c9084f834828b5a2f8d3f4dd735f3b8052811df09f2",
  "kind": "def",
  "lexical_name": "elabProxyEquiv",
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
  "slug": "elabproxyequiv--dcfaf4bf7c57a82eafea15fd",
  "source": {
    "blob": "fe39c29b57aa8afb2366bb56f5b303e3f5bf1a5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcfaf4bf7c57a82eafea15fd2bcf79d1866384b42a20fae99a13b4808798c28f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32f2b14e7b399d6740484c9084f834828b5a2f8d3f4dd735f3b8052811df09f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def elabProxyEquiv (type : Term) (expectedType? : Option Expr) :
    TermElabM (Expr × InductiveVal) := do
  let type ← Term.elabType type
  if let some expectedType := expectedType? then
    let equivType ← Term.elabType (← `(_ ≃ $(← Term.exprToSyntax type)))
    unless ← isDefEq expectedType equivType do
      throwError
        "Could not unify expected type{indentExpr expectedType}\nwith{indentExpr equivType}"
  let type ← Term.tryPostponeIfHasMVars type "In proxy_equiv% elaborator"
  let type ← whnf type
  let .const declName _ := type.getAppFn
    | throwError "{type} is not a constant or constant application"
  return (type, ← getConstInfoInduct declName)

/--
The term elaborator `proxy_equiv% α` for a type `α` elaborates to an equivalence `β ≃ α`
for a "proxy type" `β` composed out of basic type constructors `Unit`, `PLift`, `Sigma`,
`Empty`, and `Sum`.

This only works for inductive types `α` that are neither recursive nor have indices.
If `α` is an inductive type with name `I`, then as a side effect this elaborator defines
`I.proxyType` and `I.proxyTypeEquiv`.

The elaborator makes use of the expected type, so `(proxy_equiv% _ : _ ≃ α)` works.

For example, given this inductive type
```
inductive foo (n : Nat) (α : Type)
  | a
  | b : Bool → foo n α
  | c (x : Fin n) : Fin x → foo n α
  | d : Bool → α → foo n α
```
the proxy type it generates is `Unit ⊕ Bool ⊕ (x : Fin n) × Fin x ⊕ (_ : Bool) × α` and
in particular we have that
```
proxy_equiv% (foo n α) : Unit ⊕ Bool ⊕ (x : Fin n) × Fin x ⊕ (_ : Bool) × α ≃ foo n α
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe39c29b57aa8afb2366bb56f5b303e3f5bf1a5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
