# mangoldtInteraction_not_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80b1e7f1a93540ceca23f5a7871bb443200326b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4d1acc3-e163-c851-479e-198603045e95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc91fe4c-50a6-3cf4-30b2-c1a1b96b13de",
  "kind": "theorem",
  "lexical_name": "mangoldtInteraction_not_nonnegative",
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
  "slug": "mangoldtinteraction-not-nonnegative--15a67f98ba655e74a1c31e09",
  "source": {
    "blob": "80b1e7f1a93540ceca23f5a7871bb443200326b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 322,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496SourceMangoldtIn/Variant3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15a67f98ba655e74a1c31e09e389a21b63a313549b773d1689c5658226f20a3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496SourceMangoldtIn/Variant3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc91fe4c-50a6-3cf4-30b2-c1a1b96b13de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtInteraction_not_nonnegative {A : ℝ} (hA : 1 ≤ A) :
    ¬ ∀ f : ComplexL2, 0 ≤ (⟪f, mangoldtInteraction A f⟫_ℂ).re := by
  intro h
  exact (not_le.mpr (mangoldtInteraction_negative_probe hA)) (h (interactionProbe (-1)))

/-- No generic nonpositive-quadratic certificate bounds the source family by itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496SourceMangoldtIn/Variant3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496SourceMangoldtIn/Variant3cd7cf28abddf047a8b0a55f6adea18cd40dfd3bb46653fbb1e9fd546551c496.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80b1e7f1a93540ceca23f5a7871bb443200326b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
