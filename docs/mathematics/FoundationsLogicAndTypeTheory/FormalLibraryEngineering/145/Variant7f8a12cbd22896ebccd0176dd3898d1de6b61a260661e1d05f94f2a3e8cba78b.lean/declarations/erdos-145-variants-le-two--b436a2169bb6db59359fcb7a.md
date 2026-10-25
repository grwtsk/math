# erdos_145.variants.le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "828687880a05a0407f0158e586a4f05ba91c86ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f8a12cbd22896ebccd0176dd3898d1de6b61a260661e1d05f94f2a3e8cba78b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46b6ac5c-e9c7-3b2a-3ff2-72ff6778acaf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c80b9a26-0871-ac52-8d5d-4a855c1e08f4",
  "kind": "theorem",
  "lexical_name": "erdos_145.variants.le_two",
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
  "slug": "erdos-145-variants-le-two--b436a2169bb6db59359fcb7a",
  "source": {
    "blob": "828687880a05a0407f0158e586a4f05ba91c86ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/145/Variant7f8a12cbd22896ebccd0176dd3898d1de6b61a260661e1d05f94f2a3e8cba78b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b436a2169bb6db59359fcb7ac184c44bb0d6435077148131017b7c2f3cc4e8dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/145/Variant7f8a12cbd22896ebccd0176dd3898d1de6b61a260661e1d05f94f2a3e8cba78b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c80b9a26-0871-ac52-8d5d-4a855c1e08f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erdos_145.variants.le_two {α : ℝ} (hα : α ∈ Set.Icc 0 2) :
    ∃ β : ℝ,
      atTop.Tendsto (fun x : ℝ ↦ 1 / x * ∑ n ∈ A x, (s (n + 1) - s n : ℝ) ^ α) (𝓝 β) := by
  sorry

/--
Hooley [Ho73] extended this to all $0 \leq \alpha\leq 3$.

[Ho73] Hooley, Christopher, On the intervals between consecutive terms of sequences. Proc. Symp. Pure Math, vol. 24, pp. 129-140. 1973.
-/
@[category research solved, AMS 11]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/145/Variant7f8a12cbd22896ebccd0176dd3898d1de6b61a260661e1d05f94f2a3e8cba78b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/145/Variant7f8a12cbd22896ebccd0176dd3898d1de6b61a260661e1d05f94f2a3e8cba78b.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `828687880a05a0407f0158e586a4f05ba91c86ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
