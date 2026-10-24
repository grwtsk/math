# norm_greenFourierBackgroundIntegrand_derivative_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37d03191-e21a-8a14-edfc-03a8b4fcf9fd",
  "kind": "theorem",
  "lexical_name": "norm_greenFourierBackgroundIntegrand_derivative_le",
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
  "slug": "norm-greenfourierbackgroundintegrand-derivative-le--1918909d3891517ca6959f28",
  "source": {
    "blob": "c0ec147dc38b40fc54a7f6549e85531f677c1b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 29,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivativeBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1918909d3891517ca6959f28f31f7722b61b7d925211d0c025441123bba6c7f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivativeBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37d03191-e21a-8a14-edfc-03a8b4fcf9fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_greenFourierBackgroundIntegrand_derivative_le
    {k : ℤ} (hk : k ≠ 0)
    {t : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) :
    ‖((thinFourierModeSlope k t * (1 + (t : ℂ)) -
          fourierModeValue k t) /
        (1 + (t : ℂ))^2)‖ ≤
      1 + 1 / (Real.pi * |(k : ℝ)|) := by
  rw [greenFourierBackgroundIntegrand_derivative_split]
  calc
    ‖thinFourierModeSlope k t / (1 + (t : ℂ)) -
        fourierModeValue k t / (1 + (t : ℂ))^2‖ ≤
      ‖thinFourierModeSlope k t / (1 + (t : ℂ))‖ +
        ‖fourierModeValue k t / (1 + (t : ℂ))^2‖ :=
      norm_sub_le _ _
    _ ≤ 1 + 1 / (Real.pi * |(k : ℝ)|) := by
      rw [norm_div, norm_div, norm_pow, norm_thinFourierModeSlope]
      have hden : 1 ≤ ‖(1 + (t : ℂ))‖ := by
        rw [Complex.norm_real]
        simp only [Complex.ofReal_add, Complex.ofReal_one, Real.norm_eq_abs]
        rw [abs_of_nonneg]
        · linarith
        · linarith
      have hden2 : 1 ≤ ‖(1 + (t : ℂ))‖ ^ 2 := by nlinarith
      have hphi := norm_fourierModeValue_le hk t
      have hdenpos : 0 < ‖(1 + (t : ℂ))‖ := lt_of_lt_of_le zero_lt_one hden
      have hden2pos : 0 < ‖(1 + (t : ℂ))‖ ^ 2 := by positivity
      have hfirst :
          1 / ‖(1 + (t : ℂ))‖ ≤ 1 := by
        exact (div_le_one hdenpos).2 hden
      have hsecond :
          ‖fourierModeValue k t‖ / ‖(1 + (t : ℂ))‖ ^ 2 ≤
            1 / (Real.pi * |(k : ℝ)|) := by
        calc
          ‖fourierModeValue k t‖ / ‖(1 + (t : ℂ))‖ ^ 2 ≤
              ‖fourierModeValue k t‖ := by
            exact (div_le_iff₀ hden2pos).2
              (by nlinarith [norm_nonneg (fourierModeValue k t)])
          _ ≤ 1 / (Real.pi * |(k : ℝ)|) := hphi
      linarith

/-- The exact derivative from the preceding module inherits the sharp bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivativeBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenQuadratureDerivativeBound.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0ec147dc38b40fc54a7f6549e85531f677c1b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
