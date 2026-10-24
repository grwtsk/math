# actualXiComplexMellinTailSeven_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5b8d52e-bcdc-f527-5d86-d0d3a7e32dcb",
  "kind": "theorem",
  "lexical_name": "actualXiComplexMellinTailSeven_mul_eq",
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
  "slug": "actualxicomplexmellintailseven-mul-eq--50222017e8e3a2b9432a2e1e",
  "source": {
    "blob": "2a194194f7146e8d2d9301923cef4fa5e3378cdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variant4b75e8cf07d580dc6fa8d6a5f665a3fee2ac176fbab2ca0c8bcca40dc48e5ba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50222017e8e3a2b9432a2e1e4a653e32f4b000c41f6da1dc7eb888d49ce2dfd0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt05/Variant4b75e8cf07d580dc6fa8d6a5f665a3fee2ac176fbab2ca0c8bcca40dc48e5ba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5b8d52e-bcdc-f527-5d86-d0d3a7e32dcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexMellinTailSeven_mul_eq {s : ℂ} (hs : 1 < s.re) :
    s * actualXiComplexMellinTailSeven s =
      -deriv riemannZeta s / riemannZeta s - actualClosedMangoldtMellinHeadSeven s +
        ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
          (7 : ℂ) ^ (-s) - s * (7 : ℂ) ^ (1 - s) / (s - 1) := by
  let c : ℂ := ((2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ)
  have hpsi := actualPsiComplexMellinTailSeven_integrableOn hs
  have hp : IntegrableOn (fun y : ℝ => (y : ℂ) ^ (-s)) (Ioi (7 : ℝ)) :=
    integrableOn_Ioi_cpow_of_lt (by simpa using (show -s.re < -1 by linarith)) (by norm_num)
  have hc : IntegrableOn (fun y : ℝ => c * (y : ℂ) ^ (-(s + 1))) (Ioi (7 : ℝ)) :=
    (integrableOn_Ioi_cpow_of_lt
      (by simpa using (show -(s.re + 1) < -1 by linarith)) (by norm_num)).const_mul c
  have he : actualXiComplexMellinTailSeven s = actualPsiComplexMellinTailSeven s -
      (∫ y in Ioi (7 : ℝ), (y : ℂ) ^ (-s)) +
        c * ∫ y in Ioi (7 : ℝ), (y : ℂ) ^ (-(s + 1)) := by
    unfold actualXiComplexMellinTailSeven actualPsiComplexMellinTailSeven
    calc
      _ = ∫ y in Ioi (7 : ℝ),
          ((Chebyshev.psi y : ℂ) * (y : ℂ) ^ (-(s + 1)) - (y : ℂ) ^ (-s)) +
            c * (y : ℂ) ^ (-(s + 1)) := by
        apply setIntegral_congr_fun measurableSet_Ioi
        intro y hy
        dsimp only [c]
        unfold shiftedActualChebyshev
        push_cast
        rw [← positive_cpow_product (s := s)
          (lt_trans (by norm_num : (0 : ℝ) < 7) hy)]
        ring
      _ = _ := by
        have hia := integral_add (hpsi.sub hp) hc
        have his := integral_sub hpsi hp
        simp only [Pi.add_apply, Pi.sub_apply] at hia
        rw [hia, his, integral_const_mul]
  have hps := integral_Ioi_cpow_of_lt (a := -s)
    (by simpa using (show -s.re < -1 by linarith)) (by norm_num : (0 : ℝ) < 7)
  have hcs := integral_Ioi_cpow_of_lt (a := -(s + 1))
    (by simpa using (show -(s.re + 1) < -1 by linarith)) (by norm_num : (0 : ℝ) < 7)
  have hps' : (∫ y in Ioi (7 : ℝ), (y : ℂ) ^ (-s)) =
      (7 : ℂ) ^ (1 - s) / (s - 1) := by
    rw [hps, show -s + 1 = 1 - s by ring,
      show 1 - s = -(s - 1) by ring, neg_div_neg_eq]
    norm_num
  have hcs' : (∫ y in Ioi (7 : ℝ), (y : ℂ) ^ (-(s + 1))) =
      (7 : ℂ) ^ (-s) / s := by
    rw [hcs, show -(s + 1) + 1 = -s by ring, neg_div_neg_eq]
    norm_num
  rw [he, hps', hcs']
  rw [mul_add, mul_sub, actualPsiComplexMellinTailSeven_mul_eq hs]
  have hn : s - 1 ≠ 0 := by
    apply ne_zero_of_re_pos
    simpa using (show 0 < s.re - 1 by linarith)
  dsimp only [c]
  push_cast
  field_simp [s_ne_zero hs, hn]
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiMellinSeven
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt05/Variant4b75e8cf07d580dc6fa8d6a5f665a3fee2ac176fbab2ca0c8bcca40dc48e5ba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variant4b75e8cf07d580dc6fa8d6a5f665a3fee2ac176fbab2ca0c8bcca40dc48e5ba6.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a194194f7146e8d2d9301923cef4fa5e3378cdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
