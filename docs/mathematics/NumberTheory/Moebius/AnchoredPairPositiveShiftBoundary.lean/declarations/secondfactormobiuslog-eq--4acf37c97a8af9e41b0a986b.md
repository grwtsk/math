# secondFactorMobiusLog_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08248df1-0107-f0d4-a9bc-76b86437f7b1",
  "kind": "theorem",
  "lexical_name": "secondFactorMobiusLog_eq",
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
  "slug": "secondfactormobiuslog-eq--4acf37c97a8af9e41b0a986b",
  "source": {
    "blob": "af3348cd0f04b43b0c57dab364efcdac95be9c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 165,
    "path": "GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4acf37c97a8af9e41b0a986b4b4bf709c2547d4cd0ac57ef08d9b7fda6cc8b33",
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

Occurrence: `result:08248df1-0107-f0d4-a9bc-76b86437f7b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem secondFactorMobiusLog_eq
    {n : ℕ} (hn : 0 < n) :
    (∑ p ∈ n.divisorsAntidiagonal,
      if p.1 = 2 then
        (ArithmeticFunction.moebius p.1 : ℝ) *
          (ArithmeticFunction.log p.2 : ℝ)
      else 0) =
      if 2 ∣ n then -Real.log ((n / 2 : ℕ) : ℝ) else 0 := by
  have hmu2 : (ArithmeticFunction.moebius 2 : ℝ) = -1 := by
    rw [ArithmeticFunction.moebius_apply_prime
      (by norm_num : Nat.Prime 2)]
    norm_num
  by_cases h2 : 2 ∣ n
  · have hmod : n % 2 = 0 := Nat.mod_eq_zero_of_dvd h2
    have hmul : 2 * (n / 2) = n := by omega
    have hmem : (2, n / 2) ∈ n.divisorsAntidiagonal := by
      simp [Nat.mem_divisorsAntidiagonal, hmul, ne_of_gt hn]
    rw [if_pos h2]
    calc
      (∑ p ∈ n.divisorsAntidiagonal,
        if p.1 = 2 then
          (ArithmeticFunction.moebius p.1 : ℝ) *
            (ArithmeticFunction.log p.2 : ℝ)
        else 0) =
          (ArithmeticFunction.moebius 2 : ℝ) *
            (ArithmeticFunction.log (n / 2) : ℝ) := by
        apply Finset.sum_eq_single (2, n / 2)
        · intro p hp hpne
          by_cases hfirst : p.1 = 2
          · have hprod : p.1 * p.2 = n :=
              (Nat.mem_divisorsAntidiagonal.mp hp).1
            have hsnd : p.2 = n / 2 := by
              rw [hfirst] at hprod
              omega
            exact (hpne (Prod.ext hfirst hsnd)).elim
          · simp [hfirst]
        · intro hnot
          exact (hnot hmem).elim
      _ = -Real.log ((n / 2 : ℕ) : ℝ) := by
        rw [hmu2, ArithmeticFunction.log_apply]
        ring
  · rw [if_neg h2]
    apply Finset.sum_eq_zero
    intro p hp
    by_cases hfirst : p.1 = 2
    · have hprod : p.1 * p.2 = n :=
        (Nat.mem_divisorsAntidiagonal.mp hp).1
      have hdvd : 2 ∣ n := by
        refine ⟨p.2, ?_⟩
        simpa [hfirst] using hprod.symm
      exact (h2 hdvd).elim
    · simp [hfirst]

/-- The complete a<3 correction, expressed with NO missing factors and the
literal integrally-indexed logarithm, not a numerical approximation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3348cd0f04b43b0c57dab364efcdac95be9c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
