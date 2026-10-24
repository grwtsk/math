# firstFactorMobiusLog_eq_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d3291cf-d464-1dc4-0b78-176131123c27",
  "kind": "theorem",
  "lexical_name": "firstFactorMobiusLog_eq_log",
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
  "slug": "firstfactormobiuslog-eq-log--bc0f7329c20b7d90d474b9ec",
  "source": {
    "blob": "af3348cd0f04b43b0c57dab364efcdac95be9c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 131,
    "path": "GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc0f7329c20b7d90d474b9ec5b87a7f8ab6ea0bfbba09211e96ac9b26149d389",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d3291cf-d464-1dc4-0b78-176131123c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem firstFactorMobiusLog_eq_log
    {n : ℕ} (hn : 0 < n) :
    (∑ p ∈ n.divisorsAntidiagonal,
      if p.1 = 1 then
        (ArithmeticFunction.moebius p.1 : ℝ) *
          (ArithmeticFunction.log p.2 : ℝ)
      else 0) = Real.log (n : ℝ) := by
  have hmem : (1, n) ∈ n.divisorsAntidiagonal := by
    simp [Nat.mem_divisorsAntidiagonal, ne_of_gt hn]
  calc
    (∑ p ∈ n.divisorsAntidiagonal,
      if p.1 = 1 then
        (ArithmeticFunction.moebius p.1 : ℝ) *
          (ArithmeticFunction.log p.2 : ℝ)
      else 0) =
        (ArithmeticFunction.moebius 1 : ℝ) *
          (ArithmeticFunction.log n : ℝ) := by
      apply Finset.sum_eq_single (1, n)
      · intro p hp hpne
        by_cases hpone : p.1 = 1
        · have hprod : p.1 * p.2 = n :=
            (Nat.mem_divisorsAntidiagonal.mp hp).1
          have hsnd : p.2 = n := by
            rw [hpone] at hprod
            simpa using hprod
          exact (hpne (Prod.ext hpone hsnd)).elim
        · simp [hpone]
      · intro hnot
        exact (hnot hmem).elim
    _ = Real.log (n : ℝ) := by
      rw [ArithmeticFunction.moebius_apply_one]
      simp [ArithmeticFunction.log_apply]

/-- The a=2 boundary is -log(n/2) precisely when 2|n, and 0 otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3348cd0f04b43b0c57dab364efcdac95be9c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
