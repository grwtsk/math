# DiseqCnstr.toExprProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffce553c6388c2daeaf9d732da5b00a3d41f38449a5d04edf3f7ad8045344111",
  "kind": "def",
  "lexical_name": "DiseqCnstr.toExprProof",
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
  "slug": "diseqcnstr-toexprproof--38b1a27dae264b5b0e568f68",
  "source": {
    "blob": "eeea013d8a2415f7bc914622da66304d9ef2f0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38b1a27dae264b5b0e568f6832b23ae39310d6bf540c6222f14c9f0dce3f0680",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffce553c6388c2daeaf9d732da5b00a3d41f38449a5d04edf3f7ad8045344111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def DiseqCnstr.toExprProof (c : DiseqCnstr) : ProofM Expr := do caching c do
  match c.h with
  | .core a b lhs rhs =>
    let h ← match (← isCommutative), (← hasNeutral) with
      | false, false => mkAPrefix ``AC.diseq_norm_a
      | false, true  => mkAIPrefix ``AC.diseq_norm_ai
      | true,  false => mkACPrefix ``AC.diseq_norm_ac
      | true,  true  => mkACIPrefix ``AC.diseq_norm_aci
    return mkApp6 h (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkSeqDecl c.lhs) (← mkSeqDecl c.rhs) eagerReflBoolTrue (← mkDiseqProof a b)
  | .erase_dup c₁ =>
    let h ← mkADPrefix ``AC.diseq_erase_dup
    return mkApp6 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl c.lhs) (← mkSeqDecl c.rhs) eagerReflBoolTrue (← c₁.toExprProof)
  | .erase0 c₁ =>
    let h ← mkAIPrefix ``AC.diseq_erase0
    return mkApp6 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl c.lhs) (← mkSeqDecl c.rhs) eagerReflBoolTrue (← c₁.toExprProof)
  | .simp_exact isLhs c₁ c₂ =>
    let h ← mkPrefix <| if isLhs then ``AC.diseq_simp_lhs_exact else ``AC.diseq_simp_rhs_exact
    let o := if isLhs then c₂.rhs else c₂.lhs
    return mkApp5 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl o) (← c₁.toExprProof) (← c₂.toExprProof)
  | .simp_prefix isLhs tail c₁ c₂ =>
    let h ← mkAPrefix <| if isLhs then ``AC.diseq_simp_lhs_prefix else ``AC.diseq_simp_rhs_prefix
    let s' := if isLhs then c.lhs else c.rhs
    return mkApp9 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl tail) (← mkSeqDecl c₂.lhs) (← mkSeqDecl c₂.rhs) (← mkSeqDecl s')
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .simp_suffix isLhs head c₁ c₂ =>
    let h ← mkAPrefix <| if isLhs then ``AC.diseq_simp_lhs_suffix else ``AC.diseq_simp_rhs_suffix
    let s' := if isLhs then c.lhs else c.rhs
    return mkApp9 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl head) (← mkSeqDecl c₂.lhs) (← mkSeqDecl c₂.rhs) (← mkSeqDecl s')
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .simp_middle isLhs head tail c₁ c₂ =>
    let h ← mkAPrefix <| if isLhs then ``AC.diseq_simp_lhs_middle else ``AC.diseq_simp_rhs_middle
    let s' := if isLhs then c.lhs else c.rhs
    return mkApp10 h (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl head) (← mkSeqDecl tail) (← mkSeqDecl c₂.lhs) (← mkSeqDecl c₂.rhs) (← mkSeqDecl s')
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)
  | .simp_ac isLhs s c₁ c₂ =>
    let h ← mkACPrefix <| if isLhs then ``AC.diseq_simp_lhs_ac else ``AC.diseq_simp_rhs_ac
    let s' := if isLhs then c.lhs else c.rhs
    return mkApp9 h (← mkSeqDecl s) (← mkSeqDecl c₁.lhs) (← mkSeqDecl c₁.rhs) (← mkSeqDecl c₂.lhs) (← mkSeqDecl c₂.rhs) (← mkSeqDecl s')
      eagerReflBoolTrue (← c₁.toExprProof) (← c₂.toExprProof)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantd1e086770d705207da6f4cb093af459c1ac4d3e19ad8f909b27639171e6ed617.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeea013d8a2415f7bc914622da66304d9ef2f0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
