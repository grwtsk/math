# uniformContinuous_monoidHom_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59f55ca8-2c71-f912-ab9d-2427764ed114",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_monoidHom_of_continuous",
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
  "slug": "uniformcontinuous-monoidhom-of-continuous--813f9b68fe8a5b39167dbe8c",
  "source": {
    "blob": "9fc8157b28fbbb48493e72656d22715a8e21e796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 400,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:813f9b68fe8a5b39167dbe8c7605c3f22a3438b3ba99bc5096905185fec07fc6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59f55ca8-2c71-f912-ab9d-2427764ed114`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_monoidHom_of_continuous {hom : Type*} [UniformSpace β] [Group β]
    [IsUniformGroup β] [FunLike hom α β] [MonoidHomClass hom α β] {f : hom} (h : Continuous f) :
    UniformContinuous f :=
  uniformContinuous_of_tendsto_one <|
    suffices Tendsto f (𝓝 1) (𝓝 (f 1)) by rwa [map_one] at this
    h.tendsto 1

end IsUniformGroup

section IsTopologicalGroup

open Filter

variable (G : Type*) [Group G] [TopologicalSpace G] [IsTopologicalGroup G]

/-- The right uniformity on a topological group (as opposed to the left uniformity).

Warning: in general the right and left uniformities do not coincide and so one does not obtain a
`IsUniformGroup` structure. Two important special cases where they _do_ coincide are for
commutative groups (see `comm_topologicalGroup_is_uniform`) and for compact groups (see
`topologicalGroup_is_uniform_of_compactSpace`). -/
@[to_additive "The right uniformity on a topological additive group (as opposed to the left
uniformity).

Warning: in general the right and left uniformities do not coincide and so one does not obtain a
`IsUniformAddGroup` structure. Two important special cases where they _do_ coincide are for
commutative additive groups (see `comm_topologicalAddGroup_is_uniform`) and for compact
additive groups (see `topologicalAddGroup_is_uniform_of_compactSpace`)."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fc8157b28fbbb48493e72656d22715a8e21e796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
