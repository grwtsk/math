# prefix_polynomial_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9840d8d1-4227-04b3-b614-e77dac2f665e",
  "kind": "theorem",
  "lexical_name": "prefix_polynomial_intervalIntegrable",
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
  "slug": "prefix-polynomial-intervalintegrable--90e21fcea74f4efb2575281e",
  "source": {
    "blob": "099cc47ffee11bda58458a4c3a13f6731c8389e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variantf9ead9ace95f8e1f8c995831060bc6577334141db9f03aa0e98299d8d77cd885.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90e21fcea74f4efb2575281e3a2235004e5ffb619be0e0b58969ce7a4aba86be",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variantf9ead9ace95f8e1f8c995831060bc6577334141db9f03aa0e98299d8d77cd885.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9840d8d1-4227-04b3-b614-e77dac2f665e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prefix_polynomial_intervalIntegrable (j : ℕ) {L : ℝ} (hL : 0 ≤ L) :
    IntervalIntegrable (fun t => actualHalfMangoldtPrefix t * (L - t) ^ j) volume 0 L := by
  have hi : IntervalIntegrable (fun t =>
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊,
        (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
          (if Real.log n ≤ t then (L - t) ^ j else 0)) volume 0 L := by
    have hs := IntervalIntegrable.sum (Finset.Icc 1 ⌊Real.exp L⌋₊) (fun n _ =>
      (intervalIntegrable_closed_step 0 L (Real.log n) (fun t : ℝ => (L - t) ^ j)
        ((by fun_prop : Continuous (fun t : ℝ => (L - t) ^ j)).intervalIntegrable 0 L)).const_mul
          (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)))
    have heq : (∑ n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊, fun t : ℝ =>
        (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
          (if Real.log n ≤ t then (L - t) ^ j else 0)) =
        (fun t : ℝ => ∑ n ∈ Finset.Icc 1 ⌊Real.exp L⌋₊,
          (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
            (if Real.log n ≤ t then (L - t) ^ j else 0)) := by
      ext t
      simp
    rw [heq] at hs
    exact hs
  apply hi.congr
  intro t ht
  dsimp only
  rw [halfPrefix_eq_steps ((uIoc_of_le hL ▸ ht).2), Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n _
  split_ifs <;> simp

/-- Closed finite Abel writes the entire edge moment as a positive prefix integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variantf9ead9ace95f8e1f8c995831060bc6577334141db9f03aa0e98299d8d77cd885.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F74c8e4e0d73ac11c274ActualSupportEdgeMangoldtMoments/Variantf9ead9ace95f8e1f8c995831060bc6577334141db9f03aa0e98299d8d77cd885.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `099cc47ffee11bda58458a4c3a13f6731c8389e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
