# properPrimePowerContribution_eq_square_add_higher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e19f124cbc567f86c2a2c15dd42c62245b68c01b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c6603a9-f9e1-0657-6567-dc853aa691b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58bb92a4-f10a-91a3-b447-8f7515a4f417",
  "kind": "theorem",
  "lexical_name": "properPrimePowerContribution_eq_square_add_higher",
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
  "slug": "properprimepowercontribution-eq-square-add-higher--1d923d117126918cb955bcd0",
  "source": {
    "blob": "e19f124cbc567f86c2a2c15dd42c62245b68c01b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 325,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d923d117126918cb955bcd0a4ea00741128876e2691f8b5cc36e328e4b70c9a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58bb92a4-f10a-91a3-b447-8f7515a4f417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properPrimePowerContribution_eq_square_add_higher (A : ℝ) :
    properPrimePowerContribution A = primeSquareContribution A + higherPrimePowerContribution A := by
  classical
  unfold properPrimePowerContribution primeSquareContribution higherPrimePowerContribution
  unfold primeSquareIndices higherPrimePowerIndices
  rw [Finset.sum_filter, Finset.sum_filter, Finset.sum_filter, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hs : IsPrimeSquare n
  · have hn := primeSquare_not_prime n hs
    have hh := primeSquare_not_higher n hs
    simp only [hs, hn, hh, not_false_eq_true, if_pos, if_false, add_zero]
  · by_cases hh : IsHigherPrimePower n
    · have hn := higher_not_prime n hh
      simp only [hs, hn, hh, not_false_eq_true, if_pos, if_false, zero_add]
    · by_cases hn : n.Prime
      · simp only [hs, hh, hn, not_true_eq_false, if_false, add_zero]
      · rw [nonprime_weight_zero_of_outside n hn hs hh]
        simp only [zero_div, zero_mul, ite_self, add_zero]

/-- The complete original prime-power term has exactly three arithmetic sectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Varianta1f7d4282dda69d7b06bfbabbc55a6d87621c0c7f652f2c10d271fb276c9acb6.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e19f124cbc567f86c2a2c15dd42c62245b68c01b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
