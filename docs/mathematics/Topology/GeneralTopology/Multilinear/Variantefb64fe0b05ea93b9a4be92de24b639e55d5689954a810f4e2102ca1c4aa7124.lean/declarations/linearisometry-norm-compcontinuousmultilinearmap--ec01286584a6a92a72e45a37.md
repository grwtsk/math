# LinearIsometry.norm_compContinuousMultilinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3159b98-4d91-180b-d963-80d2716f8967",
  "kind": "theorem",
  "lexical_name": "LinearIsometry.norm_compContinuousMultilinearMap",
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
  "slug": "linearisometry-norm-compcontinuousmultilinearmap--ec01286584a6a92a72e45a37",
  "source": {
    "blob": "eb7d6a77e37c67ebd04eb70781e0d39590c8ab69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1088,
    "line": 1069,
    "path": "GRWTSK/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec01286584a6a92a72e45a3724a339077f10c7c5bebce533ceac0f3a54929f4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3159b98-4d91-180b-d963-80d2716f8967`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1069–1088.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIsometry.norm_compContinuousMultilinearMap (g : G →ₗᵢ[𝕜] G')
    (f : ContinuousMultilinearMap 𝕜 E G) :
    ‖g.toContinuousLinearMap.compContinuousMultilinearMap f‖ = ‖f‖ := by
  simp only [ContinuousLinearMap.compContinuousMultilinearMap_coe,
    LinearIsometry.coe_toContinuousLinearMap, LinearIsometry.norm_map,
    ContinuousMultilinearMap.norm_def, Function.comp_apply]
#align linear_isometry.norm_comp_continuous_multilinear_map LinearIsometry.norm_compContinuousMultilinearMap

open ContinuousMultilinearMap

namespace MultilinearMap

/-- Given a map `f : G →ₗ[𝕜] MultilinearMap 𝕜 E G'` and an estimate
`H : ∀ x m, ‖f x m‖ ≤ C * ‖x‖ * ∏ i, ‖m i‖`, construct a continuous linear
map from `G` to `ContinuousMultilinearMap 𝕜 E G'`.

In order to lift, e.g., a map `f : (MultilinearMap 𝕜 E G) →ₗ[𝕜] MultilinearMap 𝕜 E' G'`
to a map `(ContinuousMultilinearMap 𝕜 E G) →L[𝕜] ContinuousMultilinearMap 𝕜 E' G'`,
one can apply this construction to `f.comp ContinuousMultilinearMap.toMultilinearMapLinear`
which is a linear map from `ContinuousMultilinearMap 𝕜 E G` to `MultilinearMap 𝕜 E' G'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multilinear/Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124.lean#L1069).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb7d6a77e37c67ebd04eb70781e0d39590c8ab69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
