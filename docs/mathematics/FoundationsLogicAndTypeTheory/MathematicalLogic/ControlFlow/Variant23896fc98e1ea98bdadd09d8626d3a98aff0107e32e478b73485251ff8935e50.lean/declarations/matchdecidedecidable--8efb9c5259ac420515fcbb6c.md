# matchDecideDecidable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:535ad09789797a20c08e10f2e5b63b33968715ef284c9c637c5f9162f5ba9008",
  "kind": "def",
  "lexical_name": "matchDecideDecidable",
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
  "slug": "matchdecidedecidable--8efb9c5259ac420515fcbb6c",
  "source": {
    "blob": "3c8d4538fc5ab131d76322d45351ec84b321f1f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8efb9c5259ac420515fcbb6c7da2b24fcf4770a0ea1a6cf850a0244c695f5907",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:535ad09789797a20c08e10f2e5b63b33968715ef284c9c637c5f9162f5ba9008`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matchDecideDecidable (p inst instToMatch : Expr) (fallback : SimpM Result) : SimpM Result := do
  match_expr instToMatch with
  | Decidable.isTrue _ hp =>
    return .step (← getBoolTrueExpr) <| mkApp3 (mkConst ``Sym.decide_isTrue) p inst hp
  | Decidable.isFalse _ hnp =>
    return .step (← getBoolFalseExpr) <| mkApp3 (mkConst ``Sym.decide_isFalse) p inst hnp
  | _ => fallback

/-- Like `simpDecideByInst`, but for the case where `p` was simplified to `p'` with proof `h`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant23896fc98e1ea98bdadd09d8626d3a98aff0107e32e478b73485251ff8935e50.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c8d4538fc5ab131d76322d45351ec84b321f1f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
