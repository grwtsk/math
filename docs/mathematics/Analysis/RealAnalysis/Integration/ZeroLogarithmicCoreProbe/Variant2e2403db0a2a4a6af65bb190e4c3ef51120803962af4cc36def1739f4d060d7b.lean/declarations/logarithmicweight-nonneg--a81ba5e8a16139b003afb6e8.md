# logarithmicWeight_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7584f5cba5db593e20780293320c9c3bf685dbd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17c789d6-4315-527a-d589-a6e8d77b4660",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5c6a2ef-3fe6-71f4-db48-2e70346f1b33",
  "kind": "theorem",
  "lexical_name": "logarithmicWeight_nonneg",
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
  "slug": "logarithmicweight-nonneg--a81ba5e8a16139b003afb6e8",
  "source": {
    "blob": "7584f5cba5db593e20780293320c9c3bf685dbd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a81ba5e8a16139b003afb6e8aada0de031b8ebed6b140b9cbb19a6df81b8f3f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5c6a2ef-3fe6-71f4-db48-2e70346f1b33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmicWeight_nonneg (ξ : ℝ) : 0 ≤ logarithmicWeight ξ := by
  have hlog : 0 ≤ Real.log (1 + 4 * ξ ^ 2) :=
    Real.log_nonneg (by nlinarith [sq_nonneg ξ])
  unfold logarithmicWeight
  positivity

/-- The fixed power tail is genuinely integrable on the whole real line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7584f5cba5db593e20780293320c9c3bf685dbd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
