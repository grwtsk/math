# sinh_cosh_deriv_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 835,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a09a5d3-90cd-2b2b-88ea-c509093b1d53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:132a3f23-7098-14da-acc2-eb0b72ec37c7",
  "kind": "theorem",
  "lexical_name": "sinh_cosh_deriv_bound",
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
  "slug": "sinh-cosh-deriv-bound--8757d2b7fad0c74d4ed0b456",
  "source": {
    "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 875,
    "line": 835,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8757d2b7fad0c74d4ed0b4569151c545308c25b06f56a9533de6bc1ac5113fce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:132a3f23-7098-14da-acc2-eb0b72ec37c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 835–875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sinh_cosh_deriv_bound {a b : ℝ} (_hab : a ≤ b) (n : ℕ) :
    ∀ x ∈ Set.Icc a b, ‖iteratedDeriv n Real.sinh x‖ ≤ Real.exp (max (|a|) (|b|)) ∧
                       ‖iteratedDeriv n Real.cosh x‖ ≤ Real.exp (max (|a|) (|b|)) := by
  intro x hx
  set M := Real.exp (max (|a|) (|b|)) with hM_def
  have habs_x_le : |x| ≤ max (|a|) (|b|) := by
    rw [abs_le]
    constructor
    · calc -max (|a|) (|b|) ≤ -|a| := neg_le_neg (le_max_left _ _)
        _ ≤ a := neg_abs_le a
        _ ≤ x := hx.1
    · calc x ≤ b := hx.2
        _ ≤ |b| := le_abs_self b
        _ ≤ max (|a|) (|b|) := le_max_right _ _
  have hcosh_bound : Real.cosh x ≤ M := by
    calc Real.cosh x ≤ Real.exp |x| := cosh_le_exp_abs x
      _ ≤ Real.exp (max (|a|) (|b|)) := Real.exp_le_exp.mpr habs_x_le
  have hsinh_bound : |Real.sinh x| ≤ M := by
    calc |Real.sinh x| ≤ Real.cosh x := abs_sinh_le_cosh x
      _ ≤ M := hcosh_bound
  -- Prove by induction that both bounds hold
  induction n with
  | zero =>
    simp only [iteratedDeriv_zero, Real.norm_eq_abs]
    exact ⟨hsinh_bound, by rw [abs_of_pos (Real.cosh_pos x)]; exact hcosh_bound⟩
  | succ n ih =>
    constructor
    · -- sinh case: d/dx sinh = cosh
      rw [iteratedDeriv_succ']
      have hderiv : deriv Real.sinh = Real.cosh := by
        funext x
        exact LeanCert.Core.DerivativeIntervals.sinh_deriv_eq x
      rw [hderiv]
      exact ih.2
    · -- cosh case: d/dx cosh = sinh
      rw [iteratedDeriv_succ']
      have hderiv : deriv Real.cosh = Real.sinh := Real.deriv_cosh
      rw [hderiv]
      exact ih.1

/- The n-th iterated derivative of log at x > 0 is (-1)^(n-1) * (n-1)! * x^(-n) for n ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean#L835).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feca7dade96cdc55e024c788dd77b2c78a3eec8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
