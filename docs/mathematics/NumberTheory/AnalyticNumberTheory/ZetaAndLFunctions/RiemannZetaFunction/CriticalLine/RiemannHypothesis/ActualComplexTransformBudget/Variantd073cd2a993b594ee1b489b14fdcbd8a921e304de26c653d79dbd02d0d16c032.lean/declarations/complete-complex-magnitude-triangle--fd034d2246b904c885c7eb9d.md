# complete_complex_magnitude_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e51f983-a8df-3960-c426-76830e3f9484",
  "kind": "theorem",
  "lexical_name": "complete_complex_magnitude_triangle",
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
  "slug": "complete-complex-magnitude-triangle--fd034d2246b904c885c7eb9d",
  "source": {
    "blob": "14293d7f5d5be2421f2631f00d9cdeb81b7cae65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantd073cd2a993b594ee1b489b14fdcbd8a921e304de26c653d79dbd02d0d16c032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd034d2246b904c885c7eb9d8e0954d1c78a79dc93438870148879f6646562d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantd073cd2a993b594ee1b489b14fdcbd8a921e304de26c653d79dbd02d0d16c032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e51f983-a8df-3960-c426-76830e3f9484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_complex_magnitude_triangle {A a Z : ℝ} (hA : 1 ≤ A) (hZ : 0 < Z)
    (J : ℝ → ℂ) (hJ : ∀ x : ℝ, 0 < x → ‖J x‖ ≤ x ^ a) :
    ‖complexTransformAt A J Z‖ ≤ Z ^ a * normPrice A (a + 3 / 16) := by
  have hpoint (u : ℝ) :
      ‖((C A u * Real.exp (3 * u / 16) : ℝ) : ℂ) * J (Z * Real.exp u)‖ ≤
        Z ^ a * (|C A u| * Real.exp ((a + 3 / 16) * u)) := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_mul,
      abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ |C A u| * Real.exp (3 * u / 16) * (Z * Real.exp u) ^ a :=
        mul_le_mul_of_nonneg_left (hJ _ (mul_pos hZ (Real.exp_pos _))) (by positivity)
      _ = _ := by
        rw [Real.mul_rpow hZ.le (Real.exp_pos _).le, ← Real.exp_mul]
        have he : Real.exp (3 * u / 16) * Real.exp (u * a) =
            Real.exp ((a + 3 / 16) * u) := by
          rw [← Real.exp_add]
          congr 1
          ring
        calc
          _ = Z ^ a * (|C A u| * (Real.exp (3 * u / 16) * Real.exp (u * a))) := by ring
          _ = _ := by rw [he]
  have h : ‖∫ u in (-2 * A)..(2 * A),
      ((C A u * Real.exp (3 * u / 16) : ℝ) : ℂ) * J (Z * Real.exp u)‖ ≤
      ∫ u in (-2 * A)..(2 * A), Z ^ a * (|C A u| * Real.exp ((a + 3 / 16) * u)) :=
    intervalIntegral.norm_integral_le_of_norm_le (by linarith)
      (Filter.Eventually.of_forall (fun u _ ↦ hpoint u))
      ((full_weighted_norm_integrand_intervalIntegrable hA _).const_mul (Z ^ a))
  rw [intervalIntegral.integral_const_mul] at h
  exact h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantd073cd2a993b594ee1b489b14fdcbd8a921e304de26c653d79dbd02d0d16c032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantd073cd2a993b594ee1b489b14fdcbd8a921e304de26c653d79dbd02d0d16c032.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14293d7f5d5be2421f2631f00d9cdeb81b7cae65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
