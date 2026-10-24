# mul_inv_rev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "067bef3ede868081a574c985587123ab609c4cfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 813,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2347db8b-8a92-676a-d418-5d5ef9965b07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f652b6e-1846-151e-762e-c6291d913a0a",
  "kind": "theorem",
  "lexical_name": "mul_inv_rev",
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
  "slug": "mul-inv-rev--6ee343c885dc8712c03cb882",
  "source": {
    "blob": "067bef3ede868081a574c985587123ab609c4cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 825,
    "line": 813,
    "path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ee343c885dc8712c03cb882ecc66b9ef93d2e73f74924fbfc7af8522199e48c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f652b6e-1846-151e-762e-c6291d913a0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 813–825.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_inv_rev (a b : tsze R M) :
    (a * b)⁻¹ = b⁻¹ * a⁻¹ := by
  ext
  · rw [fst_inv, fst_mul, fst_mul, mul_inv_rev, fst_inv, fst_inv]
  · simp only [snd_inv, snd_mul, fst_mul, fst_inv]
    simp only [neg_smul, smul_neg, smul_add]
    simp_rw [mul_inv_rev, smul_comm (_ : R), op_smul_op_smul, smul_smul, add_comm, neg_add]
    obtain ha0 | ha := eq_or_ne (fst a) 0
    · simp [ha0]
    obtain hb0 | hb := eq_or_ne (fst b) 0
    · simp [hb0]
    rw [inv_mul_cancel_right₀ ha, mul_inv_cancel_left₀ hb]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variant07c069bb1f40ad7742296b88d958f62bdf7be12f5701819bd7eb8b332ee07462.lean#L813).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `067bef3ede868081a574c985587123ab609c4cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
