# LawfulLTCmp.eq_compareOfLessAndEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f61b4cb5205f8108e1c1b21a08c2cdf3ef96ad6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/898dccd0410a8d1043f0e0f87f70d58641115715d9605eee12a0464fdc9fca05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d82d100c-c4dd-894b-84ba-7b9d1278bf33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c62d96a-fcb7-7a0a-f228-b287a0201a6b",
  "kind": "theorem",
  "lexical_name": "LawfulLTCmp.eq_compareOfLessAndEq",
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
  "slug": "lawfulltcmp-eq-compareoflessandeq--fd39d1238b1ed5ea90c410da",
  "source": {
    "blob": "8f61b4cb5205f8108e1c1b21a08c2cdf3ef96ad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 152,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Order/Variant898dccd0410a8d1043f0e0f87f70d58641115715d9605eee12a0464fdc9fca05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd39d1238b1ed5ea90c410dac3d1b97c3748f9846f03c0a32370cec67cb61c77",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Order/Variant898dccd0410a8d1043f0e0f87f70d58641115715d9605eee12a0464fdc9fca05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c62d96a-fcb7-7a0a-f228-b287a0201a6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LawfulLTCmp.eq_compareOfLessAndEq
    [LT α] [DecidableEq α] [LawfulEqCmp cmp] [LawfulLTCmp cmp]
    (x y : α) [Decidable (x < y)] : cmp x y = compareOfLessAndEq x y := by
  simp only [compareOfLessAndEq]
  split <;> rename_i h1 <;> [skip; split <;> rename_i h2]
  · exact LawfulLTCmp.eq_lt_iff_lt.2 h1
  · exact LawfulEqCmp.compare_eq_iff_eq.2 h2
  · cases e : cmp x y
    · cases h1 (LawfulLTCmp.eq_lt_iff_lt.1 e)
    · cases h2 (LawfulEqCmp.compare_eq_iff_eq.1 e)
    · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Order/Variant898dccd0410a8d1043f0e0f87f70d58641115715d9605eee12a0464fdc9fca05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Order/Variant898dccd0410a8d1043f0e0f87f70d58641115715d9605eee12a0464fdc9fca05.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f61b4cb5205f8108e1c1b21a08c2cdf3ef96ad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
