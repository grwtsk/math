# laplace_response_integral_cpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:186e082a-44ed-8171-3e55-0884981a57d4",
  "kind": "theorem",
  "lexical_name": "laplace_response_integral_cpow",
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
  "slug": "laplace-response-integral-cpow--e069fda977944be01fdf0fe6",
  "source": {
    "blob": "f7b5727f170b4abc83449832084a8ceeb23f36e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 122,
    "path": "GRWTSK/Analysis/LaplaceTransform/CausalExponentialResponse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e069fda977944be01fdf0fe6fbc46a191bddc5cd311efc97bc4e4eb8e45184e7",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:186e082a-44ed-8171-3e55-0884981a57d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplace_response_integral_cpow {n : ℕ} (hn : 1 ≤ n)
    {z : ℂ} (hz : 0 < z.re) :
    (∫ t in Ioi 0, laplaceResponse n z t) =
      (n : ℂ) ^ (-(z + 1 / 2)) / (z * (z + 1 / 2)) := by
  have nNonzero : (n : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (lt_of_lt_of_le Nat.zero_lt_one hn))
  have shiftedExp : Complex.exp (-(z + 1 / 2) * (Real.log (n : ℝ) : ℂ)) =
      (atomInverseHalf n : ℂ) * Complex.exp (-z * (Real.log (n : ℝ) : ℂ)) := by
    rw [atom_inverse_half_eq_exp hn, ← Complex.exp_add]
    congr 1
    ring
  have powerEq : (n : ℂ) ^ (-(z + 1 / 2)) =
      Complex.exp (-(z + 1 / 2) * (Real.log (n : ℝ) : ℂ)) := by
    rw [Complex.cpow_def_of_ne_zero nNonzero, ← Complex.natCast_log]
    congr 1
    ring
  have zNonzero : z ≠ 0 := by
    intro zero
    simp [zero] at hz
  have shiftedNonzero : z + 1 / 2 ≠ 0 := by
    intro zero
    have realPart := congrArg Complex.re zero
    norm_num at realPart
    linarith
  have algebra (a b c : ℂ) (hb : b ≠ 0) (hc : c ≠ 0)
      (gap : 2 * c - 2 * b = 1) :
      2 * a / b - 2 * a / c = a / (b * c) := by
    field_simp [hb, hc]
    linear_combination a * gap
  rw [laplace_response_integral hn hz, powerEq, shiftedExp]
  simpa only [mul_assoc] using algebra
    ((atomInverseHalf n : ℂ) * Complex.exp (-z * (Real.log (n : ℝ) : ℂ)))
    z (z + 1 / 2) zNonzero shiftedNonzero (by ring)

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceAtom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/CausalExponentialResponse.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b5727f170b4abc83449832084a8ceeb23f36e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
