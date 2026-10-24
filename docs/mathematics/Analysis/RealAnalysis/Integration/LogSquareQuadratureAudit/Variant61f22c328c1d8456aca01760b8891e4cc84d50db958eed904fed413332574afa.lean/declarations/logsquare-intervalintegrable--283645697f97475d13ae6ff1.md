# logSquare_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26c2dbea6e41afd4034a92ee29ec3cada03bce04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:271fc8e1-3180-5c42-43c2-c795431f7430",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1f6cc0c-e642-66c5-e650-7074717376ce",
  "kind": "theorem",
  "lexical_name": "logSquare_intervalIntegrable",
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
  "slug": "logsquare-intervalintegrable--283645697f97475d13ae6ff1",
  "source": {
    "blob": "26c2dbea6e41afd4034a92ee29ec3cada03bce04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:283645697f97475d13ae6ff18999602024cc96a493ddae33c25efd011db7d594",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1f6cc0c-e642-66c5-e650-7074717376ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSquare_intervalIntegrable (a b : ℝ) (ha : 1 ≤ a) (hb : 1 ≤ b) :
    IntervalIntegrable (fun t : ℝ => (Real.log t) ^ 2) volume a b := by
  apply ContinuousOn.intervalIntegrable
  intro t ht
  have ht0 : 0 < t := lt_of_lt_of_le zero_lt_one ((le_min ha hb).trans ht.1)
  exact ((Real.continuousAt_log ht0.ne').pow 2).continuousWithinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureAudit/Variant61f22c328c1d8456aca01760b8891e4cc84d50db958eed904fed413332574afa.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26c2dbea6e41afd4034a92ee29ec3cada03bce04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
