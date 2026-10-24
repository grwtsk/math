# tendsto_iff_tendstoUniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a812fb0b-32a2-ff34-3223-518177e7ba88",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_tendstoUniformly",
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
  "slug": "tendsto-iff-tendstouniformly--f39e962dfe0182b1d81c3b73",
  "source": {
    "blob": "a9ba561e87a763e0ce61bc05a2038d2787c881ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 228,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f39e962dfe0182b1d81c3b73c7ea78763f21e08f7317d2811b56d51ed53b7ccb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a812fb0b-32a2-ff34-3223-518177e7ba88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_tendstoUniformly {ι : Type*} {F : ι → α →ᵇ β} {f : α →ᵇ β} {l : Filter ι} :
    Tendsto F l (𝓝 f) ↔ TendstoUniformly (fun i => F i) f l :=
  Iff.intro
    (fun h =>
      tendstoUniformly_iff.2 fun ε ε0 =>
        (Metric.tendsto_nhds.mp h ε ε0).mp
          (Eventually.of_forall fun n hn x =>
            lt_of_le_of_lt (dist_coe_le_dist x) (dist_comm (F n) f ▸ hn)))
    fun h =>
    Metric.tendsto_nhds.mpr fun _ ε_pos =>
      (h _ (dist_mem_uniformity <| half_pos ε_pos)).mp
        (Eventually.of_forall fun n hn =>
          lt_of_le_of_lt
            ((dist_le (half_pos ε_pos).le).mpr fun x => dist_comm (f x) (F n x) ▸ le_of_lt (hn x))
            (half_lt_self ε_pos))

/-- The topology on `α →ᵇ β` is exactly the topology induced by the natural map to `α →ᵤ β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ba561e87a763e0ce61bc05a2038d2787c881ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
