# _root_.Finset.coe_infsep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3d33e76b444f3ae2602d42b9d2f140f5797c611",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fb697fd-40fb-6fc8-2790-2e341d2fa70a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a816312-7dc4-560f-db21-a3692b4d0f5d",
  "kind": "theorem",
  "lexical_name": "_root_.Finset.coe_infsep",
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
  "slug": "root-finset-coe-infsep--0a7ab0c9bc201906a811d43e",
  "source": {
    "blob": "d3d33e76b444f3ae2602d42b9d2f140f5797c611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 416,
    "path": "GRWTSK/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a7ab0c9bc201906a811d43e0c09c26b159d31477b0f5778cfd2f85c0d4f774b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a816312-7dc4-560f-db21-a3692b4d0f5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Finset.coe_infsep [DecidableEq α] (s : Finset α) : (s : Set α).infsep =
    if hs : s.offDiag.Nonempty then s.offDiag.inf' hs (uncurry dist) else 0 := by
  have H : (s : Set α).Nontrivial ↔ s.offDiag.Nonempty := by
    rw [← Set.offDiag_nonempty, ← Finset.coe_offDiag, Finset.coe_nonempty]
  split_ifs with hs
  · simp_rw [(H.mpr hs).infsep_of_fintype, ← Finset.coe_offDiag, Finset.toFinset_coe]
  · exact (not_nontrivial_iff.mp (H.mp.mt hs)).infsep_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Infsep/Variant61756b28b1e1a61e2f11a1dc82166290b528ddaed15d7e2512fa19d81d0a6330.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3d33e76b444f3ae2602d42b9d2f140f5797c611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
