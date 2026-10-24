# induct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84b40afe9386e017fb0055c0de2fadd0fd687dbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9891aa7ea0dd9143d48aa6b0952e935406890fef5e3fd52fac63d493d5397de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8845f022-eed5-877f-f268-f0afb59a1ca6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f036f880-479c-3bca-161b-4b5d6d043996",
  "kind": "theorem",
  "lexical_name": "induct",
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
  "slug": "induct--f8393c5730cbbfad5d2385b2",
  "source": {
    "blob": "84b40afe9386e017fb0055c0de2fadd0fd687dbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 78,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variantd9891aa7ea0dd9143d48aa6b0952e935406890fef5e3fd52fac63d493d5397de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8393c5730cbbfad5d2385b2bdcefc9e25cbd3bb9346d6e041e90ae4888c4dec",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Chebyshev/Variantd9891aa7ea0dd9143d48aa6b0952e935406890fef5e3fd52fac63d493d5397de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f036f880-479c-3bca-161b-4b5d6d043996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem induct (motive : ℤ → Prop)
    (zero : motive 0)
    (one : motive 1)
    (add_two : ∀ (n : ℕ), motive (↑n + 1) → motive ↑n → motive (↑n + 2))
    (neg_add_one : ∀ (n : ℕ), motive (-↑n) → motive (-↑n + 1) → motive (-↑n - 1)) :
    ∀ (a : ℤ), motive a :=
  T.induct motive zero one add_two fun n hn hnm => by
    simpa only [Int.negSucc_eq, neg_add] using neg_add_one n hn hnm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Chebyshev/Variantd9891aa7ea0dd9143d48aa6b0952e935406890fef5e3fd52fac63d493d5397de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variantd9891aa7ea0dd9143d48aa6b0952e935406890fef5e3fd52fac63d493d5397de.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84b40afe9386e017fb0055c0de2fadd0fd687dbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
