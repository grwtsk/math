# actualBilateralCorrelationTransform_normalized_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec548f47-50f5-7b3b-15a4-f46fdc189be8",
  "kind": "theorem",
  "lexical_name": "actualBilateralCorrelationTransform_normalized_tendsto",
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
  "slug": "actualbilateralcorrelationtransform-normalized-tendsto--21f544c5e9a63d70b1fef7fc",
  "source": {
    "blob": "2d58fe38cb1a2ba44cb16350c7402465feafa0d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant9dceda67e8dfb632940a9b4d1d662b087a34a28eb5817b8e435a6075478f7ba0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21f544c5e9a63d70b1fef7fc55384c3c3ebac64fe47043bc39d272297c0483b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant9dceda67e8dfb632940a9b4d1d662b087a34a28eb5817b8e435a6075478f7ba0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec548f47-50f5-7b3b-15a4-f46fdc189be8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBilateralCorrelationTransform_normalized_tendsto {z : ℂ}
    (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => actualCorrelationAsymptoticScale A z *
      actualBilateralCorrelationTransform A z) atTop
      (𝓝 ((384 / z^3 - 96 / z^5)^2)) := by
  have hh := (actualSourceComplexTransform_normalized_tendsto_closed hz).pow 2
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  rw [actualBilateralCorrelationTransform_eq_square hA z]
  have hk : (((A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A) : ℝ) : ℂ))^2 =
      ((A^9 * sourceNormalization A : ℝ) : ℂ) := by
    exact_mod_cast actualCorrelationNormalizer_sq hA
  have he : Complex.exp (-z * (A : ℂ))^2 = Complex.exp (-2 * z * (A : ℂ)) := by
    rw [pow_two, ← Complex.exp_add]
    congr 1
    ring
  dsimp [actualCorrelationAsymptoticScale]
  rw [mul_pow, mul_pow, hk, he]

/-- The entire actual opposite-half error vanishes at this same normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant9dceda67e8dfb632940a9b4d1d662b087a34a28eb5817b8e435a6075478f7ba0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant9dceda67e8dfb632940a9b4d1d662b087a34a28eb5817b8e435a6075478f7ba0.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d58fe38cb1a2ba44cb16350c7402465feafa0d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
