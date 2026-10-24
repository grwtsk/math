# mul_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b24e73b66a5f3a6042a59f8f969d051cd5fabcb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc1d9195-415e-407c-d07e-c3a2b9bae319",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be29bc78-62f7-b858-80aa-df7c0f2aeb3a",
  "kind": "theorem",
  "lexical_name": "mul_nonneg",
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
  "slug": "mul-nonneg--3794da891adb6373b64e641a",
  "source": {
    "blob": "b24e73b66a5f3a6042a59f8f969d051cd5fabcb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 301,
    "path": "GRWTSK/Algebra/Ring/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3794da891adb6373b64e641ac5a2fd804f56421777f4c0bc17e4e48cdf218cc8",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be29bc78-62f7-b858-80aa-df7c0f2aeb3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_nonneg {a b : R} (h₁ : 0 ≤ a) (h₂ : 0 ≤ b) : 0 ≤ a * b := by
  simpa [Semiring.zero_mul] using mul_le_mul_of_nonneg_right h₁ h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantc61e6ef0bbab4a63ba8f7e1dc15453802b985a2d4f0a8b50738c5891510affb2.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b24e73b66a5f3a6042a59f8f969d051cd5fabcb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
