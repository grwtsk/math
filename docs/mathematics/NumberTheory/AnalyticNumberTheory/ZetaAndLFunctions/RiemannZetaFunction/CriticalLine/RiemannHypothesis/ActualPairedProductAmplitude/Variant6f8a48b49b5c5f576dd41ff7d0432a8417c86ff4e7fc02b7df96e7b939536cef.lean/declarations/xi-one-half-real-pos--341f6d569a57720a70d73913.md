# xi_one_half_real_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0818ca14-ba89-5ebd-777a-630534393bb9",
  "kind": "theorem",
  "lexical_name": "xi_one_half_real_pos",
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
  "slug": "xi-one-half-real-pos--341f6d569a57720a70d73913",
  "source": {
    "blob": "dcce8d74589ace3ea82db508c7fb994d10035188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant6f8a48b49b5c5f576dd41ff7d0432a8417c86ff4e7fc02b7df96e7b939536cef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:341f6d569a57720a70d7391366660d254cf2845e58c7c9d5ef7d208888291225",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant6f8a48b49b5c5f576dd41ff7d0432a8417c86ff4e7fc02b7df96e7b939536cef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0818ca14-ba89-5ebd-777a-630534393bb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_one_half_real_pos :
    ∃ v : ℝ, 0 < v ∧ XiToeplitz.xi (1 / 2 : ℂ) = (v : ℂ) := by
  obtain ⟨g, hg, hGamma⟩ :=
    gammaR_ofReal_pos (x := (1 / 2 : ℝ)) (by norm_num)
  obtain ⟨z, hz, hZeta⟩ := riemannZeta_one_half_real_neg
  have hGammaNe : Complex.Gammaℝ (1 / 2 : ℂ) ≠ 0 := by
    rw [hGamma]
    exact ofReal_ne_zero.mpr hg.ne'
  have hzetaDef :=
    riemannZeta_def_of_ne_zero
      (s := (1 / 2 : ℂ)) (by norm_num)
  have hLambda :
      completedRiemannZeta (1 / 2 : ℂ) =
        Complex.Gammaℝ (1 / 2 : ℂ) * riemannZeta (1 / 2 : ℂ) := by
    have hm :
        riemannZeta (1 / 2 : ℂ) *
            Complex.Gammaℝ (1 / 2 : ℂ) =
          completedRiemannZeta (1 / 2 : ℂ) :=
      (eq_div_iff hGammaNe).mp hzetaDef
    calc
      completedRiemannZeta (1 / 2 : ℂ)
          = riemannZeta (1 / 2 : ℂ) *
              Complex.Gammaℝ (1 / 2 : ℂ) := hm.symm
      _ = Complex.Gammaℝ (1 / 2 : ℂ) *
            riemannZeta (1 / 2 : ℂ) := by ring
  let v : ℝ := -(g * z) / 8
  have hv : 0 < v := by
    dsimp [v]
    have hgz : g * z < 0 := mul_neg_of_pos_of_neg hg hz
    linarith
  refine ⟨v, hv, ?_⟩
  rw [XiToeplitz.xi_eq_completed (by norm_num) (by norm_num),
    hLambda, hGamma, hZeta]
  unfold v
  push_cast
  ring

/-- The unchanged actual zeroth xi coefficient is strictly positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant6f8a48b49b5c5f576dd41ff7d0432a8417c86ff4e7fc02b7df96e7b939536cef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant6f8a48b49b5c5f576dd41ff7d0432a8417c86ff4e7fc02b7df96e7b939536cef.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcce8d74589ace3ea82db508c7fb994d10035188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
