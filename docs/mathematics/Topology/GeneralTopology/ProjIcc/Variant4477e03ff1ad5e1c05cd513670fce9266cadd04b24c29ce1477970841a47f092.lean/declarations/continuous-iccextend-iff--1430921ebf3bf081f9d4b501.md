# continuous_IccExtend_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46086b70-bebe-3fd0-971e-aaa0e407f603",
  "kind": "theorem",
  "lexical_name": "continuous_IccExtend_iff",
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
  "slug": "continuous-iccextend-iff--1430921ebf3bf081f9d4b501",
  "source": {
    "blob": "5246b1546abc9c1702593cf891b4de48e8e6410a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/ProjIcc/Variant4477e03ff1ad5e1c05cd513670fce9266cadd04b24c29ce1477970841a47f092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1430921ebf3bf081f9d4b5013ed6519ab294b4ad6cf56bde75be90151176b509",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProjIcc/Variant4477e03ff1ad5e1c05cd513670fce9266cadd04b24c29ce1477970841a47f092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46086b70-bebe-3fd0-971e-aaa0e407f603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_IccExtend_iff {f : Icc a b → β} : Continuous (IccExtend h f) ↔ Continuous f :=
  isQuotientMap_projIcc.continuous_iff.symm

/-- See Note [continuity lemma statement]. -/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProjIcc/Variant4477e03ff1ad5e1c05cd513670fce9266cadd04b24c29ce1477970841a47f092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProjIcc/Variant4477e03ff1ad5e1c05cd513670fce9266cadd04b24c29ce1477970841a47f092.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5246b1546abc9c1702593cf891b4de48e8e6410a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
