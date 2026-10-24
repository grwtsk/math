# factorization_balance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a4a24d0-bbd3-c5bf-fe4e-22d7f86b394c",
  "kind": "theorem",
  "lexical_name": "factorization_balance",
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
  "slug": "factorization-balance--62a7570d7455251bcbc6e8fb",
  "source": {
    "blob": "728e97ca9cdd31b64e83aa34c364577f81e4d104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 239,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62a7570d7455251bcbc6e8fb13d0eb70e376a632cc36752a4d5cbc2de47828d5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a4a24d0-bbd3-c5bf-fe4e-22d7f86b394c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_balance (t : PrimitiveAdditiveTriple) (p : ℕ) :
    (minimalDiscriminant t).factorization p +
      (if Descends t then 12 else 0) * (2 : ℕ).factorization p =
        2 * (t.a * t.b * t.c).factorization p + 4 * (2 : ℕ).factorization p := by
  have he := congrArg (fun n : ℕ => n.factorization p) (discriminant_balance t)
  rw [Nat.factorization_mul (Nat.ne_of_gt (removedFactor_pos t))
      (Nat.ne_of_gt (minimalDiscriminant_pos t)),
    Nat.factorization_mul (by decide) (pow_ne_zero 2 (Nat.ne_of_gt t.product_pos))] at he
  have hs : (removedFactor t).factorization p =
      (if Descends t then 12 else 0) * (2 : ℕ).factorization p := by
    unfold removedFactor
    split_ifs
    · rw [show (4096 : ℕ) = 2^12 by norm_num]
      simp [Nat.factorization_pow, Finsupp.smul_apply, smul_eq_mul]
    · simp
  rw [show (16 : ℕ) = 2^4 by norm_num] at he
  simp only [Finsupp.add_apply, hs, Nat.factorization_pow,
    Finsupp.smul_apply, smul_eq_mul] at he
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `728e97ca9cdd31b64e83aa34c364577f81e4d104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
