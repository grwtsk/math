# dampedCoefficient_sum_eq_correctedNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0245d039b98db17cb6558be503e4b83d8a3d110d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f909b86beb6aaa722ef71894b60e93eaafa063a6b6b818f6f84c64d3d175faa0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73c1b5ce-7c37-1624-71c5-2757cf04c575",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78a06c03-69c2-199c-e981-064e3b2a68a7",
  "kind": "theorem",
  "lexical_name": "dampedCoefficient_sum_eq_correctedNumerator",
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
  "slug": "dampedcoefficient-sum-eq-correctednumerator--dbb65da44e728a139a9b0ad5",
  "source": {
    "blob": "0245d039b98db17cb6558be503e4b83d8a3d110d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 152,
    "path": "GRWTSK/NumberTheory/MobiusEndpointBudgetStatements/Variantf909b86beb6aaa722ef71894b60e93eaafa063a6b6b818f6f84c64d3d175faa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbb65da44e728a139a9b0ad5daa593617445f96b0bb94c291c7143cfcf6f3291",
  "verification": {
    "reference": "docs/verification/NumberTheory/MobiusEndpointBudgetStatements/Variantf909b86beb6aaa722ef71894b60e93eaafa063a6b6b818f6f84c64d3d175faa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78a06c03-69c2-199c-e981-064e3b2a68a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedCoefficient_sum_eq_correctedNumerator (X : ℕ) (ε : ℝ) (z : ℂ)
    (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) *
      Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ))) =
      correctedNumerator X (z + (ε : ℂ)) := by
  have hX0 : 0 < (X : ℝ) := by exact_mod_cast (show 0 < X by omega)
  have ha : (∑ d ∈ Finset.Icc 1 X,
      ((ArithmeticFunction.moebius d : ℂ) * (Real.exp (-ε * Real.log (d : ℝ)) : ℂ)) *
        Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ))) =
      dirichletNumerator X (z + (ε : ℂ)) := by
    apply Finset.sum_congr rfl
    intro d _
    rw [mul_assoc, damping_exp]
  have hb : (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
      (mobiusReciprocalSum X : ℂ) *
        Complex.exp (-(1 / 2 + z) * (Real.log (X : ℝ) : ℂ)) =
      (mobiusReciprocalSum X : ℂ) *
        Complex.exp ((1 / 2 - (z + (ε : ℂ))) * (Real.log (X : ℝ) : ℂ)) := by
    have hxexp : (X : ℂ) = Complex.exp (Real.log (X : ℝ) : ℂ) := by
      rw [← Complex.ofReal_exp, Real.exp_log hX0]
      simp
    calc
      _ = (mobiusReciprocalSum X : ℂ) * ((X : ℂ) *
          ((Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
            Complex.exp (-(1 / 2 + z) * (Real.log (X : ℝ) : ℂ)))) := by ring
      _ = _ := by
        rw [damping_exp, hxexp, ← Complex.exp_add]
        congr 2
        ring
  have hform : (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) *
      Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ))) =
      ∑ d ∈ Finset.Icc 1 X,
        (((ArithmeticFunction.moebius d : ℂ) * (Real.exp (-ε * Real.log (d : ℝ)) : ℂ)) *
          Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ)) -
        (if d = X then (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
          (mobiusReciprocalSum X : ℂ) *
            Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ)) else 0)) := by
    apply Finset.sum_congr rfl
    intro d _
    by_cases hd : d = X
    · simp [dampedCoefficient, hd, sub_mul]
    · simp [dampedCoefficient, hd]
  rw [hform, Finset.sum_sub_distrib, ha]
  have hsum : (∑ d ∈ Finset.Icc 1 X,
      if d = X then (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
        (mobiusReciprocalSum X : ℂ) *
          Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ)) else 0) =
      (X : ℂ) * (Real.exp (-ε * Real.log (X : ℝ)) : ℂ) *
        (mobiusReciprocalSum X : ℂ) *
          Complex.exp (-(1 / 2 + z) * (Real.log (X : ℝ) : ℂ)) := by simp [hX]
  rw [hsum, hb]
  rfl

end
end MobiusEndpointBudgetScratch

open MobiusEndpointBudgetScratch Finset MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
open FormalResearch.RiemannHypothesis.SourceComparison.MobiusPoleNumerator
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/MobiusEndpointBudgetStatements/Variantf909b86beb6aaa722ef71894b60e93eaafa063a6b6b818f6f84c64d3d175faa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/MobiusEndpointBudgetStatements/Variantf909b86beb6aaa722ef71894b60e93eaafa063a6b6b818f6f84c64d3d175faa0.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0245d039b98db17cb6558be503e4b83d8a3d110d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
