# supplier_runningMaximum_polynomial_recurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73b06e60-4d45-c59b-2209-5d424f0093d1",
  "kind": "theorem",
  "lexical_name": "supplier_runningMaximum_polynomial_recurrence",
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
  "slug": "supplier-runningmaximum-polynomial-recurrence--a41106c3c80ad8ba0bf9691b",
  "source": {
    "blob": "636e6f3ed096315dcf8504042f0f8a875d46557f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 201,
    "path": "GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a41106c3c80ad8ba0bf9691b1bbb9aaf2edda951227518e05aa8b1b9e035d92e",
  "verification": {
    "reference": "docs/verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73b06e60-4d45-c59b-2209-5d424f0093d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supplier_runningMaximum_polynomial_recurrence {W : ℝ → ℝ} {K S h C p : ℝ}
    (hW : Continuous W) (hK : 0 ≤ K) (hS : 0 < S) (hKS : 8 * K ≤ S)
    (hh : 0 ≤ h) (hC : 0 ≤ C) (hp : 0 ≤ p)
    (hsupplier : ∀ s, S ≤ s →
      W s ≤ supplierCoefficient K (s + h) * runningPositiveMaximum W (s + h) +
        C * (1 + s) ^ p) :
    ∃ C' : ℝ, 0 ≤ C' ∧ ∀ T : ℝ, S + h ≤ T →
      runningPositiveMaximum W T ≤ supplierCoefficient K T *
        runningPositiveMaximum W (T + h) + C' * (1 + T) ^ p := by
  let C' : ℝ := max (runningPositiveMaximum W S) (C / (1 - uniformContraction))
  have hC' : 0 ≤ C' := (runningPositiveMaximum_nonneg hW S).trans (le_max_left _ _)
  refine ⟨C', hC', ?_⟩
  intro T hT
  have hT₀ : 0 ≤ T := by linarith
  have hpower : 1 ≤ (1 + T) ^ p := Real.one_le_rpow (by linarith) hp
  have hconstant : C' ≤ C' * (1 + T) ^ p := by
    simpa only [mul_one] using mul_le_mul_of_nonneg_left hpower hC'
  have hfirst : runningPositiveMaximum W S ≤ C' * (1 + T) ^ p :=
    (le_max_left _ _).trans hconstant
  have hsecond : C * (1 + T) ^ p / (1 - uniformContraction) ≤ C' * (1 + T) ^ p := by
    have hmul := mul_le_mul_of_nonneg_right
      (le_max_right (runningPositiveMaximum W S) (C / (1 - uniformContraction)))
      (Real.rpow_nonneg (by linarith : 0 ≤ 1 + T) p)
    change _ ≤ C' * (1 + T) ^ p at hmul
    convert hmul using 1
    ring
  exact (supplier_runningMaximum_recurrence hW hK hS hKS hh hT hC hp hsupplier).trans
    (add_le_add le_rfl (max_le hfirst hsecond))

/-- The full coefficient product; no uniformly larger surrogate is substituted
in the terminal signal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SupplierEnvelopeRecurrence/Variantab0cf477c1487070b0e4669618779332241b2fd6fcc90962dece640216a09e26.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636e6f3ed096315dcf8504042f0f8a875d46557f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
