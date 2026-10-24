# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75b86fe767abafdbbf41cdf30ad558a4e3817b084c98dca6c43c917fa7aa70ea",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--714ff87bb9b9e586a0c59d25",
  "source": {
    "blob": "7760463cb9f4d330472d89b451962517a4cc5821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 448,
    "path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant72193e1696a113b09f95f4243131f2de5b449548fcb742fb829bf836f617df2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:714ff87bb9b9e586a0c59d2516189fbee049a8813cfa078f9546ae8d9648932c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenSubgroup/Variant72193e1696a113b09f95f4243131f2de5b449548fcb742fb829bf836f617df2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75b86fe767abafdbbf41cdf30ad558a4e3817b084c98dca6c43c917fa7aa70ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [ContinuousMul G] : Max (OpenNormalSubgroup G) :=
  ⟨fun U V ↦ ⟨U.toOpenSubgroup ⊔ V.toOpenSubgroup,
    Subgroup.sup_normal U.toOpenSubgroup.1 V.toOpenSubgroup.1⟩⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenSubgroup/Variant72193e1696a113b09f95f4243131f2de5b449548fcb742fb829bf836f617df2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant72193e1696a113b09f95f4243131f2de5b449548fcb742fb829bf836f617df2f.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7760463cb9f4d330472d89b451962517a4cc5821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
