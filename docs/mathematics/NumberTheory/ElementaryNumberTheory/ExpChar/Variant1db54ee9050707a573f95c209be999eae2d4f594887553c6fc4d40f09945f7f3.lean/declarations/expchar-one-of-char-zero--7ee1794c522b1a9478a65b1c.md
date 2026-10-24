# expChar_one_of_char_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55ca94dbddbb2e0dd85319b93f4ad4c4a6e65019",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:163bd6a0-f929-7b75-f3c4-a88280fc2ce8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f98c0f77-a5dc-90f7-0b57-397ff7eab872",
  "kind": "theorem",
  "lexical_name": "expChar_one_of_char_zero",
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
  "slug": "expchar-one-of-char-zero--7ee1794c522b1a9478a65b1c",
  "source": {
    "blob": "55ca94dbddbb2e0dd85319b93f4ad4c4a6e65019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ee1794c522b1a9478a65b1c50e0132aff76fc07477aa3b7a24f88876eb87e04",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f98c0f77-a5dc-90f7-0b57-397ff7eab872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expChar_one_of_char_zero (q : ℕ) [hp : CharP R 0] [hq : ExpChar R q] : q = 1 := by
  cases' hq with q hq_one hq_prime hq_hchar
  · rfl
  · exact False.elim (lt_irrefl _ ((hp.eq R hq_hchar).symm ▸ hq_prime : (0 : ℕ).Prime).pos)
#align exp_char_one_of_char_zero expChar_one_of_char_zero

/-- The characteristic equals the exponential characteristic iff the former is prime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ExpChar/Variant1db54ee9050707a573f95c209be999eae2d4f594887553c6fc4d40f09945f7f3.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55ca94dbddbb2e0dd85319b93f4ad4c4a6e65019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
