# actualRelativeAffineKernelPayment_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95cb28ec-26ea-26ee-35f9-2a1dd53c87e7",
  "kind": "theorem",
  "lexical_name": "actualRelativeAffineKernelPayment_tendsto_zero",
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
  "slug": "actualrelativeaffinekernelpayment-tendsto-zero--0761b901fc4ee4d5cd8fcea0",
  "source": {
    "blob": "fb32d1ba333ff609ac5f47dfe42526c630cf5d33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant1af11377a31e0992dcc963aa55d1710e76fb669ebef06afd7c7090c854a03346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0761b901fc4ee4d5cd8fcea06329a0a1c4c5a3a9995122e5abe4e0e6d0437dc1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant1af11377a31e0992dcc963aa55d1710e76fb669ebef06afd7c7090c854a03346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95cb28ec-26ea-26ee-35f9-2a1dd53c87e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativeAffineKernelPayment_tendsto_zero :
    Tendsto actualRelativeAffineKernelPayment atTop (𝓝 0) := by
  obtain ⟨c,hc,C,_,R,_,hb⟩ := actualRelativeAffineKernelPayment_Pnt_bound
  apply squeeze_zero_norm'
  · filter_upwards [eventually_ge_atTop R] with A hA
    simpa only [Real.norm_eq_abs] using hb A hA
  · exact affine_rate_tendsto hc

/-- The original whole pairing retains its entire signed nonaffine jump interaction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant1af11377a31e0992dcc963aa55d1710e76fb669ebef06afd7c7090c854a03346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualRelativeAffinePayment/Variant1af11377a31e0992dcc963aa55d1710e76fb669ebef06afd7c7090c854a03346.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb32d1ba333ff609ac5f47dfe42526c630cf5d33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
