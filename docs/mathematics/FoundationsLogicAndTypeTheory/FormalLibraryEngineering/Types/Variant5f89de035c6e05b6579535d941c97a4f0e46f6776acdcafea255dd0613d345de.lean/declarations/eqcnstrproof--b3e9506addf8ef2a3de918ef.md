# EqCnstrProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ce3ace917334851b2275f654b731d4ceebd4bf3aa68b70c5afbdafa1028a921",
  "kind": "inductive",
  "lexical_name": "EqCnstrProof",
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
  "slug": "eqcnstrproof--b3e9506addf8ef2a3de918ef",
  "source": {
    "blob": "2e55d27af69829f4a60e8ced929867d0205a68ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3e9506addf8ef2a3de918efd2536f1474128a047211e04276841b41dee1dfa5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ce3ace917334851b2275f654b731d4ceebd4bf3aa68b70c5afbdafa1028a921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive EqCnstrProof where
  | core (a b : Expr) (ea eb : AC.Expr)
  | erase_dup (c : EqCnstr)
  | erase0 (c : EqCnstr)
  | swap (c : EqCnstr)
  | simp_exact (lhs : Bool) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | simp_ac (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | simp_suffix (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | simp_prefix (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | simp_middle (lhs : Bool) (s₁ s₂ : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | superpose_ac (r₁ c r₂ : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | superpose (p s c : AC.Seq) (c₁ : EqCnstr) (c₂ : EqCnstr)
  | superpose_ac_idempotent (x : AC.Var) (c₁ : EqCnstr)
  | superpose_head_idempotent (x : AC.Var) (c₁ : EqCnstr)
  | superpose_tail_idempotent (x : AC.Var) (c₁ : EqCnstr)
  -- The following constructors are for equality propagation
  | refl (s : AC.Seq)
  | erase_dup_rhs (c : EqCnstr)
  | erase0_rhs (c : EqCnstr)
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e55d27af69829f4a60e8ced929867d0205a68ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
