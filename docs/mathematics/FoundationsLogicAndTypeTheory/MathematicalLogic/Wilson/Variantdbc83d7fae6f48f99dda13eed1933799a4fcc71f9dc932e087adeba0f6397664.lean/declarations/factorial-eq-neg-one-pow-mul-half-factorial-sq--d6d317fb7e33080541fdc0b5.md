# factorial_eq_neg_one_pow_mul_half_factorial_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb37fc28cfe49d4ded39b0e53e40317351d85744",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbc83d7fae6f48f99dda13eed1933799a4fcc71f9dc932e087adeba0f6397664.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2950dd7c-5ed6-b19f-9e13-ba9e95684e6e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:144e1f19-368e-8ac9-a226-5368ec91a6ce",
  "kind": "theorem",
  "lexical_name": "factorial_eq_neg_one_pow_mul_half_factorial_sq",
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
  "slug": "factorial-eq-neg-one-pow-mul-half-factorial-sq--d6d317fb7e33080541fdc0b5",
  "source": {
    "blob": "fb37fc28cfe49d4ded39b0e53e40317351d85744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantdbc83d7fae6f48f99dda13eed1933799a4fcc71f9dc932e087adeba0f6397664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6d317fb7e33080541fdc0b51db84e4352da002e7a95d20e62029c25064bd35e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantdbc83d7fae6f48f99dda13eed1933799a4fcc71f9dc932e087adeba0f6397664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:144e1f19-368e-8ac9-a226-5368ec91a6ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_eq_neg_one_pow_mul_half_factorial_sq {p : ℕ} (hp : Odd p) :
    ((p - 1)! : ZMod p) = (-1) ^ ((p - 1) / 2) * (((p - 1) / 2)! : ZMod p) ^ 2 := by
  rw [pow_two, ← Nat.factorial_mul_descFactorial (show (p - 1) / 2 ≤ p - 1 by lia),
    show p - 1 - (p - 1) / 2 = (p - 1) / 2 by grind, Nat.cast_mul,
    cast_descFactorial (by lia), mul_rotate']

variable (p : ℕ) [Fact p.Prime]

/-- **Wilson's Lemma**: the product of `1`, ..., `p-1` is `-1` modulo `p`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantdbc83d7fae6f48f99dda13eed1933799a4fcc71f9dc932e087adeba0f6397664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantdbc83d7fae6f48f99dda13eed1933799a4fcc71f9dc932e087adeba0f6397664.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb37fc28cfe49d4ded39b0e53e40317351d85744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
