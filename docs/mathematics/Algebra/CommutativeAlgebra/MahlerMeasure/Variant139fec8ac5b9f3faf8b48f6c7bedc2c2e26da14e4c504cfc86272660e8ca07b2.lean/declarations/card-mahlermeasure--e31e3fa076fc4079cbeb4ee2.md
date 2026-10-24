# card_mahlerMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "902fac0cc8dda6b31573fc50a152887021a970c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:961b0ae3-b044-9240-b19e-7dad2d43f269",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc447240-446e-2285-5b79-6727ce48df7d",
  "kind": "lemma",
  "lexical_name": "card_mahlerMeasure",
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
  "slug": "card-mahlermeasure--e31e3fa076fc4079cbeb4ee2",
  "source": {
    "blob": "902fac0cc8dda6b31573fc50a152887021a970c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 73,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e31e3fa076fc4079cbeb4ee276fe212425a2acde5e3f765e71143cb27ac3f37a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc447240-446e-2285-5b79-6727ce48df7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma card_mahlerMeasure (n : ℕ) (B : ℝ≥0) :
    Set.Finite {p : ℤ[X] | p.natDegree ≤ n ∧ (p.map (castRingHom ℂ)).mahlerMeasure ≤ B} ∧
    Set.ncard {p : ℤ[X] | p.natDegree ≤ n ∧ (p.map (castRingHom ℂ)).mahlerMeasure ≤ B} ≤
    ∏ i : Fin (n + 1), (2 * ⌊n.choose i * B⌋₊ + 1) := by
  have h_card :
      Set.ncard {p : ℤ[X] | p.natDegree ≤ n ∧ ∀ i : Fin (n + 1), ‖p.coeff i‖ ≤ n.choose i * B} =
      ∏ i : Fin (n + 1), (2 * ⌊n.choose i * B⌋₊ + 1) := by
    simp_rw [norm_eq_abs, abs_le]
    rw [← boxPoly, ncard_boxPoly]
    simp only [ceil_neg, sub_neg_eq_add, ← two_mul]
    apply Finset.prod_congr rfl fun i _ ↦ ?_
    zify
    rw [toNat_of_nonneg (by positivity), ← natCast_floor_eq_floor (by positivity)]
    norm_cast
  rw [← h_card]
  have h_subset :
      {p : ℤ[X] | p.natDegree ≤ n ∧ (p.map (Int.castRingHom ℂ)).mahlerMeasure ≤ B} ⊆
      {p : ℤ[X] | p.natDegree ≤ n ∧ ∀ i : Fin (n + 1), ‖p.coeff i‖ ≤ n.choose i * B} := by
    gcongr with p hp
    intro hB d
    rw [show ‖p.coeff d‖ = ‖(p.map (castRingHom ℂ)).coeff d‖ by aesop]
    apply le_trans <| (p.map (castRingHom ℂ)).norm_coeff_le_choose_mul_mahlerMeasure d
    gcongr
    · exact mahlerMeasure_nonneg _
    · grind [Polynomial.natDegree_map_le]
  have h_finite : {p : ℤ[X]| p.natDegree ≤ n ∧
      ∀ (i : Fin (n + 1)), ‖p.coeff ↑i‖ ≤ ↑(n.choose ↑i) * ↑B}.Finite := by
    apply Set.finite_of_ncard_ne_zero
    rw [h_card, Finset.prod_ne_zero_iff]
    grind
  exact ⟨h_finite.subset h_subset, Set.ncard_le_ncard h_subset h_finite⟩

/-- **Northcott's Theorem:** the set of integer polynomials of degree at most `n` and
Mahler measure at most `B` is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant139fec8ac5b9f3faf8b48f6c7bedc2c2e26da14e4c504cfc86272660e8ca07b2.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `902fac0cc8dda6b31573fc50a152887021a970c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
