# forwardHalfKernel_interval_eq_tail_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4eac4ea-a391-ebbd-5369-f0d7972ba391",
  "kind": "theorem",
  "lexical_name": "forwardHalfKernel_interval_eq_tail_pairing",
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
  "slug": "forwardhalfkernel-interval-eq-tail-pairing--8f787cb8f217275d85934ce2",
  "source": {
    "blob": "ec539b958dce84aa936a9cf802c11830e600ba4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f787cb8f217275d85934ce2b531750f9b90d610cec52f57560cf4071ce0e03c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4eac4ea-a391-ebbd-5369-f0d7972ba391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardHalfKernel_interval_eq_tail_pairing {A : ℝ} (hA : 0 < A) (x : ℝ) :
    (∫ t in 0..2*A, forwardHalfKernel A (t,x)) =
      normalizedTest explicitSecondDerivative A x * (Real.exp (x/2) *
        ∫ u in Ici x, Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) := by
  by_cases hx : normalizedTest explicitSecondDerivative A x = 0
  · simp [forwardHalfKernel, hx]
  have hxx : |x| < A := by
    by_contra h
    exact hx (normalizedTest_zero_of_le_abs A x hA (le_of_not_gt h))
  have hcut : (∫ u in Ici x, Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) =
      ∫ u in Ioc x (x+2*A), Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u := by
    rw [integral_Ici_eq_integral_Ioi]
    apply setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
      (fun _ hu ↦ hu.1)
    intro u hu
    have hup : x + 2*A < u := lt_of_not_ge (fun hh ↦ hu.2 ⟨hu.1, hh⟩)
    have hux := (abs_lt.mp hxx).1
    rw [normalizedTest_zero_of_le_abs A u hA
      ((show A ≤ u by linarith).trans (le_abs_self u)), mul_zero]
  have hfactor : (fun t : ℝ ↦ forwardHalfKernel A (t,x)) =
      fun t : ℝ ↦ (normalizedTest explicitSecondDerivative A x * Real.exp (x/2)) *
        (Real.exp (-(x+t)/2) * normalizedTest explicitSecondDerivative A (x+t)) := by
    funext t
    have he : Real.exp (-t/2) = Real.exp (x/2) * Real.exp (-(x+t)/2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    dsimp only [forwardHalfKernel]
    rw [he]
    ring
  rw [hfactor, intervalIntegral.integral_const_mul]
  have htranslate := intervalIntegral.integral_comp_add_left
    (fun u : ℝ ↦ Real.exp (-u/2) * normalizedTest explicitSecondDerivative A u) x
    (a := (0 : ℝ)) (b := 2*A)
  rw [htranslate, add_zero, intervalIntegral.integral_of_le (by linarith : x ≤ x+2*A), ← hcut]
  ring

/-- Exact double-integral factorization of the actual negative half moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompactTailPairingV4Source/Variante0af8f0ab99a7ed8670bb0080d803a5b36e2b190450b5c337cf19d7b464f2148.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec539b958dce84aa936a9cf802c11830e600ba4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
