# wiener_real_cpow_oscillation_tends_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b327d01b-265d-ab23-cae5-30fe363c3b0e",
  "kind": "theorem",
  "lexical_name": "wiener_real_cpow_oscillation_tends_zero",
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
  "slug": "wiener-real-cpow-oscillation-tends-zero--4394e8e454d3bd29a18dac9c",
  "source": {
    "blob": "63d37837b2c3798ea6a2a570d778d830d8d696bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 162,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4394e8e454d3bd29a18dac9c67002e442fd0de350cfd064868a9a55929d7b66d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b327d01b-265d-ab23-cae5-30fe363c3b0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wiener_real_cpow_oscillation_tends_zero
    (f : ℝ → ℂ) (_hf : Integrable f) :
    Tendsto
      (fun T : ℝ =>
        ∫ t : ℝ, f t * (T : ℂ) ^ ((t : ℂ) * Complex.I))
      atTop (nhds (0 : ℂ)) := by
  have hphase :
      ∀ᶠ T : ℝ in atTop, ∀ t : ℝ,
        (T : ℂ) ^ ((t : ℂ) * Complex.I) =
          Complex.exp
            (Real.log T * (t : ℂ) * Complex.I) := by
    filter_upwards [eventually_ne_atTop (0 : ℝ),
      eventually_ge_atTop (0 : ℝ)] with T hT hTpos t
    rw [Complex.cpow_def_of_ne_zero (ofReal_ne_zero.mpr hT),
      ofReal_log hTpos]
    ring_nf
  have heq :
      ∀ᶠ T : ℝ in atTop,
        (∫ t : ℝ,
          f t * (T : ℂ) ^ ((t : ℂ) * Complex.I)) =
        (∫ t : ℝ,
          f t * Complex.exp
            (Real.log T * (t : ℂ) * Complex.I)) := by
    filter_upwards [hphase] with T hT
    apply integral_congr_ae
    exact Eventually.of_forall (fun t => by
      change f t * _ = f t * _
      rw [hT t])
  rw [tendsto_congr' heq]
  convert_to
    Tendsto (fun T : ℝ =>
      (𝓕 f) (-Real.log T / (2 * Real.pi)))
      atTop (nhds (0 : ℂ))
  · ext T
    simp only [Real.fourier_eq', smul_eq_mul,
      RCLike.inner_apply, conj_trivial, ofReal_neg,
      ofReal_mul, neg_mul]
    apply integral_congr_ae
    filter_upwards [] with t
    rw [mul_comm (f t)]
    congr 2
    push_cast
    field_simp [Real.pi_ne_zero]
  refine (Real.zero_at_infty_fourier f).comp <|
    Tendsto.mono_right ?_ atBot_le_cocompact
  exact (tendsto_neg_atBot_iff.mpr tendsto_log_atTop).atBot_mul_const
    (inv_pos.mpr two_pi_pos)

/-- In the actual q=1 von Mangoldt application, the closed-boundary
integral oscillates to zero for EVERY compactly supported continuous
test, by the proven local Riemann--Lebesgue lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63d37837b2c3798ea6a2a570d778d830d8d696bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
