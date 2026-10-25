# compareHyp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:833debebcb2bb94c49959c0a133e00dbb2020bb43bad4249438ee1599e7e9d10",
  "kind": "def",
  "lexical_name": "compareHyp",
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
  "slug": "comparehyp--43f7feef7fb932c1660a60ac",
  "source": {
    "blob": "a75feda06a3f36d2c747cec5ba096bb75629aa93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 245,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43f7feef7fb932c1660a60ac6f16a10d723cf6315b020721bca66a9b195db46b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:833debebcb2bb94c49959c0a133e00dbb2020bb43bad4249438ee1599e7e9d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compareHyp (e : Q($α)) (ldecl : LocalDecl) : MetaM (Strictness zα pα e) := do
  have e' : Q(Prop) := ldecl.type
  match e' with
  | ~q(@LE.le _ $_a $lo $hi) =>
    guard <| ← isDefEq e hi
    compareHypLE zα pα lo e (.fvar ldecl.fvarId)
  | ~q(@LT.lt _ $_a $lo $hi) =>
    guard <| ← isDefEq e hi
    compareHypLT zα pα lo e (.fvar ldecl.fvarId)
  | ~q(($lo : $α') = $hi) =>
    let .true ← isDefEq α α' | return .none
    let p : Q($lo = $hi) := .fvar ldecl.fvarId
    match ← compareHypEq zα pα e lo hi p with
    | .none => compareHypEq zα pα e hi lo (q(Eq.symm $p) : Expr)
    | result => pure result
  | ~q(($a : $α') ≠ $b) =>
    let .true ← isDefEq α α' | return .none
    if ← isDefEq q((0 : $α)) a then
      let .true ← isDefEq e b | return .none
      let p : Q(0 ≠ $e) := .fvar ldecl.fvarId
      pure (.nonzero q(Ne.symm $p))
    else
      let .true ← isDefEq q((0 : $α)) b | return .none
      let .true ← isDefEq e a | return .none
      pure (.nonzero (.fvar ldecl.fvarId))
  | _ => pure .none

variable {zα pα} in
/-- The main combinator which combines multiple `positivity` results.
It assumes `t₁` has already been run for a result, and runs `t₂` and takes the best result.
It will skip `t₂` if `t₁` is already a proof of `.positive`, and can also combine
`.nonnegative` and `.nonzero` to produce a `.positive` result. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a75feda06a3f36d2c747cec5ba096bb75629aa93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
