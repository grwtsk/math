# LieModule.toEnd_pow_lie

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e12b295c861027e309bcc40acfe8e912fe8698c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe6121ce061bbed5f12ae7804cafa76985c48f43529b8a167dbcb73bd4bc1a38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ceb873e-40a6-63d3-e4e0-6e9cdf07631a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98e53e66-0766-38e3-8831-93e23c7da2f0",
  "kind": "lemma",
  "lexical_name": "LieModule.toEnd_pow_lie",
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
  "slug": "liemodule-toend-pow-lie--04e9758e22dc6b7e2a30bfb5",
  "source": {
    "blob": "e12b295c861027e309bcc40acfe8e912fe8698c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 300,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variantfe6121ce061bbed5f12ae7804cafa76985c48f43529b8a167dbcb73bd4bc1a38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04e9758e22dc6b7e2a30bfb560439afbae0c0d6646129c141edbbde1fabe35c9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfAssociative/Variantfe6121ce061bbed5f12ae7804cafa76985c48f43529b8a167dbcb73bd4bc1a38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98e53e66-0766-38e3-8831-93e23c7da2f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LieModule.toEnd_pow_lie (x y : L) (z : M) (n : ℕ) :
    ((φ x) ^ n) ⁅y, z⁆ =
      ∑ ij ∈ antidiagonal n, n.choose ij.1 • ⁅((ad R L x) ^ ij.1) y, ((φ x) ^ ij.2) z⁆ := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_antidiagonal_choose_succ_nsmul
      (fun i j ↦ ⁅((ad R L x) ^ i) y, ((φ x) ^ j) z⁆) n]
    simp only [pow_succ', Module.End.mul_apply, ih, map_sum, map_nsmul,
      toEnd_lie, nsmul_add, sum_add_distrib]
    rw [add_comm, add_left_cancel_iff, sum_congr rfl]
    rintro ⟨i, j⟩ hij
    rw [mem_antidiagonal] at hij
    rw [Nat.choose_symm_of_eq_add hij.symm]

open Finset in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfAssociative/Variantfe6121ce061bbed5f12ae7804cafa76985c48f43529b8a167dbcb73bd4bc1a38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variantfe6121ce061bbed5f12ae7804cafa76985c48f43529b8a167dbcb73bd4bc1a38.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e12b295c861027e309bcc40acfe8e912fe8698c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
