# tendsto_Ico_atTop_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24fdae8d0ebb0b25a07a3b9c09ccc3cce554d6ba29fdc3974570cb5975c18c79",
  "kind": "instance",
  "lexical_name": "tendsto_Ico_atTop_atTop",
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
  "slug": "tendsto-ico-attop-attop--d74640b6e7ff673084ee0db0",
  "source": {
    "blob": "9c2312998c5d84dc832049100ea1651f5548c7a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d74640b6e7ff673084ee0db086438a30cfcf212365c7d840fb27fb0ce7f7987c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24fdae8d0ebb0b25a07a3b9c09ccc3cce554d6ba29fdc3974570cb5975c18c79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance tendsto_Ico_atTop_atTop : TendstoIxxClass Ico (atTop : Filter α) atTop :=
  tendstoIxxClass_of_subset fun _ _ => Ico_subset_Icc_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant648edff5214fa1ef95fcbc1347ddccbbbb08da71cabc1d5b574aa86886b8dd28.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c2312998c5d84dc832049100ea1651f5548c7a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
