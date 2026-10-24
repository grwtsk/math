# instT3Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d9df1148a4ef0208deeb2cc94a75c97cdae7a93999f4005d193b7eb0b876b11",
  "kind": "instance",
  "lexical_name": "instT3Space",
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
  "slug": "instt3space--81cc5e1e49c98cdef5587d97",
  "source": {
    "blob": "fe551dfb45adab9c538a9a879677a3db0d5e596c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81cc5e1e49c98cdef5587d977fbc8a5c2e2916ac77f6258449f5f0d064822d05",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d9df1148a4ef0208deeb2cc94a75c97cdae7a93999f4005d193b7eb0b876b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instT3Space [N.Normal] [hN : IsClosed (N : Set G)] : T3Space (G ⧸ N) := by
  rw [← QuotientGroup.ker_mk' N] at hN
  haveI := IsTopologicalGroup.t1Space (G ⧸ N) ((isQuotientMap_mk N).isClosed_preimage.mp hN)
  infer_instance

end QuotientGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variant8817535a92a51401ad16002c3da61ab4fd5a13a6f819a96024356a6d293edd41.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe551dfb45adab9c538a9a879677a3db0d5e596c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
