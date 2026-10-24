# Nat.eq_sq_add_sq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a25de4cc-241d-609a-211b-cb267f0c38d4",
  "kind": "theorem",
  "lexical_name": "Nat.eq_sq_add_sq_iff",
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
  "slug": "nat-eq-sq-add-sq-iff--8df9097221063ab2bc102e81",
  "source": {
    "blob": "a00b526b78c60cabdec3570501b6aaf21f665caa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 221,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8df9097221063ab2bc102e811f4182be6084b01643b1ae63978f9b8075953c5c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a25de4cc-241d-609a-211b-cb267f0c38d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.eq_sq_add_sq_iff {n : ℕ} :
    (∃ x y : ℕ, n = x ^ 2 + y ^ 2) ↔ ∀ {q : ℕ}, q.Prime → q % 4 = 3 → Even (padicValNat q n) := by
  rcases n.eq_zero_or_pos with (rfl | hn₀)
  · exact ⟨fun _ q _ _ => (@padicValNat.zero q).symm ▸ even_zero, fun _ => ⟨0, 0, rfl⟩⟩
  -- now `0 < n`
  rw [Nat.eq_sq_add_sq_iff_eq_sq_mul]
  refine' ⟨fun H q hq h => _, fun H => _⟩
  · obtain ⟨a, b, h₁, h₂⟩ := H
    have hqb := padicValNat.eq_zero_of_not_dvd fun hf =>
      (hq.mod_four_ne_three_of_dvd_isSquare_neg_one hf h₂) h
    have hab : a ^ 2 * b ≠ 0 := h₁ ▸ hn₀.ne'
    have ha₂ := left_ne_zero_of_mul hab
    have ha := mt sq_eq_zero_iff.mpr ha₂
    have hb := right_ne_zero_of_mul hab
    haveI hqi : Fact q.Prime := ⟨hq⟩
    simp_rw [h₁, padicValNat.mul ha₂ hb, padicValNat.pow 2 ha, hqb, add_zero]
    exact even_two_mul _
  · obtain ⟨b, a, hb₀, ha₀, hab, hb⟩ := Nat.sq_mul_squarefree_of_pos hn₀
    refine' ⟨a, b, hab.symm, (ZMod.isSquare_neg_one_iff hb).mpr fun {q} hqp hqb hq4 => _⟩
    refine' Nat.odd_iff_not_even.mp _ (H hqp hq4)
    have hqb' : padicValNat q b = 1 :=
      b.factorization_def hqp ▸ le_antisymm (Nat.Squarefree.factorization_le_one _ hb)
        ((hqp.dvd_iff_one_le_factorization hb₀.ne').mp hqb)
    haveI hqi : Fact q.Prime := ⟨hqp⟩
    simp_rw [← hab, padicValNat.mul (pow_ne_zero 2 ha₀.ne') hb₀.ne', hqb',
      padicValNat.pow 2 ha₀.ne']
    exact odd_two_mul_add_one _
#align nat.eq_sq_add_sq_iff Nat.eq_sq_add_sq_iff

end Main
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a00b526b78c60cabdec3570501b6aaf21f665caa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
