# wienerFubini_firstFourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd94adc9-5dd6-df35-8e03-dc4b0b34f15f",
  "kind": "theorem",
  "lexical_name": "wienerFubini_firstFourier",
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
  "slug": "wienerfubini-firstfourier--3b633cee5e0d5b1b74463d32",
  "source": {
    "blob": "9f4327711f96a9694c056af8cf7b244296e8acf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 255,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b633cee5e0d5b1b74463d328132948ccff5f6b7417c9556ac00e13e086996aa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd94adc9-5dd6-df35-8e03-dc4b0b34f15f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerFubini_firstFourier
    (f : ℕ → ℂ) (sigma T : ℝ) (hT : 0 < T)
    (psi : ℝ → ℂ)
    (hpsi : Continuous psi) (hcompact : HasCompactSupport psi)
    (hL : LSeriesSummable f (sigma : ℂ)) :
    (∑' n : ℕ,
      LSeries.term f (sigma : ℂ) n *
        (𝓕 psi) (wienerFubiniFrequency n T)) =
      ∫ t : ℝ,
        LSeries f ((sigma : ℂ) + (t : ℂ) * Complex.I) *
          psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I) := by
  have hswap := wienerFubini_integral_tsum
    f sigma T psi hpsi hcompact hL
  have hVertical (t : ℝ) :
      LSeriesSummable f
        ((sigma : ℂ) + (t : ℂ) * Complex.I) := by
    apply Summable.of_norm
    have hrealNorm := hL.norm
    simpa only [wienerFubini_norm_term_vertical] using hrealNorm
  calc
    (∑' n : ℕ,
      LSeries.term f (sigma : ℂ) n *
        (𝓕 psi) (wienerFubiniFrequency n T)) =
      ∑' n : ℕ,
        ∫ t : ℝ,
          wienerFubiniIntegrand f sigma T psi n t := by
      apply tsum_congr
      intro n
      exact (wienerFubini_integral_eq_Fourier
        f sigma T psi n).symm
    _ = ∫ t : ℝ,
      (∑' n : ℕ,
        wienerFubiniIntegrand f sigma T psi n t) := hswap
    _ = ∫ t : ℝ,
        LSeries f ((sigma : ℂ) + (t : ℂ) * Complex.I) *
          psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I) := by
      apply integral_congr_ae
      apply Eventually.of_forall
      intro t
      calc
        (∑' n : ℕ, wienerFubiniIntegrand
          f sigma T psi n t) =
          (∑' n : ℕ,
            LSeries.term f
              ((sigma : ℂ) + (t : ℂ) * Complex.I) n *
              (psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I))) := by
          apply tsum_congr
          intro n
          exact wienerFubini_term_phase f sigma t T hT psi n
        _ = LSeries f
              ((sigma : ℂ) + (t : ℂ) * Complex.I) *
              (psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I)) := by
          exact Summable.tsum_mul_right
            (psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I))
            (hVertical t)
        _ = _ := by ring

/-- The actual q=1 Lambda first Fourier identity. In particular,
there is NO unsupplied summability premise in this theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4327711f96a9694c056af8cf7b244296e8acf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
