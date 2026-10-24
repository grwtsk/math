# tendsto_const_div_atTop_nhds_zero_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92354472-4696-21c7-7c68-61e7b3babc71",
  "kind": "theorem",
  "lexical_name": "tendsto_const_div_atTop_nhds_zero_nat",
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
  "slug": "tendsto-const-div-attop-nhds-zero-nat--91a8da1d30f06d3fc9237204",
  "source": {
    "blob": "f229c808184fe0b2489be8d178257a08b5bbb449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91a8da1d30f06d3fc923720438ce78b91863d3a8087162df2c8427143cb6c071",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92354472-4696-21c7-7c68-61e7b3babc71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_const_div_atTop_nhds_zero_nat {𝕜 : Type*} [DivisionSemiring 𝕜] [CharZero 𝕜]
    [TopologicalSpace 𝕜] [ContinuousSMul ℚ≥0 𝕜] [ContinuousMul 𝕜] (C : 𝕜) :
    Tendsto (fun n : ℕ ↦ C / n) atTop (𝓝 0) := by
  simpa only [mul_zero, div_eq_mul_inv] using
    (tendsto_const_nhds (x := C)).mul tendsto_inv_atTop_nhds_zero_nat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1e5ffe4d209c172d0b23a04704fffcf26a2669f39e7fc71b6cef4587b37058ef.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f229c808184fe0b2489be8d178257a08b5bbb449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
