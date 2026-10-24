# splitCenterBox_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71d8d5ab-b799-c709-edd6-787759bfe9dd",
  "kind": "theorem",
  "lexical_name": "splitCenterBox_le",
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
  "slug": "splitcenterbox-le--1da5b1f0ea82ef2c4501461e",
  "source": {
    "blob": "86bb52b980f0bbac5b0258efb76daa4bbd224e09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1da5b1f0ea82ef2c4501461e13a35ab773e5fa526d700f1ff4659383b1f10022",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71d8d5ab-b799-c709-edd6-787759bfe9dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitCenterBox_le (I : Box ι) (s : Set ι) : I.splitCenterBox s ≤ I :=
  fun _ hx ↦ (mem_splitCenterBox.1 hx).1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant0cf7d2d78b8f768a6f25018aa50862b56a54560209aed531ea91023359c0217a.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86bb52b980f0bbac5b0258efb76daa4bbd224e09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
