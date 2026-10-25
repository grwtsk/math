# cramer_eq_adjugate_mulVec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9832c2b84c03368962ff960af5dab5c953137b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:acdd75f6-022f-9e5d-76cf-282dbadd9328",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e53e0de0-305c-deab-bf59-aa852a274634",
  "kind": "theorem",
  "lexical_name": "cramer_eq_adjugate_mulVec",
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
  "slug": "cramer-eq-adjugate-mulvec--8a23733393d19f78a623ac10",
  "source": {
    "blob": "d9832c2b84c03368962ff960af5dab5c953137b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 268,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a23733393d19f78a623ac10a15f1ebd41cced3e58b8c7ca769c67194648b745",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e53e0de0-305c-deab-bf59-aa852a274634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cramer_eq_adjugate_mulVec (A : Matrix n n α) (b : n → α) :
    cramer A b = A.adjugate.mulVec b := by
  nth_rw 2 [← A.transpose_transpose]
  rw [← adjugate_transpose, adjugate_def]
  have : b = ∑ i, b i • Pi.single i 1 := by
    refine' (pi_eq_sum_univ b).trans _
    congr with j
    -- Porting note: needed to help `Pi.smul_apply`
    simp [Pi.single_apply, eq_comm, Pi.smul_apply (b j)]
  conv_lhs =>
    rw [this]
  ext k
  simp [mulVec, dotProduct, mul_comm]
#align matrix.cramer_eq_adjugate_mul_vec Matrix.cramer_eq_adjugate_mulVec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9832c2b84c03368962ff960af5dab5c953137b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
