# actualResidual_reducedHead_signed_error_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0b55f32-8e6b-a257-679e-e6bbfb0a1c07",
  "kind": "theorem",
  "lexical_name": "actualResidual_reducedHead_signed_error_tendsto",
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
  "slug": "actualresidual-reducedhead-signed-error-tendsto--cbc44e742c4cfa9b57e2862d",
  "source": {
    "blob": "eb3271f5a10985f5573c606e23cc73c15081a8be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc44e742c4cfa9b57e2862de3a1628fbd6a1fdf6b20764d48ad20665185bb0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0b55f32-8e6b-a257-679e-e6bbfb0a1c07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_reducedHead_signed_error_tendsto :
    Tendsto (fun A : ℝ => mertensResidual A - (archimedeanMultiplier 0 -
      (actualZeroHeightHead A (actualReducedZeroHeight A)).re) / 2) atTop (𝓝 0) := by
  have ha := actual_archimedean_tendsto_zero_frequency
  have ht := (Complex.continuous_re.tendsto 0).comp actualReducedZeroTail_tendsto_zero
  have hlim := ((ha.sub_const (archimedeanMultiplier 0)).div_const 2).sub (ht.div_const 2)
  have hz : Tendsto (fun A : ℝ =>
      (archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0) / 2 -
      (actualZeroHeightTail A (actualReducedZeroHeight A)).re / 2) atTop (𝓝 0) := by
    simpa only [sub_self, zero_div, Complex.zero_re, Function.comp_apply] using hlim
  apply hz.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (actualResidual_sub_signedHead_eq hA (actualReducedZeroHeight A)).symm

/-- Positivity of the genuine critical part leaves the reduced actual off-axis head as an upper cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb3271f5a10985f5573c606e23cc73c15081a8be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
