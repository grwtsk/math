# lie_h_e

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5ea4d473ec13a2527e4f22859dcf346113b634b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bc6ba27-554b-86f8-5d86-daa6d6b292cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30ffb2e3-8b32-14cc-d202-972cfc23f25e",
  "kind": "lemma",
  "lexical_name": "lie_h_e",
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
  "slug": "lie-h-e--546fde539fa26bc426dfa37f",
  "source": {
    "blob": "c5ea4d473ec13a2527e4f22859dcf346113b634b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 45,
    "path": "GRWTSK/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:546fde539fa26bc426dfa37f9c57ffca2bf1f1c61b4c4f22fa6af980aa2da912",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30ffb2e3-8b32-14cc-d202-972cfc23f25e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lie_h_e :
    ⁅h j, e i⁆ = b.cartanMatrix i j • e i := by
  classical
  ext (k | k) (l | l)
  · simp [h, e]
  · simp only [h, e, Ring.lie_def, Matrix.sub_apply, Matrix.mul_apply, Fintype.sum_sum_type,
      Matrix.fromBlocks_apply₁₂, Matrix.zero_apply, zero_mul, add_zero, Finset.sum_const_zero]
    rw [Finset.sum_eq_ite l (by aesop)]
    aesop
  · simp only [h, e]
    aesop
  · simp only [h, e, indexNeg_neg, Ring.lie_def, Matrix.sub_apply, Matrix.mul_apply,
      Fintype.sum_sum_type, Matrix.fromBlocks_apply₂₁, Matrix.zero_apply, Matrix.fromBlocks_apply₁₂,
      Matrix.of_apply, mul_ite, mul_one, mul_zero, ite_self, Finset.sum_const_zero,
      Matrix.fromBlocks_apply₂₂, zero_add, ite_mul, zero_mul, Matrix.smul_apply, smul_ite, smul_add,
      zsmul_eq_mul, smul_zero]
    rw [← Finset.sum_sub_distrib, ← Finset.sum_subset (Finset.subset_univ {k, l}) (by aesop)]
    rcases eq_or_ne k l with rfl | hkl; · simp [P.ne_zero i]
    simp only [Matrix.diagonal_apply, ite_mul, zero_mul, mul_ite, mul_zero, Finset.sum_sub_distrib,
      Finset.mem_singleton, Finset.sum_singleton, Finset.sum_insert, hkl, not_false_eq_true,
      reduceIte, right_eq_add, ite_self, add_zero, zero_add, ite_sub_ite, sub_self,
      Base.cartanMatrix, Base.cartanMatrixIn_def]
    refine ite_congr rfl (fun hkil ↦ ?_) (fun _ ↦ rfl)
    simp only [pairingIn_eq_add_of_root_eq_add hkil, Int.cast_add]
    ring

/-- Lemma 3.3 (b) from [Geck](Geck2017). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5ea4d473ec13a2527e4f22859dcf346113b634b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
