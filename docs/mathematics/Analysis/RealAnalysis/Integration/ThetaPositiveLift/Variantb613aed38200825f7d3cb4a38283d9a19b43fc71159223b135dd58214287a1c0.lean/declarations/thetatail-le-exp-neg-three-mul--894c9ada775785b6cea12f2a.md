# thetaTail_le_exp_neg_three_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:944460bb-7e85-9d03-97b9-3609ce86d748",
  "kind": "theorem",
  "lexical_name": "thetaTail_le_exp_neg_three_mul",
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
  "slug": "thetatail-le-exp-neg-three-mul--894c9ada775785b6cea12f2a",
  "source": {
    "blob": "2bd3f098495ee151308ca2646a30ac7fd566341f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 113,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:894c9ada775785b6cea12f2a43952d49b79c65e2ec8a445dcfd4f32bed7f66cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:944460bb-7e85-9d03-97b9-3609ce86d748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_le_exp_neg_three_mul (q : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail q t ≤ thetaPhiDecayConstant * Real.exp (-3 * t) := by
  have hC := thetaPhiDecayConstant_positive
  cases q with
  | zero =>
    exact (thetaPhi_le_exp_neg_four_mul ht).trans
      (mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr (by linarith)) hC.le)
  | succ q =>
    have hmajor : IntegrableOn (fun u : ℝ => thetaPhiDecayConstant * Real.exp (-3 * u))
        (Ici t) := ((integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
          (integrableOn_exp_mul_Ioi (a := -3) (by norm_num) t)).const_mul _
    calc
      _ ≤ ∫ u in Ici t, thetaPhiDecayConstant * Real.exp (-3 * u) :=
        setIntegral_mono_on (thetaTail_integrable q ht) hmajor measurableSet_Ici
          (fun u hu => thetaTail_integrand_le q ht hu)
      _ = thetaPhiDecayConstant * (-Real.exp (-3 * t) / (-3)) := by
        rw [integral_const_mul, integral_Ici_eq_integral_Ioi,
          integral_exp_mul_Ioi (by norm_num : (-3 : ℝ) < 0)]
      _ ≤ _ := by nlinarith [Real.exp_pos (-3 * t)]

/-- Every literal repeated tail tends to zero, with convergence justified by its bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bd3f098495ee151308ca2646a30ac7fd566341f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
