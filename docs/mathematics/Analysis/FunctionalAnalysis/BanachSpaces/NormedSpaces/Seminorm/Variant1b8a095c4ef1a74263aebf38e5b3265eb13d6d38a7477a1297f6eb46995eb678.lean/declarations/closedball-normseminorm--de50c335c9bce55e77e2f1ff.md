# closedBall_normSeminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b01d3ed48beab7bf04f75e1ee7cf23030bbe059",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b8a095c4ef1a74263aebf38e5b3265eb13d6d38a7477a1297f6eb46995eb678.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9fdaeefe-e59c-1e16-484c-fb7dbfd47e6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a30fa1a-4543-4b24-4093-715a65fb1d55",
  "kind": "theorem",
  "lexical_name": "closedBall_normSeminorm",
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
  "slug": "closedball-normseminorm--de50c335c9bce55e77e2f1ff",
  "source": {
    "blob": "0b01d3ed48beab7bf04f75e1ee7cf23030bbe059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1306,
    "line": 1300,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b8a095c4ef1a74263aebf38e5b3265eb13d6d38a7477a1297f6eb46995eb678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de50c335c9bce55e77e2f1ff996393c7289dbbfae202c514b2dce4f1154d436d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b8a095c4ef1a74263aebf38e5b3265eb13d6d38a7477a1297f6eb46995eb678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a30fa1a-4543-4b24-4093-715a65fb1d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1300–1306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedBall_normSeminorm : (normSeminorm 𝕜 E).closedBall = Metric.closedBall := by
  ext x r y
  simp only [Seminorm.mem_closedBall, Metric.mem_closedBall, coe_normSeminorm, dist_eq_norm]

variable {𝕜 E} {x : E}

/-- Balls at the origin are absorbent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b8a095c4ef1a74263aebf38e5b3265eb13d6d38a7477a1297f6eb46995eb678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variant1b8a095c4ef1a74263aebf38e5b3265eb13d6d38a7477a1297f6eb46995eb678.lean#L1300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b01d3ed48beab7bf04f75e1ee7cf23030bbe059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
