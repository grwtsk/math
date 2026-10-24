# nndist_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ffaa8a2-03b8-d57a-22a7-b260212d3631",
  "kind": "theorem",
  "lexical_name": "nndist_tendsto_zero",
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
  "slug": "nndist-tendsto-zero--22dfc4fa9a0b8fdd4fbf6371",
  "source": {
    "blob": "8413c15ae6222c14a390a411d8de296a689aa784",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 200,
    "path": "GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22dfc4fa9a0b8fdd4fbf6371a54d5f812530140d2663f69868d300ee98466a3a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ffaa8a2-03b8-d57a-22a7-b260212d3631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_tendsto_zero
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ certificate.basin) :
    Tendsto
      (fun depth =>
        nndist
          (iterateSchedule
            certificate.step schedule depth initial)
          certificate.boundary)
      atTop
      (𝓝 0) := by
  have powerTends :
      Tendsto
        (fun depth : ℕ =>
          certificate.contraction ^ depth)
        atTop
        (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_lt_one
      certificate.contraction_nonnegative
      certificate.contraction_lt_one
  have upperTends :
      Tendsto
        (fun depth : ℕ =>
          certificate.contraction ^ depth *
            nndist initial certificate.boundary)
        atTop
        (𝓝 0) :=
    powerTends.mul_const _
  exact
    tendsto_of_tendsto_of_tendsto_of_le_of_le
      tendsto_const_nhds
      upperTends
      (fun _ => bot_le)
      (certificate.nndist_to_boundary_le_pow
        schedule initial_mem)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8413c15ae6222c14a390a411d8de296a689aa784` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
