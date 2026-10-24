# LocallyFinite.smul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd63f3db-c015-c073-77fc-f99c3577f7d5",
  "kind": "theorem",
  "lexical_name": "LocallyFinite.smul_right",
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
  "slug": "locallyfinite-smul-right--094a04e4f3a81ce4fd123987",
  "source": {
    "blob": "f182e29bba1dd35639d3ac2fb35c98f35283f392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 454,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:094a04e4f3a81ce4fd123987adccb0d97ace2b01eca71e6eb0c7c621b899ca97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd63f3db-c015-c073-77fc-f99c3577f7d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocallyFinite.smul_right [Zero M] [SMulZeroClass R M]
    {f : ι → X → M} (h : LocallyFinite fun i ↦ support <| f i) (s : ι → X → R) :
    LocallyFinite fun i ↦ support <| s i • f i :=
  h.subset fun i x ↦ mt <| fun h ↦ by rw [Pi.smul_apply', h, smul_zero]

end LocallyFinite

section Homeomorph

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f182e29bba1dd35639d3ac2fb35c98f35283f392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
