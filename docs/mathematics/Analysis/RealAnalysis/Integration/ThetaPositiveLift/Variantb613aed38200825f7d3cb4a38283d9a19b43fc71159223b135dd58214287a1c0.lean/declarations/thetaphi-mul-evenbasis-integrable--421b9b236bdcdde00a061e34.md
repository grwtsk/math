# thetaPhi_mul_evenBasis_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92af595a-46de-444e-fe7b-5dcb209b3fcf",
  "kind": "theorem",
  "lexical_name": "thetaPhi_mul_evenBasis_integrable",
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
  "slug": "thetaphi-mul-evenbasis-integrable--421b9b236bdcdde00a061e34",
  "source": {
    "blob": "2bd3f098495ee151308ca2646a30ac7fd566341f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 208,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:421b9b236bdcdde00a061e345e4668c86b9583e84153822bcc3f25a7fffdc664",
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

Occurrence: `result:92af595a-46de-444e-fe7b-5dcb209b3fcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_mul_evenBasis_integrable (n : ℕ) :
    IntegrableOn (fun t => thetaPhi t * evenBasis n t) (Ici (0 : ℝ)) := by
  have hC := thetaPhiDecayConstant_positive
  have hmajor : IntegrableOn (fun t : ℝ => thetaPhiDecayConstant * Real.exp (-2 * t))
      (Ici 0) := ((integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
        (integrableOn_exp_mul_Ioi (a := -2) (by norm_num) 0)).const_mul _
  apply hmajor.mono'
  · exact (continuous_thetaPhi.mul (by unfold evenBasis; fun_prop)).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with t ht
    rw [Real.norm_of_nonneg (mul_nonneg (thetaPhi_positive t ht).le
      (evenBasis_nonnegative n t))]
    calc
      _ ≤ (thetaPhiDecayConstant * Real.exp (-4 * t)) * Real.exp (2 * t) :=
        mul_le_mul (thetaPhi_le_exp_neg_four_mul ht)
          (Real.pow_div_factorial_le_exp (2 * t) (mul_nonneg (by norm_num) ht) (2 * n))
          (evenBasis_nonnegative n t) (by positivity)
      _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring

/-- Every actual theta moment in the proposed coefficient formula is positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bd3f098495ee151308ca2646a30ac7fd566341f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
