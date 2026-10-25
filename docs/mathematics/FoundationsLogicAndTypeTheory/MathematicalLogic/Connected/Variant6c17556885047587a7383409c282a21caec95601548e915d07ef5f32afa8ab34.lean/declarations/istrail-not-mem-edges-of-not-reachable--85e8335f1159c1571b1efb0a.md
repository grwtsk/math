# IsTrail.not_mem_edges_of_not_reachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2ae342296a14e1e865928f10973ad578007fd6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 943,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c17556885047587a7383409c282a21caec95601548e915d07ef5f32afa8ab34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f90cff9d-8275-aed8-171e-d43d948fd862",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d17ea70b-0cc4-dfc0-0765-7028d315988c",
  "kind": "lemma",
  "lexical_name": "IsTrail.not_mem_edges_of_not_reachable",
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
  "slug": "istrail-not-mem-edges-of-not-reachable--85e8335f1159c1571b1efb0a",
  "source": {
    "blob": "a2ae342296a14e1e865928f10973ad578007fd6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 951,
    "line": 943,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant6c17556885047587a7383409c282a21caec95601548e915d07ef5f32afa8ab34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85e8335f1159c1571b1efb0ac93dd939f42304a5cf198264c68ddb34ade7fbe7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant6c17556885047587a7383409c282a21caec95601548e915d07ef5f32afa8ab34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d17ea70b-0cc4-dfc0-0765-7028d315988c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 943–951.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTrail.not_mem_edges_of_not_reachable (hw : w.IsTrail)
    (huy : ¬ (G.deleteEdges {s(x, y)}).Reachable u y)
    (hvy : ¬ (G.deleteEdges {s(x, y)}).Reachable v y) : s(x, y) ∉ w.edges := by
  classical
  exact fun hxy ↦ hw.disjoint_edges_takeUntil_dropUntil (w.snd_mem_support_of_mem_edges hxy)
    ((w.takeUntil y _).mem_edges_of_not_reachable_deleteEdges huy)
    (by simpa using (w.dropUntil y _).reverse.mem_edges_of_not_reachable_deleteEdges hvy)

/-- A trail doesn't go through a vertex that is disconnected from its endpoints by an edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant6c17556885047587a7383409c282a21caec95601548e915d07ef5f32afa8ab34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant6c17556885047587a7383409c282a21caec95601548e915d07ef5f32afa8ab34.lean#L943).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ae342296a14e1e865928f10973ad578007fd6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
