# gcd_fib_add_mul_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d27137410eb195d6f57290a6908e7f42df58a75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bd8d1ee-173f-6876-fa8c-02b8e7ca3c0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff6597c4-2705-0aad-c55f-8b53bfccaa38",
  "kind": "theorem",
  "lexical_name": "gcd_fib_add_mul_self",
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
  "slug": "gcd-fib-add-mul-self--6af0c3a75b818873dbc5377c",
  "source": {
    "blob": "4d27137410eb195d6f57290a6908e7f42df58a75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6af0c3a75b818873dbc5377c9a5223a729263289cf8f2eded6e61ff1770c9efb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff6597c4-2705-0aad-c55f-8b53bfccaa38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_fib_add_mul_self (m n : ℕ) : ∀ k, gcd (fib m) (fib (n + k * m)) = gcd (fib m) (fib n)
  | 0 => by simp
  | k + 1 => by
    rw [← gcd_fib_add_mul_self m n k, add_mul, ← add_assoc, one_mul, gcd_fib_add_self _ _]

/-- `fib n` is a strong divisibility sequence,
  see https://proofwiki.org/wiki/GCD_of_Fibonacci_Numbers -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantd8cd53ba05a1b0f822fba4a1dc3350c77972c59de4f2d669dc257cb973cb1d18.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d27137410eb195d6f57290a6908e7f42df58a75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
