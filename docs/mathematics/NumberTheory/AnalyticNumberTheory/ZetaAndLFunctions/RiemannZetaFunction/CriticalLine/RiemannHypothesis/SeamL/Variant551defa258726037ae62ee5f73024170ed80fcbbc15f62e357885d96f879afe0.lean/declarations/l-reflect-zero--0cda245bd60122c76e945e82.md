# L_reflect_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68e90351-5f1f-f133-cbf3-4f6511351452",
  "kind": "theorem",
  "lexical_name": "L_reflect_zero",
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
  "slug": "l-reflect-zero--0cda245bd60122c76e945e82",
  "source": {
    "blob": "bc0a5b4c084aed86c77f00c6cc834e11e454a187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 295,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cda245bd60122c76e945e82b1aca74c6004d36bc8ab15ca774d6c46c609331d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68e90351-5f1f-f133-cbf3-4f6511351452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem L_reflect_zero (hq : 1 < q) (hprim : χ.IsPrimitive) :
    ∀ ρ, IsNontrivialZeroL χ ρ → IsNontrivialZeroL χ (reflect ρ) := by
  rintro ρ ⟨hzero, h0, h1⟩
  have hχ1 := ne_one_of_primitive hq hprim
  refine ⟨?_, ?_, ?_⟩
  · -- L(1 − ρ̄, χ) = 0
    have hLconj : (χ⁻¹).LFunction (conj ρ) = 0 := by
      have := LFunction_conj (inv_ne_one hχ1) ρ
      rw [inv_inv] at this
      rw [this, hzero, map_zero]
    have hΛ : completedLFunction χ⁻¹ (conj ρ) = 0 := by
      have hγL := (completed_eq_gamma_mul_L (χ := χ⁻¹) hq
        (show 0 < (conj ρ).re by rwa [Complex.conj_re])).self_of_nhds
      rw [hγL, Pi.mul_apply, hLconj, mul_zero]
    have hFE := hprim.completedLFunction_one_sub (conj ρ)
    rw [hΛ, mul_zero] at hFE
    have hre : 0 < (1 - conj ρ).re := by
      simp only [Complex.sub_re, Complex.one_re, Complex.conj_re]
      linarith
    have hγL := (completed_eq_gamma_mul_L (χ := χ) hq hre).self_of_nhds
    rw [hFE, Pi.mul_apply] at hγL
    have hγ := (gammaFactor_analyticAt (χ := χ) hre).2
    have hrefl : reflect ρ = 1 - conj ρ := rfl
    rw [hrefl]
    rcases mul_eq_zero.mp hγL.symm with h | h
    · exact absurd h hγ
    · exact h
  · show 0 < (reflect ρ).re
    simp only [Zeta23.reflect, Complex.sub_re, Complex.one_re, Complex.conj_re]
    linarith
  · show (reflect ρ).re < 1
    simp only [Zeta23.reflect, Complex.sub_re, Complex.one_re, Complex.conj_re]
    linarith

/-- H-fin for L(s,χ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc0a5b4c084aed86c77f00c6cc834e11e454a187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
