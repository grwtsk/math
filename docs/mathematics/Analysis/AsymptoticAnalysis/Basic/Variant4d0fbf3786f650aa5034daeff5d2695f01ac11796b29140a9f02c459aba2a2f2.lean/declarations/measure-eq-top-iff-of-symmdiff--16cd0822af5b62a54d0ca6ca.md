# measure_eq_top_iff_of_symmDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bf0a9b0cd18ca80340fe5d80a441496467f3f84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d0fbf3786f650aa5034daeff5d2695f01ac11796b29140a9f02c459aba2a2f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbe4bdbd-0b1f-1bba-7436-a092e1ec6c10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd39a746-d0d2-a1e3-09d8-309e44063ca7",
  "kind": "theorem",
  "lexical_name": "measure_eq_top_iff_of_symmDiff",
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
  "slug": "measure-eq-top-iff-of-symmdiff--16cd0822af5b62a54d0ca6ca",
  "source": {
    "blob": "5bf0a9b0cd18ca80340fe5d80a441496467f3f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 231,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4d0fbf3786f650aa5034daeff5d2695f01ac11796b29140a9f02c459aba2a2f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16cd0822af5b62a54d0ca6ca6a41a1fd553fa82bbd7269b22fd51028903a69be",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant4d0fbf3786f650aa5034daeff5d2695f01ac11796b29140a9f02c459aba2a2f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd39a746-d0d2-a1e3-09d8-309e44063ca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_eq_top_iff_of_symmDiff (hμst : μ (s ∆ t) ≠ ∞) : μ s = ∞ ↔ μ t = ∞ := by
  suffices h : ∀ u v, μ (u ∆ v) ≠ ∞ → μ u = ∞ → μ v = ∞
    from ⟨h s t hμst, h t s (symmDiff_comm s t ▸ hμst)⟩
  intro u v hμuv hμu
  by_contra! hμv
  apply hμuv
  rw [Set.symmDiff_def, eq_top_iff]
  calc
    ∞ = μ u - μ v := by rw [ENNReal.sub_eq_top_iff.2 ⟨hμu, hμv⟩]
    _ ≤ μ (u \ v) := le_measure_sdiff
    _ ≤ μ (u \ v ∪ v \ u) := measure_mono subset_union_left

/-- If the measure of the symmetric difference of two sets is finite,
then one has finite measure if and only if the other one does. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant4d0fbf3786f650aa5034daeff5d2695f01ac11796b29140a9f02c459aba2a2f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant4d0fbf3786f650aa5034daeff5d2695f01ac11796b29140a9f02c459aba2a2f2.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bf0a9b0cd18ca80340fe5d80a441496467f3f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
