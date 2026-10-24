# GroupFilterBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a93a8e8208f3a0e1745df39278091752bf37159799c9db084d6bbe24cbdcae4",
  "kind": "class",
  "lexical_name": "GroupFilterBasis",
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
  "slug": "groupfilterbasis--cfc3af1e44a506f2145c349e",
  "source": {
    "blob": "075be3f89eef066d88fb74cde58229f1af98ccb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cfc3af1e44a506f2145c349e5eb50cb158d86dcf17fd453c9b2c4484d228da29",
  "verification": {
    "reference": "docs/verification/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a93a8e8208f3a0e1745df39278091752bf37159799c9db084d6bbe24cbdcae4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class GroupFilterBasis (G : Type u) [Group G] extends FilterBasis G where
  one' : ∀ {U}, U ∈ sets → (1 : G) ∈ U
  mul' : ∀ {U}, U ∈ sets → ∃ V ∈ sets, V * V ⊆ U
  inv' : ∀ {U}, U ∈ sets → ∃ V ∈ sets, V ⊆ (fun x ↦ x⁻¹) ⁻¹' U
  conj' : ∀ x₀, ∀ {U}, U ∈ sets → ∃ V ∈ sets, V ⊆ (fun x ↦ x₀ * x * x₀⁻¹) ⁻¹' U

/-- An `AddGroupFilterBasis` on an additive group is a `FilterBasis` satisfying some additional
  axioms. Example : if `G` is a topological group then the neighbourhoods of the identity are an
  `AddGroupFilterBasis`. Conversely given an `AddGroupFilterBasis` one can define a topology
  compatible with the group structure on `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/FilterBasis/Variantbe8a10bb4c658e8e64fc071937311bd22c7555d4d7d0346cc8ee72da8c2866bf.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `075be3f89eef066d88fb74cde58229f1af98ccb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
