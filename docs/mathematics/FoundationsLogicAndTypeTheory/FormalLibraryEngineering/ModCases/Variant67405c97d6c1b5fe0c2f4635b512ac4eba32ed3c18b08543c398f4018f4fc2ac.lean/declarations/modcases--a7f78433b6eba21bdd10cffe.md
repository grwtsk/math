# modCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16de7e3e6354817693f452ca301cf49882fca1982c2947e72f0f2aeb078d8d10",
  "kind": "def",
  "lexical_name": "modCases",
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
  "slug": "modcases--a7f78433b6eba21bdd10cffe",
  "source": {
    "blob": "43ca41ede48aa7f705f3fa96fe9d9056a348dd63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant67405c97d6c1b5fe0c2f4635b512ac4eba32ed3c18b08543c398f4018f4fc2ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7f78433b6eba21bdd10cffe89c799695db5b8215aa2dd706bf00e84d1940a71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant67405c97d6c1b5fe0c2f4635b512ac4eba32ed3c18b08543c398f4018f4fc2ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16de7e3e6354817693f452ca301cf49882fca1982c2947e72f0f2aeb078d8d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def modCases (h : TSyntax `Lean.binderIdent) (e : Q(ℕ)) (n : ℕ) : TacticM Unit := do
  let ⟨u, p, g⟩ ← inferTypeQ (.mvar (← getMainGoal))
  have lit : Q(ℕ) := mkRawNatLit n
  let p₁ : Q(Nat.ble 1 $lit = true) := (q(Eq.refl true) : Expr)
  let (p₂, gs) ← proveOnModCases lit e q(nat_lit 0) p
  let gs ← gs.mapM fun g => do
    let (fvar, g) ← match h with
    | `(binderIdent| $n:ident) => g.intro n.getId
    | _ => g.intro `H
    g.withContext <| (Expr.fvar fvar).addLocalVarInfoForBinderIdent h
    pure g
  g.mvarId!.assign q(onModCases_start $p $e $lit $p₁ $p₂)
  replaceMainGoal gs

end NatMod

/--
`mod_cases h : e % n`, where `n` is a positive numeral and `e` is an expression of type `ℕ` or `ℤ`,
performs a case disjunction on the value of `e` modulo `n`. If `e : ℤ`, the goal is split into
`n` subgoals containing the new hypotheses `h : e ≡ 0 [ZMOD n]`, ..., `h : e ≡ n-1 [ZMOD n]`
respectively. If `e : ℕ` instead, then the hypotheses contain `[MOD n]` instead of `[ZMOD n]`.

* `mod_cases e % n`, with `h` omitted, gives the default name `H` to the new hypotheses.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant67405c97d6c1b5fe0c2f4635b512ac4eba32ed3c18b08543c398f4018f4fc2ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModCases/Variant67405c97d6c1b5fe0c2f4635b512ac4eba32ed3c18b08543c398f4018f4fc2ac.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43ca41ede48aa7f705f3fa96fe9d9056a348dd63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
