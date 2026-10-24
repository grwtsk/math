# xi_one_half_real_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23b4c15f7ad9eac95ad609c063947053c3a5f491",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ba27066-c0bc-06cb-0f86-e1aaec8ac42b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5412dc2-66d6-e3a2-18cc-290fb1fdaa15",
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
  "slug": "xi-one-half-real-pos--0942e739d11afeda5273941b",
  "source": {
    "blob": "23b4c15f7ad9eac95ad609c063947053c3a5f491",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0942e739d11afeda5273941bbe327a2f13f88f99483956c3fe9b82aaae6461f5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5412dc2-66d6-e3a2-18cc-290fb1fdaa15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–107.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductAmplitude/Variant8a677fce50d0b24fd7167ed44026ab92b81498f5bcc8410c6bd035f5322f4407.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23b4c15f7ad9eac95ad609c063947053c3a5f491` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
