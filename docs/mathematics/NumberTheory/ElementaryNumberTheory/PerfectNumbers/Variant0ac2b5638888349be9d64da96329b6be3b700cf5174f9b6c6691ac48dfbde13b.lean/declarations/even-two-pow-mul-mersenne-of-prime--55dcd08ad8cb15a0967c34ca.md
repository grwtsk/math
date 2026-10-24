# even_two_pow_mul_mersenne_of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c2b57f54ada7b789724c1b58d9810589c934308",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76151ed1-2b99-1b45-5e33-d2d37ff9a0ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77eb9d41-6f17-267e-17da-9d6d3b082fce",
  "kind": "theorem",
  "lexical_name": "even_two_pow_mul_mersenne_of_prime",
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
  "slug": "even-two-pow-mul-mersenne-of-prime--55dcd08ad8cb15a0967c34ca",
  "source": {
    "blob": "7c2b57f54ada7b789724c1b58d9810589c934308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 54,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55dcd08ad8cb15a0967c34ca309d0a2066a2e3241009a07f1cde15821df8fe8e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77eb9d41-6f17-267e-17da-9d6d3b082fce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_two_pow_mul_mersenne_of_prime (k : ℕ) (pr : (mersenne (k + 1)).Prime) :
    Even (2 ^ k * mersenne (k + 1)) := by simp [ne_zero_of_prime_mersenne k pr, parity_simps]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c2b57f54ada7b789724c1b58d9810589c934308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
