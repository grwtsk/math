# actualXiComplexMellinTailSeven_mul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51f8a0d4-d303-109f-1ef9-7c3ee0a142a1",
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
  "slug": "actualxicomplexmellintailseven-mul-eq--efee64fc63b0707df1d81741",
  "source": {
    "blob": "6b0148792d7315b9943b2442a6608ea43186af4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant15a8b889af4abed39b29a673929644cd9d32ab28b2707f6800e57c6e199e0810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efee64fc63b0707df1d817416063151b12f5540794623914c7d72e026c6205c2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt01/Variant15a8b889af4abed39b29a673929644cd9d32ab28b2707f6800e57c6e199e0810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51f8a0d4-d303-109f-1ef9-7c3ee0a142a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–155.

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
    rw [← integral_const_mul, ← integral_sub hpsi hp, ← integral_add (hpsi.sub hp) hc]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro y hy
    dsimp only [actualXiComplexMellinTailSeven, c]
    unfold shiftedActualChebyshev
    push_cast
    rw [← positive_cpow_product (by linarith [hy] : 0 < y)]
    ring
  have hps := integral_Ioi_cpow_of_lt
    (by simpa using (show -s.re < -1 by linarith)) (by norm_num : (0 : ℝ) < 7)
  have hcs := integral_Ioi_cpow_of_lt
    (by simpa using (show -(s.re + 1) < -1 by linarith)) (by norm_num : (0 : ℝ) < 7)
  rw [he, hps, hcs]
  rw [show -s + 1 = 1 - s by ring, show -(s + 1) + 1 = -s by ring]
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt01/Variant15a8b889af4abed39b29a673929644cd9d32ab28b2707f6800e57c6e199e0810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant15a8b889af4abed39b29a673929644cd9d32ab28b2707f6800e57c6e199e0810.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b0148792d7315b9943b2442a6608ea43186af4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
