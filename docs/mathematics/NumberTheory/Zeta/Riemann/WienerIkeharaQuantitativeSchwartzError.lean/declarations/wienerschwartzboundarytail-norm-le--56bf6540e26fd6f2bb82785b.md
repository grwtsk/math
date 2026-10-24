# wienerSchwartzBoundaryTail_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5620b174-c4d0-66b9-b21b-051434c4727a",
  "kind": "theorem",
  "lexical_name": "wienerSchwartzBoundaryTail_norm_le",
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
  "slug": "wienerschwartzboundarytail-norm-le--56bf6540e26fd6f2bb82785b",
  "source": {
    "blob": "83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 194,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56bf6540e26fd6f2bb82785b8cf02a7c1791e577c9d043cad316226765b4adfb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5620b174-c4d0-66b9-b21b-051434c4727a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSchwartzBoundaryTail_norm_le
    (g : 𝓢(ℝ, ℂ)) (T : ℝ) :
    ‖wienerSchwartzBoundaryTail g T‖ ≤
      wienerFourierSchwartzControl g * (2 * Real.pi ^ 2) := by
  let P : ℝ := wienerFourierSchwartzControl g
  have hP : 0 ≤ P :=
    wienerFourierSchwartzControl_nonnegative g
  have h2pi : (2 * Real.pi : ℝ) ≠ 0 := by positivity
  let K (u : ℝ) : ℝ := (1 + (u / (2 * Real.pi)) ^ 2)⁻¹
  have hKint : Integrable K := by
    simpa [K, wienerShiftedCauchy, Real.log_one,
      wienerLogKernelC] using wienerShiftedCauchy_integrable 1
  have hFint :
      Integrable (fun u : ℝ =>
        (𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi))) := by
    simpa only [SchwartzMap.fourier_coe] using
      (𝓕 g : 𝓢(ℝ, ℂ)).integrable.comp_div h2pi
  have hPoint (u : ℝ) :
      ‖(𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi))‖ ≤
        P * K u := by
    have h := wienerFourierSchwartzControl_decay
      g (u / (2 * Real.pi))
    simpa [P, K, div_eq_mul_inv] using h
  have hM :
      (∫ u in Set.Ici (-Real.log T),
        ‖(𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi))‖) ≤
      ∫ u in Set.Ici (-Real.log T), P * K u :=
    setIntegral_mono hFint.norm.integrableOn
      (hKint.const_mul P).integrableOn hPoint
  have hKall :
      (∫ u in Set.Ici (-Real.log T), K u) ≤
        ∫ u : ℝ, K u :=
    setIntegral_le_integral hKint
      (Filter.Eventually.of_forall
        (fun u => by dsimp [K]; positivity))
  calc
    ‖wienerSchwartzBoundaryTail g T‖ ≤
        ∫ u in Set.Ici (-Real.log T),
          ‖(𝓕 (g : ℝ → ℂ)) (u / (2 * Real.pi))‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ u in Set.Ici (-Real.log T), P * K u := hM
    _ = P * (∫ u in Set.Ici (-Real.log T), K u) := by
      rw [integral_const_mul]
    _ ≤ P * (∫ u : ℝ, K u) :=
      mul_le_mul_of_nonneg_left hKall hP
    _ = P * (2 * Real.pi ^ 2) := by
      rw [show (∫ u : ℝ, K u) =
        2 * Real.pi ^ 2 from
          wienerSchwartzCauchy_twoPi_integral]

/-- The exact uniform error constant, independent of T and g. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
