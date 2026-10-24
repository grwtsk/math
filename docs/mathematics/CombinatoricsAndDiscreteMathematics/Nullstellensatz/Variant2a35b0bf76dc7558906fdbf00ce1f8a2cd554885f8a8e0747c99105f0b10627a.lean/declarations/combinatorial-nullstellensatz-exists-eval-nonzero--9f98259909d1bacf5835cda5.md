# combinatorial_nullstellensatz_exists_eval_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d2d5482-ece2-410b-9a65-fa47cf30aba6",
  "kind": "theorem",
  "lexical_name": "combinatorial_nullstellensatz_exists_eval_nonzero",
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
  "slug": "combinatorial-nullstellensatz-exists-eval-nonzero--9f98259909d1bacf5835cda5",
  "source": {
    "blob": "dc190ad12a1abed88a02870c88a7e7a3a152d968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f98259909d1bacf5835cda5cc2f669d0999e013d47d083cd2a688b1a2e15174",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d2d5482-ece2-410b-9a65-fa47cf30aba6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem combinatorial_nullstellensatz_exists_eval_nonzero [IsDomain R]
    (f : MvPolynomial σ R)
    (t : σ →₀ ℕ) (ht : f.coeff t ≠ 0) (ht' : f.totalDegree = t.degree)
    (S : σ → Finset R) (htS : ∀ i, t i < #(S i)) :
    ∃ s : σ → R, (∀ i, s i ∈ S i) ∧ eval s f ≠ 0 := by
  let _ : LinearOrder σ := WellOrderingRel.isWellOrder.linearOrder
  classical
  by_contra Heval
  apply ht
  push_neg at Heval
  obtain ⟨h, hh, hf⟩ := combinatorial_nullstellensatz_exists_linearCombination S
    (fun i ↦ by rw [← Finset.card_pos]; exact Nat.zero_lt_of_lt (htS i)) f Heval
  rw [hf]
  rw [linearCombination_apply, Finsupp.sum, coeff_sum]
  apply Finset.sum_eq_zero
  intro i _
  set g := h i * Alon.P (S i) i with hg
  by_cases hi : h i = 0
  · simp [hi]
  have : g.totalDegree ≤ f.totalDegree := by
    rw [hg, mul_comm]
    exact hh i
  -- one could simplify this by proving `totalDegree_mul_eq` (at least in a domain)
  rw [hg, ← degree_degLexDegree,
    degree_mul_of_isRegular_right hi (by simp only [(Alon.monic_P ..).leadingCoeff_eq_one,
      isRegular_one]),
    Alon.degree_P, degree_add, degree_degLexDegree, degree_single, ht'] at this
  rw [smul_eq_mul, coeff_mul, Finset.sum_eq_zero]
  rintro ⟨p, q⟩ hpq
  simp only [Finset.mem_antidiagonal] at hpq
  simp only [mul_eq_zero, Classical.or_iff_not_imp_right]
  rw [← ne_eq, ← mem_support_iff]
  intro hq
  obtain ⟨e, hq', hq⟩ := Alon.of_mem_P_support _ _ _ hq
  apply coeff_eq_zero_of_totalDegree_lt
  rw [← Finsupp.degree]
  apply lt_of_add_lt_add_right (lt_of_le_of_lt this _)
  rw [← hpq, degree_add, add_lt_add_iff_left, hq, degree_single]
  apply lt_of_le_of_lt _ (htS i)
  simp [← hpq, hq]

end MvPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc190ad12a1abed88a02870c88a7e7a3a152d968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
