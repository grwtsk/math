# exists_root_sum_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cf2c1f6-94c0-03b4-534d-883083e3d16f",
  "kind": "theorem",
  "lexical_name": "exists_root_sum_quadratic",
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
  "slug": "exists-root-sum-quadratic--91270e091276d3a9502cb03a",
  "source": {
    "blob": "d20f5461432043b353465bf024bd2e6b857d2dd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 84,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91270e091276d3a9502cb03a408dde6a1411f4323f1625a2d2bfb5c760758a1a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cf2c1f6-94c0-03b4-534d-883083e3d16f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_root_sum_quadratic [Fintype R] {f g : R[X]} (hf2 : degree f = 2) (hg2 : degree g = 2)
    (hR : Fintype.card R % 2 = 1) : ∃ a b, f.eval a + g.eval b = 0 :=
  letI := Classical.decEq R
  suffices ¬Disjoint (univ.image fun x : R => eval x f)
    (univ.image fun x : R => eval x (-g)) by
    simp only [disjoint_left, mem_image] at this
    push_neg at this
    rcases this with ⟨x, ⟨a, _, ha⟩, ⟨b, _, hb⟩⟩
    exact ⟨a, b, by rw [ha, ← hb, eval_neg, neg_add_self]⟩
  fun hd : Disjoint _ _ =>
  lt_irrefl (2 * ((univ.image fun x : R => eval x f) ∪ univ.image fun x : R => eval x (-g)).card) <|
    calc 2 * ((univ.image fun x : R => eval x f) ∪ univ.image fun x : R => eval x (-g)).card
        ≤ 2 * Fintype.card R := Nat.mul_le_mul_left _ (Finset.card_le_univ _)
      _ = Fintype.card R + Fintype.card R := (two_mul _)
      _ < natDegree f * (univ.image fun x : R => eval x f).card +
            natDegree (-g) * (univ.image fun x : R => eval x (-g)).card :=
        (add_lt_add_of_lt_of_le
          (lt_of_le_of_ne (card_image_polynomial_eval (by rw [hf2]; exact by decide))
            (mt (congr_arg (· % 2)) (by simp [natDegree_eq_of_degree_eq_some hf2, hR])))
          (card_image_polynomial_eval (by rw [degree_neg, hg2]; exact by decide)))
      _ = 2 * ((univ.image fun x : R => eval x f) ∪ univ.image fun x : R => eval x (-g)).card := by
        rw [card_disjoint_union hd];
          simp [natDegree_eq_of_degree_eq_some hf2, natDegree_eq_of_degree_eq_some hg2, mul_add]

#align finite_field.exists_root_sum_quadratic FiniteField.exists_root_sum_quadratic

end Polynomial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d20f5461432043b353465bf024bd2e6b857d2dd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
