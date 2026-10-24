# _root_.GRWTSK.Topology.GeneralTopology.ContinuousLinearMap.Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.Submodule.ker_subtypeL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47ec0506-de16-abaf-0d94-13b06e362f73",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.ContinuousLinearMap.Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.Submodule.ker_subtypeL",
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
  "slug": "root-grwtsk-topology-generaltopology-continuouslinearmap-variant2d9eff72--deb8337deca739e0ebc70006",
  "source": {
    "blob": "a64586d26f393ee65cf18c45564243fc6d91e454",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 670,
    "path": "GRWTSK/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:deb8337deca739e0ebc700066c17c0fc9d8b4cc575b756269b7f3eb7de7a31d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47ec0506-de16-abaf-0d94-13b06e362f73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 670–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.ContinuousLinearMap.Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.Submodule.ker_subtypeL (p : Submodule R₁ M₁) : ker p.subtypeL = ⊥ :=
  Submodule.ker_subtype _

section

variable {R S : Type*} [Semiring R] [Semiring S] [Module R M₁] [Module R M₂] [Module R S]
  [Module S M₂] [IsScalarTower R S M₂] [TopologicalSpace S] [ContinuousSMul S M₂]

/-- The linear map `fun x => c x • f`.  Associates to a scalar-valued linear map and an element of
`M₂` the `M₂`-valued linear map obtained by multiplying the two (a.k.a. tensoring by `M₂`).
See also `ContinuousLinearMap.smulRightₗ` and `ContinuousLinearMap.smulRightL`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearMap/Variantc168d635c296d1f44259f95f6d40f148d0f0fa7095ee6a3e776314c89c196add.lean#L670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a64586d26f393ee65cf18c45564243fc6d91e454` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
