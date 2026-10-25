# UnsatProof.toExprProofCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d388447bf37a883b4bafd5672807793afb370db7e2d0cd0437a42de5dbdf9d9",
  "kind": "def",
  "lexical_name": "UnsatProof.toExprProofCore",
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
  "slug": "unsatproof-toexprproofcore--2e9b83a5a8ce9f5a95273d11",
  "source": {
    "blob": "e9b3728968e885da4934f70c241bf6d906cb5091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 625,
    "line": 603,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e9b83a5a8ce9f5a95273d1115c4f6111151393ebdc26e6ae491a4560e206fb8",
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

Occurrence: `declaration:2d388447bf37a883b4bafd5672807793afb370db7e2d0cd0437a42de5dbdf9d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def UnsatProof.toExprProofCore (h : UnsatProof) : ProofM Expr := do
  match h with
  | .le c =>
    return mkApp4 (mkConst ``Int.Internal.Linear.le_unsat) (← getContext) (← mkPolyDecl c.p) eagerReflBoolTrue (← c.toExprProof)
  | .dvd c =>
    return mkApp5 (mkConst ``Int.Internal.Linear.dvd_unsat) (← getContext) (toExpr c.d) (← mkPolyDecl c.p) eagerReflBoolTrue (← c.toExprProof)
  | .eq c =>
    if c.p.isUnsatEq then
      return mkApp4 (mkConst ``Int.Internal.Linear.eq_unsat) (← getContext) (← mkPolyDecl c.p) eagerReflBoolTrue (← c.toExprProof)
    else
      let k := c.p.gcdCoeffs'
      return mkApp5 (mkConst ``Int.Internal.Linear.eq_unsat_coeff) (← getContext) (← mkPolyDecl c.p) (toExpr (Int.ofNat k)) eagerReflBoolTrue (← c.toExprProof)
  | .diseq c =>
    return mkApp4 (mkConst ``Int.Internal.Linear.diseq_unsat) (← getContext) (← mkPolyDecl c.p) eagerReflBoolTrue (← c.toExprProof)
  | .cooper c₁ c₂ c₃ =>
    let .add c _ _ := c₃.p | c₃.throwUnexpected
    let d := c₃.d
    let (_, α, β) := gcdExt c d
    let h := mkApp7 (mkConst ``Int.Internal.Linear.cooper_unsat) (← getContext) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c₃.p) (toExpr c₃.d) (toExpr α) (toExpr β)
    return mkApp4 h eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof) (← c₃.toExprProof)

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9b3728968e885da4934f70c241bf6d906cb5091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
