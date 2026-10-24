# exists_natCast_add_one_lt_pow_of_one_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8a1cc68-cec5-16f5-34a5-10f4bba62208",
  "kind": "lemma",
  "lexical_name": "exists_natCast_add_one_lt_pow_of_one_lt",
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
  "slug": "exists-natcast-add-one-lt-pow-of-one-lt--2ed05b1ad02427fd8eecdaac",
  "source": {
    "blob": "43dbdb7e81fa1ecd3edc7bd2e134da54d1a3909d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 374,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant5da847145edc6e849c77c5c874305f3cc28a7b831906685c8957b6d5450a1610.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ed05b1ad02427fd8eecdaac44b4556a8a4af528851edf1a4ec9ea3302944d93",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant5da847145edc6e849c77c5c874305f3cc28a7b831906685c8957b6d5450a1610.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8a1cc68-cec5-16f5-34a5-10f4bba62208`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_natCast_add_one_lt_pow_of_one_lt (ha : 1 < a) : ∃ m : ℕ, (m + 1 : ℝ) < a ^ m := by
  obtain ⟨k, posk, hk⟩ : ∃ k : ℕ, 0 < k ∧ 1 / k + 1 < a := by
    contrapose! ha
    refine le_of_forall_lt_rat_imp_le ?_
    intro q hq
    refine (ha q.den (by positivity)).trans ?_
    rw [← le_sub_iff_add_le, div_le_iff₀ (by positivity), sub_mul, one_mul]
    norm_cast at hq ⊢
    rw [← q.num_div_den, one_lt_div (by positivity)] at hq
    rw [q.mul_den_eq_num]
    norm_cast at hq ⊢
    omega
  use 2 * k ^ 2
  calc
    ((2 * k ^ 2 : ℕ) + 1 : ℝ) ≤ 2 ^ (2 * k) := mod_cast Nat.two_mul_sq_add_one_le_two_pow_two_mul _
    _ = (1 / k * k + 1 : ℝ) ^ (2 * k) := by simp [posk.ne']; norm_num
    _ ≤ ((1 / k + 1) ^ k : ℝ) ^ (2 * k) := by gcongr; exact mul_add_one_le_add_one_pow (by simp) _
    _ = (1 / k + 1 : ℝ) ^ (2 * k ^ 2) := by rw [← pow_mul, mul_left_comm, sq]
    _ < a ^ (2 * k ^ 2) := by gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant5da847145edc6e849c77c5c874305f3cc28a7b831906685c8957b6d5450a1610.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant5da847145edc6e849c77c5c874305f3cc28a7b831906685c8957b6d5450a1610.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43dbdb7e81fa1ecd3edc7bd2e134da54d1a3909d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
