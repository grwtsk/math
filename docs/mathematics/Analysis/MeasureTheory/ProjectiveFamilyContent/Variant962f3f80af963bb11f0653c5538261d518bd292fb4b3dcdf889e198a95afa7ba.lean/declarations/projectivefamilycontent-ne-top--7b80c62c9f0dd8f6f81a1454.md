# projectiveFamilyContent_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d198a0f5f15ae48194826ef7d0bcd41b146bcb2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22a54dce-8fbc-82e7-c4e2-c69d3af64b54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dcd380d-c229-c6ab-9828-1fa76404a4db",
  "kind": "lemma",
  "lexical_name": "projectiveFamilyContent_ne_top",
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
  "slug": "projectivefamilycontent-ne-top--7b80c62c9f0dd8f6f81a1454",
  "source": {
    "blob": "d198a0f5f15ae48194826ef7d0bcd41b146bcb2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 145,
    "path": "GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b80c62c9f0dd8f6f81a1454d3cb67a84ff1143523c12d20c07f3888cdf23b5b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dcd380d-c229-c6ab-9828-1fa76404a4db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma projectiveFamilyContent_ne_top [∀ J, IsFiniteMeasure (P J)]
    (hP : IsProjectiveMeasureFamily P) :
    projectiveFamilyContent hP s ≠ ∞ := by
  rw [projectiveFamilyContent_eq hP, projectiveFamilyFun]
  split_ifs with hs
  · exact measure_ne_top _ _
  · exact ENNReal.zero_ne_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ProjectiveFamilyContent/Variant962f3f80af963bb11f0653c5538261d518bd292fb4b3dcdf889e198a95afa7ba.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d198a0f5f15ae48194826ef7d0bcd41b146bcb2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
