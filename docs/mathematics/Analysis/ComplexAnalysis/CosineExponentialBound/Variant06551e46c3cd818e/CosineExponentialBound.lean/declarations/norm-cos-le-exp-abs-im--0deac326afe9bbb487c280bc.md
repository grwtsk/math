# norm_cos_le_exp_abs_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:235dab8a-fd55-23d8-d642-8e981382420d",
  "kind": "lemma",
  "lexical_name": "norm_cos_le_exp_abs_im",
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
  "slug": "norm-cos-le-exp-abs-im--0deac326afe9bbb487c280bc",
  "source": {
    "blob": "cb0b94c1699d850e42c493d0c6e4f5cb626e90f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 36,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CosineExponentialBound/Variant06551e46c3cd818e/CosineExponentialBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0deac326afe9bbb487c280bc3897fe384abf5aeae002c0f16008b2e6e774abf3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CosineExponentialBound/Variant06551e46c3cd818e/CosineExponentialBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:235dab8a-fd55-23d8-d642-8e981382420d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_cos_le_exp_abs_im (z : ℂ) : ‖cos z‖ ≤ Real.exp |z.im| := by
  have hcos :
      cos z = (exp (z * I) + exp (-z * I)) / 2 := by
    simp [cos]
  have htri :
      ‖exp (z * I) + exp (-z * I)‖ ≤ ‖exp (z * I)‖ + ‖exp (-z * I)‖ :=
    norm_add_le _ _
  have hdiv :
      ‖(exp (z * I) + exp (-z * I)) / 2‖
        ≤ (‖exp (z * I)‖ + ‖exp (-z * I)‖) / 2 := by
    have : ‖exp (z * I) + exp (-z * I)‖ / 2
          ≤ (‖exp (z * I)‖ + ‖exp (-z * I)‖) / 2 :=
      div_le_div_of_nonneg_right htri (by norm_num)
    simpa [Complex.norm_div, Complex.norm_ofNat] using this
  have h1 : ‖exp (z * I)‖ = Real.exp (-(z.im)) := by
    simp [norm_exp, mul_re, I_re, I_im]
  have h2 : ‖exp (-(z * I))‖ = Real.exp (z.im) := by
    simp [norm_exp, mul_re, I_re, I_im]
  have habs1 : Real.exp (-(z.im)) ≤ Real.exp |z.im| :=
    Real.exp_le_exp.mpr (neg_le_abs z.im)
  have habs2 : Real.exp (z.im) ≤ Real.exp |z.im| :=
    Real.exp_le_exp.mpr (le_abs_self z.im)
  have hsum :
      (‖exp (z * I)‖ + ‖exp (-(z * I))‖) / 2 ≤ Real.exp |z.im| := by
    have : ‖exp (z * I)‖ + ‖exp (-(z * I))‖
        ≤ Real.exp |z.im| + Real.exp |z.im| := by
      simpa [h1, h2] using add_le_add habs1 habs2
    have : (‖exp (z * I)‖ + ‖exp (-(z * I))‖) / 2
        ≤ (Real.exp |z.im| + Real.exp |z.im|) / 2 :=
      div_le_div_of_nonneg_right this (by norm_num)
    simpa [two_mul] using this
  have :
      ‖cos z‖ ≤ (‖exp (z * I)‖ + ‖exp (-(z * I))‖) / 2 := by
    simpa [hcos] using hdiv
  exact le_trans this hsum

end Complex

end GRWTSK.Analysis.ComplexAnalysis.CosineExponentialBound.Variant06551e46c3cd818e
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/ComplexAnalysis/CosineExponentialBound/Variant06551e46c3cd818e/CosineExponentialBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CosineExponentialBound/Variant06551e46c3cd818e/CosineExponentialBound.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb0b94c1699d850e42c493d0c6e4f5cb626e90f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
