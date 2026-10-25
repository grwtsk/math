# vaughanTypeIIScalar_eq_restricted_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0eaf9778db5361fb950359f7330404bcca452a43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42795c66cc7d773c63498ec44c2ce3a5eefaea8d3098d4d10ce25ef80ffa7421.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:755ecbee-27ae-abda-36df-d0cb86de5a10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86ac840b-f964-3539-913b-415ecd6440e0",
  "kind": "theorem",
  "lexical_name": "vaughanTypeIIScalar_eq_restricted_sum",
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
  "slug": "vaughantypeiiscalar-eq-restricted-sum--b2b2ef6f9b7bf2f4daf502a6",
  "source": {
    "blob": "0eaf9778db5361fb950359f7330404bcca452a43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 460,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant42795c66cc7d773c63498ec44c2ce3a5eefaea8d3098d4d10ce25ef80ffa7421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2b2ef6f9b7bf2f4daf502a6c523f939f0a9b45f93c65a22e70ce0c8cf922395",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant42795c66cc7d773c63498ec44c2ce3a5eefaea8d3098d4d10ce25ef80ffa7421.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86ac840b-f964-3539-913b-415ecd6440e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vaughanTypeIIScalar_eq_restricted_sum (N : ℕ)
    (n : VaughanScaleIndex N) :
    vaughanTypeIIScalar (vaughanFourthRootCutoff N)
        (vaughanFourthRootCutoff N) n =
      -∑ q ∈ n.1.divisorsAntidiagonal with
        vaughanFourthRootCutoff N < q.1 ∧
          vaughanFourthRootCutoff N < q.2,
        ArithmeticFunction.vonMangoldt q.1 *
          vaughanDivisorCoefficient (vaughanFourthRootCutoff N) q.2 := by
  let U := vaughanFourthRootCutoff N
  by_cases hn0 : n.1 = 0
  · simp [vaughanTypeIIScalar, hn0]
  · have hnmem : (n.1, 1) ∈ n.1.divisorsAntidiagonal :=
      Nat.mem_divisorsAntidiagonal.mpr ⟨by simp, hn0⟩
    have hfirst :
        (∑ q ∈ n.1.divisorsAntidiagonal,
          if q.2 = 1 then
            vaughanMangoldtAbove U q.1 *
              vaughanDivisorCoefficient U q.2 else 0) =
          vaughanMangoldtAbove U n.1 := by
      rw [Finset.sum_eq_single (n.1, 1)]
      · simp [vaughanDivisorCoefficient_one
          (show 1 ≤ U from (two_le_vaughanFourthRootCutoff N).trans' (by decide))]
      · intro q hq hne
        by_cases hq2 : q.2 = 1
        · exfalso
          apply hne
          have hprod := (Nat.mem_divisorsAntidiagonal.mp hq).1
          apply Prod.ext
          · simpa [hq2] using hprod
          · exact hq2
        · simp [hq2]
      · intro hnot
        exact (hnot hnmem).elim
    unfold vaughanTypeIIScalar
    simp only [ArithmeticFunction.mul_apply]
    rw [show vaughanMangoldtAbove (vaughanFourthRootCutoff N) =
      vaughanMangoldtAbove U from rfl]
    rw [show vaughanDivisorCoefficient (vaughanFourthRootCutoff N) =
      vaughanDivisorCoefficient U from rfl]
    rw [← hfirst]
    congr 1
    rw [← Finset.sum_sub_distrib]
    rw [Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro q hq
    have hq2pos := Nat.pos_of_ne_zero
      (Nat.right_ne_zero_of_mem_divisorsAntidiagonal hq)
    change vaughanMangoldtAbove U q.1 * vaughanDivisorCoefficient U q.2 -
        (if q.2 = 1 then
          vaughanMangoldtAbove U q.1 * vaughanDivisorCoefficient U q.2 else 0) =
      if U < q.1 ∧ U < q.2 then
        ArithmeticFunction.vonMangoldt q.1 * vaughanDivisorCoefficient U q.2 else 0
    by_cases hq2one : q.2 = 1
    · have hnotlarge : ¬ U < q.2 := by
        rw [hq2one]
        have hU : 1 ≤ U := le_trans (by decide)
          (show 2 ≤ U from two_le_vaughanFourthRootCutoff N)
        omega
      simp only [if_pos hq2one, hnotlarge, and_false, if_false]
      ring
    · have hq2gt : 1 < q.2 := lt_of_le_of_ne (Nat.one_le_iff_ne_zero.mpr
          (Nat.ne_of_gt hq2pos)) (Ne.symm hq2one)
      by_cases hq1large : U < q.1
      · by_cases hq2large : U < q.2
        · simp [vaughanMangoldtAbove_apply, hq1large, hq2large, hq2one]
        · have hq2le : q.2 ≤ U := Nat.le_of_not_gt hq2large
          rw [vaughanDivisorCoefficient_eq_zero hq2gt hq2le]
          simp [vaughanMangoldtAbove_apply, hq1large, hq2large, hq2one]
      · simp [vaughanMangoldtAbove_apply, hq1large, hq2one]

/-- The expanded effective Type II atom fiber equals the Type II component
of the exact twisted Vaughan identity. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant42795c66cc7d773c63498ec44c2ce3a5eefaea8d3098d4d10ce25ef80ffa7421.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ConductorThreeTwistedVaughan/Variant42795c66cc7d773c63498ec44c2ce3a5eefaea8d3098d4d10ce25ef80ffa7421.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eaf9778db5361fb950359f7330404bcca452a43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
