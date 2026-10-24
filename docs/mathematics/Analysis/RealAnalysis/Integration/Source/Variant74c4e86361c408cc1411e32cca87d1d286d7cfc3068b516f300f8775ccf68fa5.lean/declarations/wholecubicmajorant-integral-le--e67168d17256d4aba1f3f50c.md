# wholeCubicMajorant_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2b2e92c-83d0-d469-48c7-5ab7050a1527",
  "kind": "theorem",
  "lexical_name": "wholeCubicMajorant_integral_le",
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
  "slug": "wholecubicmajorant-integral-le--e67168d17256d4aba1f3f50c",
  "source": {
    "blob": "5369ebb03a9609c30086e0147eb8d2f52f34e12d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67168d17256d4aba1f3f50c2a61d4c6b7795ca2a0c99f87adcb82f48e708552",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2b2e92c-83d0-d469-48c7-5ab7050a1527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wholeCubicMajorant_integral_le (A k : ℝ) :
    (∫ u in Ioi (0 : ℝ), wholeCubicMajorant A k u) ≤
      42880 / (A ^ 4 * Real.sqrt k) := by
  have h4 := absoluteCoefficientMoment_le_factorial 4
  have h5 := absoluteCoefficientMoment_le_factorial 5
  norm_num at h4 h5
  unfold wholeCubicMajorant
  rw [integral_const_mul,
    integral_add ((absoluteCoefficientWeight_integrable 4).const_mul (5 / 24 : ℝ))
      ((absoluteCoefficientWeight_integrable 5).div_const 48), integral_const_mul, integral_div]
  change 67 / (A ^ 4 * Real.sqrt k) *
    ((5 / 24 : ℝ) * absoluteCoefficientMoment 4 + absoluteCoefficientMoment 5 / 48) ≤ _
  calc
    _ ≤ 67 / (A ^ 4 * Real.sqrt k) * ((5 / 24 : ℝ) * 1536 + 15360 / 48) := by
      gcongr
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5369ebb03a9609c30086e0147eb8d2f52f34e12d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
