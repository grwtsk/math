# mkPostPointwisePremise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f3c2934e538ece619776aff30fdabf9dee98f276c67ed18406bbb2f4de2d31e",
  "kind": "def",
  "lexical_name": "mkPostPointwisePremise",
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
  "slug": "mkpostpointwisepremise--d6d93644eef26558379a16dd",
  "source": {
    "blob": "e39485b4727669e40b2752d74a633be14945f721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6d93644eef26558379a16ddce00c0a48bc93094810ba38cc43d274e04e7a77c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f3c2934e538ece619776aff30fdabf9dee98f276c67ed18406bbb2f4de2d31e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkPostPointwisePremise (postSpec postTarget postTy : Expr) (ssTypes : Array Expr)
    (stateArgNames : Array Name := #[]) : MetaM Expr := do
  let .forallE _ α _ _ := postTy
    | throwError "expected a postcondition function, got {indentExpr postTy}"
  withLocalDeclD `a α fun a => do
    let ssNamesTypes := ssTypes.mapIdx fun i ty => (stateArgNames[i]?.getD `s, ty)
    withLocalDeclsDND ssNamesTypes fun ss' => do
      let lhs := postSpec.betaRev <| ss'.reverse.push a
      let rhs := mkAppN (mkApp postTarget a) ss'
      mkForallFVars (#[a] ++ ss') (← mkAppM ``PartialOrder.rel #[lhs, rhs])

/-- Recursively decompose `epostSpec ⊑ epostAbstract` into per-component proofs.
    - `EPost.Cons.mk head tail` → mvar for `head ⊑ epostAbstract.head`, recurse on tail
    - `EPost.Nil.mk` → trivial via `EPost.Nil.le`
    - Otherwise, if `EPred` is `EPost.Cons`, project `epostSpec.head`/`.tail` and decompose those
    - Otherwise → single mvar for `epostSpec ⊑ epostAbstract` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39485b4727669e40b2752d74a633be14945f721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
