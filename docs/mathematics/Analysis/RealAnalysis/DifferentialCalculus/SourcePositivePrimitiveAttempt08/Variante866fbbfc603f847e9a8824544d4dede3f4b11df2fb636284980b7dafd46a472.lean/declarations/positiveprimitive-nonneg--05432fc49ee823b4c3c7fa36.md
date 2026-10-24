# positivePrimitive_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f21537d6-8447-77bb-29fc-5c7a6e5b4b44",
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
  "slug": "positiveprimitive-nonneg--05432fc49ee823b4c3c7fa36",
  "source": {
    "blob": "2e0212aed847f0d97b811cbf6b15233ca1acb04e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 241,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt08/Variante866fbbfc603f847e9a8824544d4dede3f4b11df2fb636284980b7dafd46a472.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05432fc49ee823b4c3c7fa3620230703a730a4f9d198c16fb99f74d120655f8b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt08/Variante866fbbfc603f847e9a8824544d4dede3f4b11df2fb636284980b7dafd46a472.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f21537d6-8447-77bb-29fc-5c7a6e5b4b44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–265.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt08/Variante866fbbfc603f847e9a8824544d4dede3f4b11df2fb636284980b7dafd46a472.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePrimitiveAttempt08/Variante866fbbfc603f847e9a8824544d4dede3f4b11df2fb636284980b7dafd46a472.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e0212aed847f0d97b811cbf6b15233ca1acb04e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
