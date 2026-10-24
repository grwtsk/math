# perm_of_beqModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:318b9a68-9e69-7d1f-7ebd-aa601a820c59",
  "kind": "theorem",
  "lexical_name": "perm_of_beqModel",
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
  "slug": "perm-of-beqmodel--c2c04b3338322379f07c7f44",
  "source": {
    "blob": "ddcb189e0bb3710a43ea511e7a5fcd0941f0a100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 7775,
    "line": 7747,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2c04b3338322379f07c7f4453cd40e96d13536a831c45c004f3e8194fb2738a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:318b9a68-9e69-7d1f-7ebd-aa601a820c59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7747–7775.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perm_of_beqModel [BEq α] [LawfulBEq α] [∀ k, BEq (β k)] [∀ k, LawfulBEq (β k)] {l₁ l₂ : List ((a : α) × β a)} (hl₁ : DistinctKeys l₁) (hl₂ : DistinctKeys l₂) : beqModel l₁ l₂ → l₁.Perm l₂ := by
  simp only [beqModel, ne_eq, ite_not, Bool.if_false_right, Bool.and_eq_true, decide_eq_true_eq,
    List.all_eq_true, beq_iff_eq, and_imp]
  intro he hyp
  apply getValueCast?_ext hl₁ hl₂
  intro a
  have hyp2 : ∀ (a : α) (h : containsKey a l₁), (getValueCast? a l₂ == getValueCast? a l₁) = true := by
      intro a mem
      rw [getValueCast?_eq_some_getValueCast mem]
      apply beq_of_eq
      specialize hyp ⟨a, getValueCast a l₁ mem⟩ (List.getValueCast_mem mem)
      simpa using hyp
  by_cases hc₁ : containsKey a l₁
  case pos =>
    exact eq_of_beq <| BEq.symm <| hyp2 _ hc₁
  case neg =>
    rw [Bool.not_eq_true] at hc₁
    by_cases hc₂ : containsKey a l₂
    case pos =>
      suffices (∀ (a : α), containsKey a l₁ = true → containsKey a l₂ = true) by
        rw [containsKey_of_length_eq hl₁ hl₂ he.symm this a hc₂] at hc₁
        contradiction
      intro k' mem
      apply List.containsKey_of_getValueCast?_eq_some
      simpa [getValueCast?_eq_some_getValueCast mem] using eq_of_beq <| hyp2 k' mem
    case neg =>
      rw [Bool.not_eq_true] at hc₂
      rw [getValueCast?_eq_none hc₁, getValueCast?_eq_none hc₂]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean#L7747).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcb189e0bb3710a43ea511e7a5fcd0941f0a100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
