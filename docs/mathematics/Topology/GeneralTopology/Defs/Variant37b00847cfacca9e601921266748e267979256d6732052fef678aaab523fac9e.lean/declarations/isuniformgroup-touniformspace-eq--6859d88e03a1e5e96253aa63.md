# IsUniformGroup.toUniformSpace_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9b16f81-4478-bbab-600b-4798a2bb20c5",
  "kind": "theorem",
  "lexical_name": "IsUniformGroup.toUniformSpace_eq",
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
  "slug": "isuniformgroup-touniformspace-eq--6859d88e03a1e5e96253aa63",
  "source": {
    "blob": "9fc8157b28fbbb48493e72656d22715a8e21e796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 485,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6859d88e03a1e5e96253aa63cbf71c58b419bb825cc045332828a7f39d86770e",
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

Occurrence: `result:a9b16f81-4478-bbab-600b-4798a2bb20c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUniformGroup.toUniformSpace_eq {G : Type*} [u : UniformSpace G] [Group G]
    [IsUniformGroup G] : IsTopologicalGroup.toUniformSpace G = u := by
  ext : 1
  rw [uniformity_eq_comap_nhds_one' G, uniformity_eq_comap_nhds_one G]

end TopologicalCommGroup

open Filter Set Function

section

variable {α : Type*} {β : Type*} {hom : Type*}
variable [TopologicalSpace α] [Group α] [IsTopologicalGroup α]

-- β is a dense subgroup of α, inclusion is denoted by e
variable [TopologicalSpace β] [Group β]
variable [FunLike hom β α] [MonoidHomClass hom β α] {e : hom}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fc8157b28fbbb48493e72656d22715a8e21e796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
