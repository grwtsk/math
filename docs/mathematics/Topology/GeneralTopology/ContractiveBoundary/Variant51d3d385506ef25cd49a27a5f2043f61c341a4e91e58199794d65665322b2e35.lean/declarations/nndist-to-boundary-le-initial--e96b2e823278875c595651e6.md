# nndist_to_boundary_le_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94048715-9e3b-db3c-e36a-5890c32c1831",
  "kind": "theorem",
  "lexical_name": "nndist_to_boundary_le_initial",
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
  "slug": "nndist-to-boundary-le-initial--e96b2e823278875c595651e6",
  "source": {
    "blob": "8413c15ae6222c14a390a411d8de296a689aa784",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e96b2e823278875c595651e68202acb5698c1c16f4ea859746d4946f30ca6473",
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

Occurrence: `result:94048715-9e3b-db3c-e36a-5890c32c1831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_to_boundary_le_initial
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (schedule : ℕ → Schedule)
    {initial : State}
    (initial_mem : initial ∈ certificate.basin)
    (depth : ℕ) :
    nndist
        (iterateSchedule
          certificate.step schedule depth initial)
        certificate.boundary ≤
      nndist initial certificate.boundary := by
  calc
    nndist
        (iterateSchedule
          certificate.step schedule depth initial)
        certificate.boundary ≤
      certificate.contraction ^ depth *
        nndist initial certificate.boundary :=
      certificate.nndist_to_boundary_le_pow
        schedule initial_mem depth
    _ ≤
      1 * nndist initial certificate.boundary :=
      mul_le_mul_right'
        (pow_le_one_of_le
          (le_of_lt certificate.contraction_lt_one)
          depth)
        _
    _ =
      nndist initial certificate.boundary := by
        rw [one_mul]

/-- One schedule converges to the common boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8413c15ae6222c14a390a411d8de296a689aa784` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
