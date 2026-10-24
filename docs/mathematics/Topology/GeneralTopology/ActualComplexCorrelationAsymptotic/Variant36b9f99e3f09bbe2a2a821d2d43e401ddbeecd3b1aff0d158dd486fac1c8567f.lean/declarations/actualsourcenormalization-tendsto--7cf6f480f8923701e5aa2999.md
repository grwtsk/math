# actualSourceNormalization_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:660a95af-b4cd-1e41-cd56-95f730897773",
  "kind": "theorem",
  "lexical_name": "actualSourceNormalization_tendsto",
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
  "slug": "actualsourcenormalization-tendsto--7cf6f480f8923701e5aa2999",
  "source": {
    "blob": "5c47ee71c386371299c9149749ebeb93f05bd766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant36b9f99e3f09bbe2a2a821d2d43e401ddbeecd3b1aff0d158dd486fac1c8567f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cf6f480f8923701e5aa2999dc0741c4b67f29160210b5f450c8e4c2c09cb130",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant36b9f99e3f09bbe2a2a821d2d43e401ddbeecd3b1aff0d158dd486fac1c8567f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:660a95af-b4cd-1e41-cd56-95f730897773`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSourceNormalization_tendsto :
    Tendsto sourceNormalization atTop (𝓝 ((65536 / 109395 : ℝ) / 16)) := by
  have hi : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have h2 := (hi.pow 2).const_mul ((131072 / 45045 : ℝ) / 2)
  have h4 := (hi.pow 4).const_mul (196608 / 5005 : ℝ)
  have hh := (tendsto_const_nhds.add h2).add h4
  simp only [zero_pow (by norm_num : 2 ≠ 0), zero_pow (by norm_num : 4 ≠ 0),
    mul_zero, add_zero] at hh
  convert! hh using 1
  ext A
  unfold sourceNormalization
  simp only [div_eq_mul_inv, mul_inv_rev, inv_pow]
  ring

/-- The entire source scale vanishes at every fixed complex argument with positive real part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant36b9f99e3f09bbe2a2a821d2d43e401ddbeecd3b1aff0d158dd486fac1c8567f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualComplexCorrelationAsymptotic/Variant36b9f99e3f09bbe2a2a821d2d43e401ddbeecd3b1aff0d158dd486fac1c8567f.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c47ee71c386371299c9149749ebeb93f05bd766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
