# mangoldtLogPrefix_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dde3609e76077b2ff9c10125c9fa762ec5633fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2db33bfd-2b8e-b169-581d-be98d22aa6ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbd70578-e374-063b-c31f-10fdc56b409e",
  "kind": "theorem",
  "lexical_name": "mangoldtLogPrefix_eq_sum",
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
  "slug": "mangoldtlogprefix-eq-sum--1da7bc3773743802389bf68c",
  "source": {
    "blob": "6dde3609e76077b2ff9c10125c9fa762ec5633fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1da7bc3773743802389bf68c49e460d575a39f64c6bd4ca6674f3d4e1ce963ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbd70578-e374-063b-c31f-10fdc56b409e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtLogPrefix_eq_sum (b : ℝ) :
    mangoldtLogPrefix b = ∑ n ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt n / (n : ℝ) := by
  unfold mangoldtLogPrefix weightedMangoldt
  symm
  apply Finset.sum_subset
  · intro n hn
    simp only [primePowerInventory, Finset.mem_Icc] at hn
    exact Finset.mem_Ioc.mpr ⟨by omega, hn.2⟩
  · intro n hn hnnot
    have hn' := Finset.mem_Ioc.mp hn
    have hn1 : n = 1 := by
      simp only [primePowerInventory, Finset.mem_Icc, not_and, not_le] at hnnot
      omega
    subst n
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dde3609e76077b2ff9c10125c9fa762ec5633fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
