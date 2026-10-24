# converges_of_monotone_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18803ce4-be79-b286-526e-d24943955bd9",
  "kind": "lemma",
  "lexical_name": "converges_of_monotone_of_bounded",
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
  "slug": "converges-of-monotone-of-bounded--8312f4b78c194971df79c02f",
  "source": {
    "blob": "5d8e4a108d3a03a49634ba5ef0589ee2e76372b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 727,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb036f3e76225a39c4f60a25d8a028014263cacffc7fd60256c30d4ad44e8720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8312f4b78c194971df79c02f84212df7ce70ae4a082ffaec21669fc6a6d0f940",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb036f3e76225a39c4f60a25d8a028014263cacffc7fd60256c30d4ad44e8720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18803ce4-be79-b286-526e-d24943955bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 727–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma converges_of_monotone_of_bounded {f : ℕ → ℕ} (mono_f : Monotone f)
    {c : ℕ} (hc : ∀ n, f n ≤ c) : ∃ b N, ∀ n ≥ N, f n = b := by
  induction c with
  | zero => use 0, 0, fun n _ ↦ Nat.eq_zero_of_le_zero (hc n)
  | succ c ih =>
    by_cases h : ∀ n, f n ≤ c
    · exact ih h
    · push_neg at h; obtain ⟨N, hN⟩ := h
      replace hN : f N = c + 1 := by specialize hc N; omega
      use c + 1, N; intro n hn
      specialize mono_f hn; specialize hc n; omega

@[deprecated (since := "2024-11-27")]
alias Group.card_pow_eq_card_pow_card_univ_aux := Nat.stabilises_of_monotone

@[deprecated (since := "2024-11-27")]
alias Group.card_nsmul_eq_card_nsmulpow_card_univ_aux := Nat.stabilises_of_monotone
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb036f3e76225a39c4f60a25d8a028014263cacffc7fd60256c30d4ad44e8720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb036f3e76225a39c4f60a25d8a028014263cacffc7fd60256c30d4ad44e8720.lean#L727).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d8e4a108d3a03a49634ba5ef0589ee2e76372b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
