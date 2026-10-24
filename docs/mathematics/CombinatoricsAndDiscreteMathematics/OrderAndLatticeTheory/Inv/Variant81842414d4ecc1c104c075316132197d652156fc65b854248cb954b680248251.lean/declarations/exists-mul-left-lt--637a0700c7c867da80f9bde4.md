# exists_mul_left_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eddf790a-d2db-f3c3-2041-7344062707de",
  "kind": "lemma",
  "lexical_name": "exists_mul_left_lt",
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
  "slug": "exists-mul-left-lt--637a0700c7c867da80f9bde4",
  "source": {
    "blob": "bf78b8ab2e2b42c8e0d186bb189c53ef1cd1ebc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 499,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:637a0700c7c867da80f9bde42da647bbdd137c4b0c683893e745b749dc067724",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eddf790a-d2db-f3c3-2041-7344062707de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_mul_left_lt (h₁ : a ≠ 0 ∨ b ≠ ⊤) (h₂ : a ≠ ⊤ ∨ 0 < b) (hc : a * b < c) :
    ∃ a' ∈ Ioo a ⊤, a' * b < c := by
  rcases eq_top_or_lt_top a with rfl | a_top
  · rw [ne_self_iff_false, false_or] at h₂; rw [top_mul_of_pos h₂] at hc; exact (not_top_lt hc).rec
  rcases le_or_lt b 0 with b0 | b0
  · obtain ⟨a', aa', a_top'⟩ := exists_between a_top
    exact ⟨a', mem_Ioo.2 ⟨aa', a_top'⟩, lt_of_le_of_lt (mul_le_mul_of_nonpos_right aa'.le b0) hc⟩
  rcases eq_top_or_lt_top b with rfl | b_top
  · rcases lt_trichotomy a 0 with a0 | rfl | a0
    · obtain ⟨a', aa', a0'⟩ := exists_between a0
      rw [mul_top_of_neg a0] at hc
      refine ⟨a', mem_Ioo.2 ⟨aa', lt_top_of_lt a0'⟩, mul_top_of_neg a0' ▸ hc⟩
    · rw [ne_self_iff_false, ne_self_iff_false, false_or] at h₁; exact h₁.rec
    · rw [mul_top_of_pos a0] at hc; exact (not_top_lt hc).rec
  · obtain ⟨a', aa', hc'⟩ := exists_between ((lt_div_iff b0 b_top.ne).2 hc)
    exact ⟨a', mem_Ioo.2 ⟨aa', lt_top_of_lt hc'⟩, (lt_div_iff b0 b_top.ne).1 hc'⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variant81842414d4ecc1c104c075316132197d652156fc65b854248cb954b680248251.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf78b8ab2e2b42c8e0d186bb189c53ef1cd1ebc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
