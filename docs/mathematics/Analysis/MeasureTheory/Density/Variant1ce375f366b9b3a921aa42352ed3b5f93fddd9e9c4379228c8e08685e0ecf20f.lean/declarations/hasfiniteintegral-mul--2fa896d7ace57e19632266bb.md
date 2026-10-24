# hasFiniteIntegral_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3e6d8c5-eb53-2339-65bb-eea0ec0ff701",
  "kind": "theorem",
  "lexical_name": "hasFiniteIntegral_mul",
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
  "slug": "hasfiniteintegral-mul--2fa896d7ace57e19632266bb",
  "source": {
    "blob": "8a70af88a789107651762e23caa5959e45c8a057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 300,
    "path": "GRWTSK/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa896d7ace57e19632266bb630909a830517063ce3504d4d1c1294b429c9483",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3e6d8c5-eb53-2339-65bb-eea0ec0ff701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteIntegral_mul {f : ℝ → ℝ} {g : ℝ → ℝ≥0∞} (hg : pdf X ℙ =ᵐ[volume] g)
    (hgi : ∫⁻ x, ‖f x‖₊ * g x ≠ ∞) :
    HasFiniteIntegral fun x => f x * (pdf X ℙ volume x).toReal := by
  rw [HasFiniteIntegral]
  have : (fun x => ↑‖f x‖₊ * g x) =ᵐ[volume] fun x => ‖f x * (pdf X ℙ volume x).toReal‖₊ := by
    refine' ae_eq_trans (Filter.EventuallyEq.mul (ae_eq_refl fun x => (‖f x‖₊ : ℝ≥0∞))
      (ae_eq_trans hg.symm ofReal_toReal_ae_eq.symm)) _
    simp_rw [← smul_eq_mul, nnnorm_smul, ENNReal.coe_mul, smul_eq_mul]
    refine' Filter.EventuallyEq.mul (ae_eq_refl _) _
    simp only [Real.ennnorm_eq_ofReal ENNReal.toReal_nonneg, ae_eq_refl]
  rwa [lt_top_iff_ne_top, ← lintegral_congr_ae this]
#align measure_theory.pdf.has_finite_integral_mul MeasureTheory.pdf.hasFiniteIntegral_mul

end Real

section

/-! **Uniform Distribution** -/

/-- A random variable `X` has uniform distribution if it has a probability density function `f`
with support `s` such that `f = (μ s)⁻¹ 1ₛ` a.e. where `1ₛ` is the indicator function for `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a70af88a789107651762e23caa5959e45c8a057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
