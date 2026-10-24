# weightedMangoldt_eq_psi_add_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43368026-2e5d-4625-ffac-9f63901087a5",
  "kind": "theorem",
  "lexical_name": "weightedMangoldt_eq_psi_add_integral",
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
  "slug": "weightedmangoldt-eq-psi-add-integral--5b83227447fc59542e08f8c4",
  "source": {
    "blob": "e15000645583f357d4720e7bfda0a941c3dae619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant3d41c3d3a25eda2feb21d65cfa81a345ed8bf734635eee76e7214c2475364606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b83227447fc59542e08f8c43fb10efc7cf3c675b60471010dab0a5583b08d54",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant3d41c3d3a25eda2feb21d65cfa81a345ed8bf734635eee76e7214c2475364606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43368026-2e5d-4625-ffac-9f63901087a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMangoldt_eq_psi_add_integral {b : ℝ} (_hb : 1 ≤ b) :
    weightedMangoldt ⌊b⌋₊ = Chebyshev.psi b / b +
      ∫ x in Ioc (1:ℝ) b, Chebyshev.psi x / x^2 := by
  have ha := sum_mul_eq_sub_integral_mul₀ (c:=ArithmeticFunction.vonMangoldt)
    (f:=fun u : ℝ => u⁻¹) (by simp) b
    (fun x hx => (inverse_hasDerivAt hx).differentiableAt)
    (inverse_derivative_integrable b)
  rw [weightedMangoldt_sum_Icc, ← Chebyshev.psi_eq_sum_Icc] at ha
  have hi : (∫ x in Ioc (1:ℝ) b, deriv (fun u : ℝ => u⁻¹) x *
      ∑ n ∈ Finset.Icc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n) =
      -(∫ x in Ioc (1:ℝ) b, Chebyshev.psi x / x^2) := by
    rw [←integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [(inverse_hasDerivAt ⟨hx.1.le,hx.2⟩).deriv,←Chebyshev.psi_eq_sum_Icc]
    ring
  rw [hi] at ha
  simpa only [sub_neg_eq_add,div_eq_mul_inv,mul_comm] using ha

/-- The actual exp Jacobian on the finite positive interval retains both physical endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant3d41c3d3a25eda2feb21d65cfa81a345ed8bf734635eee76e7214c2475364606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant3d41c3d3a25eda2feb21d65cfa81a345ed8bf734635eee76e7214c2475364606.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e15000645583f357d4720e7bfda0a941c3dae619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
