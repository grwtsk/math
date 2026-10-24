# integral_abs_iteratedDeriv_phi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8809a5400e3378f2b0ff197da0aa74786efc02a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d87a292-0f1d-9b10-d6e8-01836b6d46ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cad43f47-50fc-e8e0-f95b-ded4655b1df7",
  "kind": "theorem",
  "lexical_name": "integral_abs_iteratedDeriv_phi_le",
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
  "slug": "integral-abs-iteratedderiv-phi-le--a1db66ee3d9ae3cc2598625f",
  "source": {
    "blob": "e8809a5400e3378f2b0ff197da0aa74786efc02a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 218,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1db66ee3d9ae3cc2598625f6928420c612448ef71a11d6caf8c9347b94e2f77",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cad43f47-50fc-e8e0-f95b-ded4655b1df7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_iteratedDeriv_phi_le (hϱ : TaperProfile ϱ) {B : ℝ} (hB0 : 0 ≤ B)
    (hB : ∀ i : ℕ, 1 ≤ i → i ≤ 3 → ∀ x : ℝ, |iteratedDeriv i ϱ x| ≤ B) (hw : 0 < w)
    (hwL : 2 * w ≤ L) {k : ℕ} (hk : 1 ≤ k) (hk3 : k ≤ 3) :
    ∫ u, |iteratedDeriv k (phi ϱ L w) u| ≤ 2 * ((w⁻¹) ^ k * B) * w := by
  set M : ℝ := (w⁻¹) ^ k * B with hM
  have hM0 : 0 ≤ M := by positivity
  set Rp := Set.Ioo (L / 2 - w) (L / 2)
  set Rm := Set.Ioo (-(L / 2)) (w - L / 2)
  have hIp : Integrable (Rp.indicator fun _ => M) :=
    (integrable_indicator_iff measurableSet_Ioo).mpr (integrableOn_const (by simp))
  have hIm : Integrable (Rm.indicator fun _ => M) :=
    (integrable_indicator_iff measurableSet_Ioo).mpr (integrableOn_const (by simp))
  calc ∫ u, |iteratedDeriv k (phi ϱ L w) u|
      ≤ ∫ u, (Rp.indicator (fun _ => M) u + Rm.indicator (fun _ => M) u) :=
        integral_mono_of_nonneg (Eventually.of_forall fun u => abs_nonneg _) (hIp.add hIm)
          (Eventually.of_forall fun u => abs_iteratedDeriv_phi_le_indicator hϱ hB hw hwL hk hk3 u)
    _ = M * w + M * w := by
        rw [integral_add hIp hIm, integral_indicator_Ioo_const (by linarith),
          integral_indicator_Ioo_const (by linarith)]
        ring
    _ = 2 * M * w := by ring

end Ramps

/-! ## §2. FamilyHyps for the flat family of ANY valid parameter set -/

/-- derivatives of every order of a compactly supported function are compactly supported. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHyps/Variantccc879617a22c17f0afc12da314ff04e9ca3723eb88041588d672dfa40347622.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8809a5400e3378f2b0ff197da0aa74786efc02a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
