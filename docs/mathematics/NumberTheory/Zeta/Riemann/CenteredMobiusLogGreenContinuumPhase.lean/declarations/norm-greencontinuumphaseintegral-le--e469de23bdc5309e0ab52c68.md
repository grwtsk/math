# norm_greenContinuumPhaseIntegral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cef1e9a6-a607-8d16-28d3-20e1b2b9fb43",
  "kind": "theorem",
  "lexical_name": "norm_greenContinuumPhaseIntegral_le",
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
  "slug": "norm-greencontinuumphaseintegral-le--e469de23bdc5309e0ab52c68",
  "source": {
    "blob": "63a8a92de90cc668466361a42e243d427032137b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 71,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenContinuumPhase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e469de23bdc5309e0ab52c689c7e8b3c259f277a6b7cfc58d3c489f55e6da45f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenContinuumPhase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cef1e9a6-a607-8d16-28d3-20e1b2b9fb43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_greenContinuumPhaseIntegral_le
    {k : ℤ} (hk : k ≠ 0) :
    ‖greenContinuumPhaseIntegral k‖ ≤
      3 / (2 * Real.pi * |(k : ℝ)|) := by
  rw [greenContinuumPhaseIntegral_ibp hk]
  have hv (t : ℝ) :
      ‖greenPhaseAntiderivative k t‖ =
        1 / (2 * Real.pi * |(k : ℝ)|) := by
    unfold greenPhaseAntiderivative
    rw [norm_mul, norm_div, norm_one, norm_mul, norm_mul,
      norm_mul, norm_ofNat, Real.norm_eq_abs, abs_of_pos Real.pi_pos,
      norm_I, norm_intCast, norm_fourier]
    field_simp
    ring
  have hboundary :
      ‖greenPhaseAntiderivative k 1 * greenReciprocalComplex 1 -
        greenPhaseAntiderivative k 0 * greenReciprocalComplex 0‖ ≤
        3 / (4 * Real.pi * |(k : ℝ)|) := by
    calc
      _ ≤ ‖greenPhaseAntiderivative k 1 * greenReciprocalComplex 1‖ +
          ‖greenPhaseAntiderivative k 0 * greenReciprocalComplex 0‖ :=
        norm_sub_le _ _
      _ = 3 / (4 * Real.pi * |(k : ℝ)|) := by
        rw [norm_mul, norm_mul, hv, hv]
        norm_num [greenReciprocalComplex]
        field_simp
        ring
  have hint :
      ‖∫ t in (0 : ℝ)..1,
          greenPhaseAntiderivative k t / (1 + (t : ℂ))^2‖ ≤
        3 / (4 * Real.pi * |(k : ℝ)|) := by
    calc
      _ ≤ ∫ t in (0 : ℝ)..1,
          ‖greenPhaseAntiderivative k t / (1 + (t : ℂ))^2‖ := by
        exact intervalIntegral.norm_integral_le_integral_norm _
      _ ≤ ∫ _t in (0 : ℝ)..1,
          1 / (2 * Real.pi * |(k : ℝ)|) := by
        apply intervalIntegral.integral_mono_on
        · positivity
        · intro t ht
          rw [norm_div, norm_pow, hv]
          have hden : 1 ≤ ‖(1 + (t : ℂ))‖ := by
            rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg]
            · linarith [ht.1]
            · linarith [ht.1]
          exact div_le_self (by positivity) (by nlinarith)
      _ = 1 / (2 * Real.pi * |(k : ℝ)|) := by simp
      _ ≤ 3 / (4 * Real.pi * |(k : ℝ)|) := by
        have hkabs : 0 < |(k : ℝ)| := abs_pos.mpr (by exact_mod_cast hk)
        positivity
  exact (norm_add_le _ _).trans (by linarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenContinuumPhase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenContinuumPhase.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a8a92de90cc668466361a42e243d427032137b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
