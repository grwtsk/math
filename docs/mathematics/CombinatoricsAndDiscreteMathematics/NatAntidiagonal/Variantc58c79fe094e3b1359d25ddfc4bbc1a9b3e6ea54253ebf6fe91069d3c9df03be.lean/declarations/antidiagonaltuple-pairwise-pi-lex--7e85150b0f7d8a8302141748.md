# antidiagonalTuple_pairwise_pi_lex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2768c8d1-17e3-2cd8-763c-39d2d73c51c5",
  "kind": "theorem",
  "lexical_name": "antidiagonalTuple_pairwise_pi_lex",
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
  "slug": "antidiagonaltuple-pairwise-pi-lex--7e85150b0f7d8a8302141748",
  "source": {
    "blob": "1dd962be15d82d98918b8417847fc3ced864a060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e85150b0f7d8a8302141748f1e0f838b8a4528f3c92fd2fb952b25adb92bf4c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2768c8d1-17e3-2cd8-763c-39d2d73c51c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antidiagonalTuple_pairwise_pi_lex :
    ∀ k n, (antidiagonalTuple k n).Pairwise (Pi.Lex (· < ·) @fun _ => (· < ·))
  | 0, 0 => List.pairwise_singleton _ _
  | 0, _ + 1 => List.Pairwise.nil
  | k + 1, n => by
    simp_rw [antidiagonalTuple, List.pairwise_flatMap, List.pairwise_map, List.mem_map,
      forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
    simp only [mem_antidiagonal, Prod.forall, and_imp, forall_apply_eq_imp_iff₂]
    simp only [Fin.pi_lex_lt_cons_cons, eq_self_iff_true, true_and, lt_self_iff_false,
      false_or]
    refine ⟨fun _ _ _ => antidiagonalTuple_pairwise_pi_lex k _, ?_⟩
    induction' n with n n_ih
    · rw [antidiagonal_zero]
      exact List.pairwise_singleton _ _
    · rw [antidiagonal_succ, List.pairwise_cons, List.pairwise_map]
      refine ⟨fun p hp x hx y hy => ?_, ?_⟩
      · rw [List.mem_map, Prod.exists] at hp
        obtain ⟨a, b, _, rfl : (Nat.succ a, b) = p⟩ := hp
        exact Or.inl (Nat.zero_lt_succ _)
      dsimp
      simp_rw [Nat.succ_inj, Nat.succ_lt_succ_iff]
      exact n_ih

end List.Nat

/-! ### Multisets -/


namespace Multiset.Nat

/-- `Multiset.Nat.antidiagonalTuple k n` is a multiset of `k`-tuples summing to `n` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dd962be15d82d98918b8417847fc3ced864a060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
