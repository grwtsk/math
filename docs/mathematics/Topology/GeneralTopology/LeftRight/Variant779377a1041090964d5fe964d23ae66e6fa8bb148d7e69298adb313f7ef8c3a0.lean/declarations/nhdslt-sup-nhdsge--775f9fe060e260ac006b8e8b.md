# nhdsLT_sup_nhdsGE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43e4352a-2acd-85be-d5e8-b9d6de702d08",
  "kind": "theorem",
  "lexical_name": "nhdsLT_sup_nhdsGE",
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
  "slug": "nhdslt-sup-nhdsge--775f9fe060e260ac006b8e8b",
  "source": {
    "blob": "7ba6310bd94077d1740c901ad947cccfd1740744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:775f9fe060e260ac006b8e8b9c53a1d3dbd90d7f73b65cea7a7ad8473700e253",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43e4352a-2acd-85be-d5e8-b9d6de702d08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsLT_sup_nhdsGE (a : α) : 𝓝[<] a ⊔ 𝓝[≥] a = 𝓝 a := by
  rw [← nhdsWithin_union, Iio_union_Ici, nhdsWithin_univ]

@[deprecated (since := "2024-12-21")] alias nhds_left'_sup_nhds_right := nhdsLT_sup_nhdsGE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRight/Variant779377a1041090964d5fe964d23ae66e6fa8bb148d7e69298adb313f7ef8c3a0.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ba6310bd94077d1740c901ad947cccfd1740744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
