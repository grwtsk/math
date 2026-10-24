# formula2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6a73389cd2521fd69b81523553518af303cf6b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 637,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a7b7b54-8d4e-5ff5-73a8-61e5fcba980d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b321b49c-f57e-0cfe-34dd-e5f07f82e7cb",
  "kind": "lemma",
  "lexical_name": "formula2",
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
  "slug": "formula2--db6876bfde7c2b145d224e5c",
  "source": {
    "blob": "e6a73389cd2521fd69b81523553518af303cf6b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 652,
    "line": 637,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db6876bfde7c2b145d224e5cd8d3304f294d6f4c1d3df2c90c7a8ad3f3bd21f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b321b49c-f57e-0cfe-34dd-e5f07f82e7cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–652.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma formula2 :
    S.Y ^ 3 + S.u₄ * S.Z ^ 3 = S.u₅ * (λ ^ (S.multiplicity - 1) * S.X) ^ 3 := by
  rw [u₅_def, neg_mul, neg_mul, Units.val_neg, neg_mul, eq_neg_iff_add_eq_zero, add_assoc,
    add_comm (S.u₄ * S.Z ^ 3), ← add_assoc, add_comm (S.Y ^ 3)]
  apply mul_right_cancel₀ <| mul_ne_zero
    (mul_ne_zero hζ.zeta_sub_one_prime'.ne_zero S.u₂.isUnit.ne_zero) (Units.isUnit η).ne_zero
  simp only [zero_mul, add_mul]
  rw [← formula1 S]
  congrm ?_ + ?_ + ?_
  · have : (S.multiplicity-1)*3+1 = 3*S.multiplicity-2 := by have := S.two_le_multiplicity; omega
    calc _ = S.X^3 *(S.u₂*S.u₂⁻¹)*(η^3*S.u₁)*(λ^((S.multiplicity-1)*3)*λ):= by push_cast; ring
    _ = S.X^3*S.u₁*λ^(3*S.multiplicity-2) := by simp [hζ.toInteger_cube_eq_one, ← pow_succ, this]
  · ring
  · field_simp [u₄_def]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Three/Variant32806b1c76bec8457c70f7c983e99321c0f5288c50ce47a4baf9f9e8d03ee405.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6a73389cd2521fd69b81523553518af303cf6b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
