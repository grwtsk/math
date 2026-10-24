# get_diff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3fed18a-6a7b-caa6-9062-32209e4d57c4",
  "kind": "theorem",
  "lexical_name": "get_diff",
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
  "slug": "get-diff--9ddcd3df1f1668f3c8df23fc",
  "source": {
    "blob": "386b17bd8e4dea5253f1a7d5b0a83eca130926a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2125,
    "line": 2120,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant05f4e603f6539ada2c464ba521e1773a51b0832c9caf4886ecfb449999f3c749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ddcd3df1f1668f3c8df23fcd27d96c9fbc3b147da319b05e3dd7e5e461c8ac2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant05f4e603f6539ada2c464ba521e1773a51b0832c9caf4886ecfb449999f3c749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3fed18a-6a7b-caa6-9062-32209e4d57c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2120–2125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem get_diff [TransCmp cmp]
    {k : α} {h_mem : k ∈ t₁ \ t₂} :
    (t₁ \ t₂).get k h_mem = t₁.get k (mem_diff_iff.1 h_mem).1 :=
  ExtDTreeMap.Const.get_diff

/- getD -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant05f4e603f6539ada2c464ba521e1773a51b0832c9caf4886ecfb449999f3c749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant05f4e603f6539ada2c464ba521e1773a51b0832c9caf4886ecfb449999f3c749.lean#L2120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `386b17bd8e4dea5253f1a7d5b0a83eca130926a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
