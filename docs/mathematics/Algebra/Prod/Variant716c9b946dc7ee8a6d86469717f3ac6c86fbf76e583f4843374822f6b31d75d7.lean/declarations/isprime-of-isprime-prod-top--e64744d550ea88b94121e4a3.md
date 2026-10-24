# isPrime_of_isPrime_prod_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "981efa1608843d5ba108fd39902831997f5ee807",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25ae9e9f-6b38-7984-3fb1-51cff087bdd8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:630cbfa9-06de-9884-be2f-dfcc28ca06fc",
  "kind": "theorem",
  "lexical_name": "isPrime_of_isPrime_prod_top",
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
  "slug": "isprime-of-isprime-prod-top--e64744d550ea88b94121e4a3",
  "source": {
    "blob": "981efa1608843d5ba108fd39902831997f5ee807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 109,
    "path": "GRWTSK/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e64744d550ea88b94121e4a3ba6a22a95bbc1716d7b051f980c6d4ca00686abd",
  "verification": {
    "reference": "docs/verification/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:630cbfa9-06de-9884-be2f-dfcc28ca06fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrime_of_isPrime_prod_top {I : Ideal R} (h : (Ideal.prod I (⊤ : Ideal S)).IsPrime) :
    I.IsPrime := by
  constructor
  · contrapose! h
    rw [h, prod_top_top, isPrime_iff]
    simp [isPrime_iff, h]
  · intro x y hxy
    have : (⟨x, 1⟩ : R × S) * ⟨y, 1⟩ ∈ prod I ⊤ := by
      rw [Prod.mk_mul_mk, mul_one, mem_prod]
      exact ⟨hxy, trivial⟩
    simpa using h.mem_or_mem this
#align ideal.is_prime_of_is_prime_prod_top Ideal.isPrime_of_isPrime_prod_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prod/Variant716c9b946dc7ee8a6d86469717f3ac6c86fbf76e583f4843374822f6b31d75d7.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `981efa1608843d5ba108fd39902831997f5ee807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
