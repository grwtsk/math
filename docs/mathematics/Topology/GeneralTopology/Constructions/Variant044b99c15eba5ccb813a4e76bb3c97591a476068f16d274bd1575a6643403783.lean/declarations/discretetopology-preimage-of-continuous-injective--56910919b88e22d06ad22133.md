# DiscreteTopology.preimage_of_continuous_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8790e921-413f-fd6d-bb2c-f6f030876e14",
  "kind": "theorem",
  "lexical_name": "DiscreteTopology.preimage_of_continuous_injective",
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
  "slug": "discretetopology-preimage-of-continuous-injective--56910919b88e22d06ad22133",
  "source": {
    "blob": "ad260d583f2d60ca9a6d9b358f550a8ebd6d220b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 487,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56910919b88e22d06ad221338c163eaa8713e1f08f3b71c43c59b619145008ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8790e921-413f-fd6d-bb2c-f6f030876e14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DiscreteTopology.preimage_of_continuous_injective {X Y : Type*} [TopologicalSpace X]
    [TopologicalSpace Y] (s : Set Y) [DiscreteTopology s] {f : X → Y} (hc : Continuous f)
    (hinj : Function.Injective f) : DiscreteTopology (f ⁻¹' s) :=
  DiscreteTopology.of_continuous_injective (β := s) (Continuous.restrict
    (by exact fun _ x ↦ x) hc) ((MapsTo.restrict_inj _).mpr hinj.injOn)

/-- If `f : X → Y` is a quotient map,
then its restriction to the preimage of an open set is a quotient map too. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad260d583f2d60ca9a6d9b358f550a8ebd6d220b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
