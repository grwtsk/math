# angularContour_sub_head_eq_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca2ab490-91d7-c5ad-9aa9-10fa15bbf4b8",
  "kind": "theorem",
  "lexical_name": "angularContour_sub_head_eq_tail",
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
  "slug": "angularcontour-sub-head-eq-tail--d3c903ca4862a02b63cca3bf",
  "source": {
    "blob": "cfcfe85f5aaefb3d5d0230300a5fd128b7a7480d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 219,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3c903ca4862a02b63cca3bf3bc9bc8c96f6ddcbbc3d4f52222fcd828ce4d1ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca2ab490-91d7-c5ad-9aa9-10fa15bbf4b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularContour_sub_head_eq_tail (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T) :
    angularContour A - angularHead A T = angularTail A T := by
  have hf := angularIntegrand_integrable A hA
  have hc : (Icc (-T) T)ᶜ = Ioi T ∪ Iio (-T) := by
    ext t
    simp only [mem_compl_iff, mem_Icc, not_and_or, not_le, mem_union, mem_Ioi, mem_Iio]
    tauto
  have hd : Disjoint (Ioi T) (Iio (-T)) := by
    rw [Set.disjoint_left]
    intro t ht hn
    have hp : 0 < T := by linarith
    simp only [mem_Ioi, mem_Iio] at ht hn
    linarith
  have he := setIntegral_compl (s := Icc (-T) T) measurableSet_Icc hf
  rw [hc, setIntegral_union hd measurableSet_Iio hf.integrableOn hf.integrableOn] at he
  unfold angularContour angularHead angularTail
  rw [integral_comp_neg_Ioi, integral_Iic_eq_integral_Iio]
  rw [he]
  ring

/-- Actual contour truncation at every real scale and height, with literal K_2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeAngularTail/Variantff37cb80a2520b5777d021efe05257624056b3cd54088170528e66e1e775b28c.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfcfe85f5aaefb3d5d0230300a5fd128b7a7480d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
