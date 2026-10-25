# simpIte

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f39eb575ce21f57b34e0eef87813cb74a0b3d67c60749541ce91584551a8069",
  "kind": "def",
  "lexical_name": "simpIte",
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
  "slug": "simpite--25d807df0b57affdb7bd902a",
  "source": {
    "blob": "dfa18f691e351e8bfc24b274958ec8665df59ee4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25d807df0b57affdb7bd902a74ba70870a3f21a53cae8252f2050001c5df11ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f39eb575ce21f57b34e0eef87813cb74a0b3d67c60749541ce91584551a8069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpIte : Simproc := fun e => do
  let numArgs := e.getAppNumArgs
  if numArgs < 5 then return .rfl (done := true)
  propagateOverApplied e (numArgs - 5) fun e => do
    let_expr f@ite α c _ a b := e | return .rfl
    -- **cd propagation**: `cd` from `simp c` is propagated to ALL branches.
    -- When `cd = true`, `simp c` might produce a different result in another context
    -- (e.g., a conditional rewrite could change `c`). This means the entire `ite`
    -- result might differ — even branches like `isTrueExpr c` that seem ground-determined,
    -- because in another context `simp c` might not return `.rfl` at all.
    match (← simp c) with
    | .rfl _ cd =>
      if (← isTrueExpr c) then
        return .step a (mkApp3 (mkConst ``ite_true f.constLevels!) α a b) (contextDependent := cd)
      else if (← isFalseExpr  c) then
        return .step b (mkApp3 (mkConst ``ite_false f.constLevels!) α a b) (contextDependent := cd)
      else
        return mkRflResult (done := true) (contextDependent := cd)
    | .step c' h _ cd =>
      if (← isTrueExpr c') then
        return .step a (mkApp (e.replaceFn ``ite_cond_eq_true) h) (contextDependent := cd)
      else if (← isFalseExpr c') then
        return .step b (mkApp (e.replaceFn ``ite_cond_eq_false) h) (contextDependent := cd)
      else
        let .some inst' ← trySynthInstance (mkApp (mkConst ``Decidable) c') | return .rfl
        let inst' ← shareCommon inst'
        let e' := e.getBoundedAppFn 4
        let e' ← mkAppS₄ e' c' inst' a b
        let h' := mkApp3 (e.replaceFn ``Sym.ite_cond_congr) c' inst' h
        return .step e' h' (done := true) (contextDependent := cd)

/--
Simplifies a dependent `if-then-else` expression.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfa18f691e351e8bfc24b274958ec8665df59ee4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
