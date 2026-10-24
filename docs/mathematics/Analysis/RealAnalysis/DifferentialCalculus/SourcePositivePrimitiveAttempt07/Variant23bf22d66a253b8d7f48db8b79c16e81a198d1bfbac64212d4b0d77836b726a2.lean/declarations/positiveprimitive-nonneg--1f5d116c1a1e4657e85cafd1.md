# positivePrimitive_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6be524da-6d59-7595-3b79-63fea3d6523d",
  "kind": "theorem",
  "lexical_name": "positivePrimitive_nonneg",
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
  "slug": "positiveprimitive-nonneg--1f5d116c1a1e4657e85cafd1",
  "source": {
    "blob": "7784c53578185e6ea1c325d0ce4c17a66036a2d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 234,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt07/Variant23bf22d66a253b8d7f48db8b79c16e81a198d1bfbac64212d4b0d77836b726a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f5d116c1a1e4657e85cafd1222649b44693d83e1490af0a8d8146821e965740",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt07/Variant23bf22d66a253b8d7f48db8b79c16e81a198d1bfbac64212d4b0d77836b726a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6be524da-6d59-7595-3b79-63fea3d6523d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positivePrimitive_nonneg {A t : ℝ} (hA : 1≤A) (hthreshold : (136/7:ℝ)≤A^2)
    (ht : t∈Icc (0:ℝ) (2*A)) : 0≤positivePrimitive A t := by
  have hp : 0<A := by linarith
  have hz := source_normalization_pos A hA
  have hs := overlapPolynomial_signs (show t/A∈Icc (0:ℝ) 2 by
    constructor
    · exact div_nonneg ht.1 hp.le
    · exact (div_le_iff₀ hp).mpr (by linarith [ht.2]))
  have hg : 0≤(1/4:ℝ)-(34/7:ℝ)/A^2 := by
    apply sub_nonneg.mpr
    apply (div_le_iff₀ (sq_pos_of_pos hp)).mpr
    linarith
  have he : overlapPolynomial2 (t/A)/A^2-overlapPolynomial1 (t/A)/A+
      overlapPolynomial0 (t/A)/4=
      (overlapPolynomial2 (t/A)+(34/7:ℝ)*overlapPolynomial0 (t/A))/A^2+
      (-overlapPolynomial1 (t/A))/A+
      ((1/4:ℝ)-(34/7:ℝ)/A^2)*overlapPolynomial0 (t/A) := by ring
  unfold positivePrimitive
  rw [he]
  apply div_nonneg _ hz.le
  apply mul_nonneg (Real.exp_pos _).le
  exact add_nonneg (add_nonneg (div_nonneg hs.2.2 (sq_nonneg A))
    (div_nonneg (neg_nonneg.mpr hs.2.1) hp.le)) (mul_nonneg hg hs.1)

/-- The center value fixes the sharp threshold and keeps actual normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt07/Variant23bf22d66a253b8d7f48db8b79c16e81a198d1bfbac64212d4b0d77836b726a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt07/Variant23bf22d66a253b8d7f48db8b79c16e81a198d1bfbac64212d4b0d77836b726a2.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7784c53578185e6ea1c325d0ce4c17a66036a2d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
