# logarithmic_moment_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f3b041b-d732-dd21-f9f2-1a1e2e3164b2",
  "kind": "theorem",
  "lexical_name": "logarithmic_moment_identity",
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
  "slug": "logarithmic-moment-identity--934efd2f5a1be449fdd074b1",
  "source": {
    "blob": "5935d7783237ba019d24364fcf62f1e1bb95c53b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 69,
    "path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:934efd2f5a1be449fdd074b1601ac0c62e3ca0ce35374a321f29736279a31cb6",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f3b041b-d732-dd21-f9f2-1a1e2e3164b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmic_moment_identity {F : ℝ → ℝ}
    (hzero : Integrable (fun x : ℝ ↦ Real.exp (x / 2) * F x))
    (hfirst : Integrable (fun x : ℝ ↦ x * Real.exp (x / 2) * F x)) (t : ℝ) :
    IntegrableOn (fun x : ℝ ↦ Real.log x / Real.sqrt x * F (t + Real.log x)) (Ioi 0) ∧
    (∫ x in Ioi (0 : ℝ), Real.log x / Real.sqrt x * F (t + Real.log x)) =
      Real.exp (-t / 2) * ((∫ x : ℝ, x * Real.exp (x / 2) * F x) -
        t * ∫ x : ℝ, Real.exp (x / 2) * F x) := by
  let g : ℝ → ℝ := fun x ↦ Real.log x / Real.sqrt x * F (t + Real.log x)
  have zeroShift : Integrable (fun x : ℝ ↦ Real.exp ((t + x) / 2) * F (t + x)) :=
    (measurePreserving_add_left volume t).integrable_comp_of_integrable hzero
  have firstShift : Integrable (fun x : ℝ ↦
      (t + x) * Real.exp ((t + x) / 2) * F (t + x)) :=
    (measurePreserving_add_left volume t).integrable_comp_of_integrable hfirst
  have pullback : (fun x : ℝ ↦ Real.exp x * g (Real.exp x)) =
      fun x : ℝ ↦ Real.exp (-t / 2) *
        ((t + x) * Real.exp ((t + x) / 2) * F (t + x) -
          t * (Real.exp ((t + x) / 2) * F (t + x))) := by
    funext x
    dsimp [g]
    rw [logarithmic_weight_jacobian]
    have factor : Real.exp (-t / 2) * Real.exp ((t + x) / 2) = Real.exp (x / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    calc
      _ = x * (Real.exp (-t / 2) * Real.exp ((t + x) / 2)) * F (t + x) := by rw [factor]
      _ = _ := by ring
  have admitted : Integrable (fun x : ℝ ↦ Real.exp x * g (Real.exp x)) := by
    rw [pullback]
    exact (firstShift.sub (zeroShift.const_mul t)).const_mul (Real.exp (-t / 2))
  refine ⟨(exponential_jacobian_integrable_iff g).mpr admitted, ?_⟩
  change (∫ x in Ioi (0 : ℝ), g x) = _
  rw [← exponential_jacobian_integral g, pullback, integral_const_mul,
    integral_sub firstShift (zeroShift.const_mul t), integral_const_mul,
    integral_add_left_eq_self (fun x : ℝ ↦ x * Real.exp (x / 2) * F x) t,
    integral_add_left_eq_self (fun x : ℝ ↦ Real.exp (x / 2) * F x) t]

/-- Two genuine zero moments annihilate the full continuous logarithmic sum analogue. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/IntegralTransforms/LogarithmicMomentSubstitution.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5935d7783237ba019d24364fcf62f1e1bb95c53b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
