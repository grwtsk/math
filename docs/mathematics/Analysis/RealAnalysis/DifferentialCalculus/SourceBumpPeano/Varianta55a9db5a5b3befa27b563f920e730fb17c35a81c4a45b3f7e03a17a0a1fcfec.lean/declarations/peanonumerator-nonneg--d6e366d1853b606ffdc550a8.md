# peanoNumerator_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1deac8f9-7eb6-37b1-fb7b-d6f1568edd79",
  "kind": "theorem",
  "lexical_name": "peanoNumerator_nonneg",
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
  "slug": "peanonumerator-nonneg--d6e366d1853b606ffdc550a8",
  "source": {
    "blob": "339a35111164cda77a79baa7cabf4525288f5ed5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Varianta55a9db5a5b3befa27b563f920e730fb17c35a81c4a45b3f7e03a17a0a1fcfec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6e366d1853b606ffdc550a8c6c1fe756a8d245d952f094a8ce1fa0006b4b863",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Varianta55a9db5a5b3befa27b563f920e730fb17c35a81c4a45b3f7e03a17a0a1fcfec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1deac8f9-7eb6-37b1-fb7b-d6f1568edd79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem peanoNumerator_nonneg {A u : ℝ} (hA : 0 < A)
    (hthreshold : (136 / 7 : ℝ) ≤ A ^ 2) (hu0 : 0 ≤ u) (hu2 : u ≤ 2) :
    0 ≤ peanoNumerator A u := by
  have hAsq : 0 < A ^ 2 := by positivity
  have hF := overlapProfile_nonneg hu0 hu2
  have hD := overlapProfile_deriv_nonpos hu0 hu2
  have hC := overlapProfile_second_deriv_lower hu0 hu2
  have hC0 : 0 ≤ deriv (deriv overlapProfile) u + (34 / 7) * overlapProfile u :=
    by linarith
  have hD0 : 0 ≤ -deriv overlapProfile u := by linarith
  have hc : 0 ≤ (1 / 4 : ℝ) - (34 / 7) / A ^ 2 := by
    apply sub_nonneg.mpr
    apply (div_le_iff₀ hAsq).mpr
    nlinarith
  rw [peanoNumerator_decomposition]
  positivity

/-- Necessity comes from the exact center traces, rather than finite sampling. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Varianta55a9db5a5b3befa27b563f920e730fb17c35a81c4a45b3f7e03a17a0a1fcfec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpPeano/Varianta55a9db5a5b3befa27b563f920e730fb17c35a81c4a45b3f7e03a17a0a1fcfec.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `339a35111164cda77a79baa7cabf4525288f5ed5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
