# abs_fullMatrixEntry_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:962851b6-3c84-057c-6a69-b3cf52a7af6a",
  "kind": "theorem",
  "lexical_name": "abs_fullMatrixEntry_le_log",
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
  "slug": "abs-fullmatrixentry-le-log--c08c1a04e15a43f9718ad200",
  "source": {
    "blob": "9a281dc5c927ca05646a735f813809fbaab389da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c08c1a04e15a43f9718ad20089ec1d875a2706ff9a6c32d0b6d5b5bca2cc3a5b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:962851b6-3c84-057c-6a69-b3cf52a7af6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_fullMatrixEntry_le_log {X n : ℕ} (hX : 1 ≤ X) (hn : n ≤ 2*X)
    (F : CanonicalFourFamily) (c : ℕ) :
    |canonicalFourFamilyGreenMatrixEntry X n F c| ≤ Real.log (2*(X:ℝ)) := by
  classical
  let P (p : ℕ × ℕ) := p.1 ∈ anchoredDyadicSourceIndices X ∧
    0 < (anchoredMobiusPair p.1).h ∧ F = canonicalFourFamilyOfAnchor p.1 ∧
    c = (anchoredMobiusPair p.1).center
  have hlog : 0 ≤ Real.log (2*(X:ℝ)) := Real.log_nonneg (by exact_mod_cast (by omega : 1 ≤ 2*X))
  by_cases he : ∃ p ∈ n.divisorsAntidiagonal, P p
  · obtain ⟨p,hp,hP⟩ := he
    have hs : canonicalFourFamilyGreenMatrixEntry X n F c =
        anchoredPairSign p.1 * (ArithmeticFunction.log p.2 : ℝ) := by
      unfold canonicalFourFamilyGreenMatrixEntry
      rw [Finset.sum_eq_single p]
      · exact if_pos hP
      · intro q hq hqp
        by_cases hQ : P q
        · have hqp' := selected_pair_unique hq hp (hQ.2.2.1.symm.trans hP.2.2.1)
            (hQ.2.2.2.symm.trans hP.2.2.2)
          exact (hqp hqp').elim
        · exact if_neg hQ
      · intro hnp
        exact (hnp hp).elim
    have hprod := Nat.mem_divisorsAntidiagonal.mp hp
    have hp1 : 0 < p.1 := by
      by_contra h
      have hz : p.1 = 0 := by omega
      rw [hz, zero_mul] at hprod
      exact hprod.2 hprod.1.symm
    have hp2 : 0 < p.2 := by
      by_contra h
      have hz : p.2 = 0 := by omega
      rw [hz, mul_zero] at hprod
      exact hprod.2 hprod.1.symm
    have hp2n : p.2 ≤ n := by
      rw [← hprod.1]
      exact Nat.le_mul_of_pos_left _ hp1
    rw [hs, abs_mul]
    have hsabs : |anchoredPairSign p.1| = 1 := by unfold anchoredPairSign; split_ifs <;> norm_num
    rw [hsabs, one_mul]
    change |Real.log (p.2:ℝ)| ≤ _
    rw [abs_of_nonneg (Real.log_nonneg (by exact_mod_cast hp2))]
    exact Real.log_le_log (by exact_mod_cast hp2) (by exact_mod_cast hp2n.trans hn)
  · have hz : canonicalFourFamilyGreenMatrixEntry X n F c = 0 := by
      apply Finset.sum_eq_zero
      intro p hp
      exact if_neg (fun h => he ⟨p,hp,h⟩)
    simpa only [hz, abs_zero] using hlog

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyScaleBounds.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a281dc5c927ca05646a735f813809fbaab389da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
