# genericPoint_specializes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d321c414-aa4f-7771-c249-981b2bb135be",
  "kind": "theorem",
  "lexical_name": "genericPoint_specializes",
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
  "slug": "genericpoint-specializes--5647e7f76da9571f397f3062",
  "source": {
    "blob": "4c18b9f3fcae54d01dd4e9e0faed3eb25b5c0afd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5647e7f76da9571f397f3062319848a98db0f02bb1dcabb77f46947af16d1df6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d321c414-aa4f-7771-c249-981b2bb135be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem genericPoint_specializes [QuasiSober α] [IrreducibleSpace α] (x : α) : genericPoint α ⤳ x :=
  (IsIrreducible.genericPoint_spec _).specializes (by simp)
#align generic_point_specializes genericPoint_specializes

attribute [local instance] specializationOrder

/-- The closed irreducible subsets of a sober space bijects with the points of the space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c18b9f3fcae54d01dd4e9e0faed3eb25b5c0afd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
