# translated_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "795dc6364c6ee1ac002cd2b40cf63d5b5d08d421",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2900bf97-8dbb-92a8-9c1e-a28d8e7f267b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:666ac359-8025-364d-80c0-c68b2fbdd9fb",
  "kind": "theorem",
  "lexical_name": "translated_compact",
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
  "slug": "translated-compact--9e76ee7463084d4cfe6144fd",
  "source": {
    "blob": "795dc6364c6ee1ac002cd2b40cf63d5b5d08d421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e76ee7463084d4cfe6144fde6e579f10f33339ae946b1547a843a1643314579",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:666ac359-8025-364d-80c0-c68b2fbdd9fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem translated_compact (F : ℝ → ℝ) (hF : HasCompactSupport F) (t : ℝ) :
    HasCompactSupport (fun r : ℝ => F (t - 1 - r)) := by
  have h := (hF.comp_homeomorph (Homeomorph.addLeft (t - 1))).comp_homeomorph (Homeomorph.neg ℝ)
  change HasCompactSupport (fun r => F ((t - 1) + -r)) at h
  simpa only [sub_eq_add_neg] using h

/-- Genuine integrability precedes the logarithmic sampling integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionAudit/Variant6888c41a6a3c92f58e1759f232a0002e8cc261dc4af7030e9c31c10755f3f96c.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795dc6364c6ee1ac002cd2b40cf63d5b5d08d421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
