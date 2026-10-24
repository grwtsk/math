# actualReducedZeroTail_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60459571-ad41-ca2a-b79d-799490153f11",
  "kind": "theorem",
  "lexical_name": "actualReducedZeroTail_tendsto_zero",
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
  "slug": "actualreducedzerotail-tendsto-zero--8051b928a85985e8a443ab0d",
  "source": {
    "blob": "eb3271f5a10985f5573c606e23cc73c15081a8be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8051b928a85985e8a443ab0dbbc7c0357471493b6d642b08aaefa11f7ba3e65a",
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

Occurrence: `result:60459571-ad41-ca2a-b79d-799490153f11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualReducedZeroTail_tendsto_zero :
    Tendsto (fun A : ℝ => actualZeroHeightTail A (actualReducedZeroHeight A))
      atTop (𝓝 0) := by
  obtain ⟨A0,hA0,hbound⟩ := actualReducedZeroTail_norm_bound
  have h3 : Tendsto (fun A : ℝ => (1 / 5 : ℝ) / A^3) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop (tendsto_pow_atTop (by norm_num))
  have h4 : Tendsto (fun A : ℝ => (2 : ℝ) / A^4) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop (tendsto_pow_atTop (by norm_num))
  have he : Tendsto (fun A : ℝ => actualReducedZeroEnvelope A0 A) atTop (𝓝 0) := by
    simpa [actualReducedZeroEnvelope] using (h3.add h4).const_mul
      (2 * actualZeroTailWeightConstant * A0)
  apply squeeze_zero_norm' _ he
  filter_upwards [eventually_ge_atTop (200 : ℝ)] with A hA
  exact hbound A hA

/-- The original quadratic value equals the entire reduced-height head plus its genuine tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualReducedZeroHeight/Variant5ae053763205af7fca3e592f18f829819a756f083a71cd447a4945aac25ac7aa.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb3271f5a10985f5573c606e23cc73c15081a8be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
