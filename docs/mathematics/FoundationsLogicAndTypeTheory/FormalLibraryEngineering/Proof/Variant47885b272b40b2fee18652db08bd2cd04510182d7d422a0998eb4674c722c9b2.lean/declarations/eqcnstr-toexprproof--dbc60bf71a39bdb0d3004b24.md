# EqCnstr.toExprProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c8d14954945d7775a72818026e7d41d80fbf7b355fb08eef4c970b7c510d35e",
  "kind": "def",
  "lexical_name": "EqCnstr.toExprProof",
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
  "slug": "eqcnstr-toexprproof--dbc60bf71a39bdb0d3004b24",
  "source": {
    "blob": "fc0ec2711a9df8fffab5d4ca6a919b90c27c8d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbc60bf71a39bdb0d3004b24d2e01e05c979ff33bb2d2e55079569a3e5f1889b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c8d14954945d7775a72818026e7d41d80fbf7b355fb08eef4c970b7c510d35e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def EqCnstr.toExprProof (c : EqCnstr) : ProofM Expr := do caching c do
  match c.h with
  | .core a b lhs rhs =>
    let h ← match (← isCommutative), (← hasNeutral) with
      | false, false => mkAPrefix ``AC.eq_norm_a
      | false, true  => mkAIPrefix ``AC.eq_norm_ai
      | true,  false => mkACPrefix ``AC.eq_norm_ac
      | true,  true  => mkACIPrefix ``AC.eq_norm_aci
    return mkApp6 h (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkSeqDecl c.lhs) (← mkSeqDecl c.rhs) eagerReflBoolTrue (← mkEqProof a b)
  | .refl s =>
    let h ← mkPrefix ``AC.refl
    return mkApp h (← mkSeqDecl s)
  | .erase_dup c₁ =>
    let h ← mkADPrefix ``AC.eq_erase_dup
    return mkApp6 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl c.lhs) (← mkSeqDecl c.rhs) eagerReflBoolTrue (← c₁.toExprProof)
  | .erase_dup_rhs c₁ =>
    let h ← mkADPrefix ``AC.eq_erase_dup_rhs
    return mkApp5 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl c.rhs) eagerReflBoolTrue (← c₁.toExprProof)
  | .erase0 c₁ =>
    let h ← mkAIPrefix ``AC.eq_erase0
    return mkApp6 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl c.lhs) (← mkSeqDecl c.rhs) eagerReflBoolTrue (← c₁.toExprProof)
  | .erase0_rhs c₁ =>
    let h ← mkAIPrefix ``AC.eq_erase0_rhs
    return mkApp5 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl c.rhs) eagerReflBoolTrue (← c₁.toExprProof)
  | .simp_exact isLhs c₁ c₂ =>
    let h ← mkPrefix <| if isLhs then ``AC.eq_simp_lhs_exact else ``AC.eq_simp_rhs_exact
    let o := if isLhs then c₂.rhs else c₂.lhs
    return mkApp5 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl o) (← c₁.toExprProof) (← c₂.toExprProof)
  | .simp_prefix isLhs tail c₁ c₂ =>
    let h ← mkAPrefix <| if isLhs then ``AC.eq_simp_lhs_prefix else ``AC.eq_simp_rhs_prefix
    let s' := if isLhs then c.lhs else c.rhs
    return mkApp9 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl tail) (← mkSeqDecl c₂.lhs) (← mkSeqDecl c₂.rhs) (← mkSeqDecl s')
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .simp_suffix isLhs head c₁ c₂ =>
    let h ← mkAPrefix <| if isLhs then ``AC.eq_simp_lhs_suffix else ``AC.eq_simp_rhs_suffix
    let s' := if isLhs then c.lhs else c.rhs
    return mkApp9 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl head) (← mkSeqDecl c₂.lhs) (← mkSeqDecl c₂.rhs) (← mkSeqDecl s')
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .simp_middle isLhs head tail c₁ c₂ =>
    let h ← mkAPrefix <| if isLhs then ``AC.eq_simp_lhs_middle else ``AC.eq_simp_rhs_middle
    let s' := if isLhs then c.lhs else c.rhs
    return mkApp10 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl head) (← mkSeqDecl tail) (← mkSeqDecl c₂.lhs) (← mkSeqDecl c₂.rhs) (← mkSeqDecl s')
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .simp_ac isLhs s c₁ c₂ =>
    let h ← mkACPrefix <| if isLhs then ``AC.eq_simp_lhs_ac else ``AC.eq_simp_rhs_ac
    let s' := if isLhs then c.lhs else c.rhs
    return mkApp9 h (← mkSeqDecl s) (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl c₂.lhs) (← mkSeqDecl c₂.rhs) (← mkSeqDecl s')
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .swap c =>
    let h ← mkPrefix ``AC.eq_orient
    return mkApp3 h (← mkSeqDecl c.lhs) (← mkSeqDecl c.rhs) (← c.toExprProof)
  | .superpose_ac r₁ common r₂ c₁ c₂  =>
    let h ← mkACPrefix ``AC.superpose_ac
    let h := mkApp9 h (← mkSeqDecl r₁) (← mkSeqDecl common) (← mkSeqDecl r₂) (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs)
        (← mkSeqDecl c₂.lhs) (← mkSeqDecl c₂.rhs) (← mkSeqDecl c.lhs) (← mkSeqDecl c.rhs)
    return mkApp3 h eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .superpose p common s c₁ c₂ =>
    let h ← mkAPrefix ``AC.superpose
    let h := mkApp9 h (← mkSeqDecl p) (← mkSeqDecl common) (← mkSeqDecl s) (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs)
        (← mkSeqDecl c₂.lhs) (← mkSeqDecl c₂.rhs) (← mkSeqDecl c.lhs) (← mkSeqDecl c.rhs)
    return mkApp3 h eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .superpose_ac_idempotent x c₁ =>
    let h ← mkACDPrefix ``AC.superpose_ac_idempotent
    let h := mkApp4 h (← mkVarDecl x) (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl c.rhs)
    return mkApp2 h eagerReflBoolTrue (← c₁.toExprProof)
  | .superpose_head_idempotent x c₁ =>
    let h ← mkADPrefix ``AC.superpose_head_idempotent
    let h := mkApp4 h (← mkVarDecl x) (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl c.rhs)
    return mkApp2 h eagerReflBoolTrue (← c₁.toExprProof)
  | .superpose_tail_idempotent x c₁ =>
    let h ← mkADPrefix ``AC.superpose_tail_idempotent
    let h := mkApp4 h (← mkVarDecl x) (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl c.rhs)
    return mkApp2 h eagerReflBoolTrue (← c₁.toExprProof)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc0ec2711a9df8fffab5d4ca6a919b90c27c8d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
