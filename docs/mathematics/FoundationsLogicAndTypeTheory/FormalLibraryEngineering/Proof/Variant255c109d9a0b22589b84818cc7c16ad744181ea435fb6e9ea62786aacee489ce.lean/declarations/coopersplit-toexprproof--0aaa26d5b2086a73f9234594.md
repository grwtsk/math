# CooperSplit.toExprProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb5ac85905fb65ce4ea95f70865da90c9cc70b26294fbe9165261b959f1a5dee",
  "kind": "def",
  "lexical_name": "CooperSplit.toExprProof",
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
  "slug": "coopersplit-toexprproof--0aaa26d5b2086a73f9234594",
  "source": {
    "blob": "e9b3728968e885da4934f70c241bf6d906cb5091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 564,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0aaa26d5b2086a73f923459401d0dc33a9754640be3eaaebbc1c3c8fcdd56768",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb5ac85905fb65ce4ea95f70865da90c9cc70b26294fbe9165261b959f1a5dee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def CooperSplit.toExprProof (s : CooperSplit) : ProofM Expr := caching s do
  match s.h with
  | .dec h => return mkFVar h
  | .last hs _ =>
    let { c₁, c₂, c₃?, left } := s.pred
    let p₁ := c₁.p
    let p₂ := c₂.p
    let n := s.pred.numCases
    unless hs.size + 1 == n do
      throwError "`grind` internal error, unexpected number of cases at `CopperSplit` hs.size: {hs.size}, n: {n}, left: {left}\nc₁: {← c₁.pp}\nc₂: {← c₂.pp}\nc₃: {← if let some c₃ := c₃? then c₃.pp else pure ""}"
    let (base, pred) ← match c₃? with
      | none =>
        let thmName := if left then ``Int.Internal.Linear.cooper_left else ``Int.Internal.Linear.cooper_right
        let predName := if left then ``Int.Internal.Linear.cooper_left_split else ``Int.Internal.Linear.cooper_right_split
        let base := mkApp7 (mkConst thmName) (← getContext) (← mkPolyDecl p₁) (← mkPolyDecl p₂) (toExpr n)
          eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
        let pred := mkApp3 (mkConst predName) (← getContext) (← mkPolyDecl p₁) (← mkPolyDecl p₂)
        pure (base, pred)
      | some c₃ =>
        let thmName := if left then ``Int.Internal.Linear.cooper_dvd_left else ``Int.Internal.Linear.cooper_dvd_right
        let predName := if left then ``Int.Internal.Linear.cooper_dvd_left_split else ``Int.Internal.Linear.cooper_dvd_right_split
        let base := mkApp10 (mkConst thmName) (← getContext) (← mkPolyDecl p₁) (← mkPolyDecl p₂) (← mkPolyDecl c₃.p) (toExpr c₃.d) (toExpr n)
          eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof) (← c₃.toExprProof)
        let pred := mkApp5 (mkConst predName) (← getContext) (← mkPolyDecl p₁) (← mkPolyDecl p₂) (← mkPolyDecl c₃.p) (toExpr c₃.d)
        pure (base, pred)
    -- `pred` is an expressions of the form `cooper_*_split ...` with type `Nat → Prop`
    let mut k := n
    let mut result := base -- `OrOver k (cooper_*_splti)
    result := mkApp3 (mkConst ``Int.Internal.Linear.orOver_cases) (toExpr (n-1)) pred result
    for (fvarId, c) in hs do
      let type := mkApp pred (toExpr (k-1))
      let h ← c.toExprProofCore -- proof of `False`
      -- `hNotCase` is a proof for `¬ pred (k-1)`
      let hNotCase := mkLambda `h .default type (h.abstract #[mkFVar fvarId])
      result := mkApp result hNotCase
      k := k - 1
    -- `result` is now a proof of `p 0`
    return result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9b3728968e885da4934f70c241bf6d906cb5091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
