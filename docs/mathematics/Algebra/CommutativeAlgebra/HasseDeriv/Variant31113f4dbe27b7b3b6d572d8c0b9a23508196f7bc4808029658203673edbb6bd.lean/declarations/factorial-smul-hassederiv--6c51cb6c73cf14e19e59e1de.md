# factorial_smul_hasseDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c273a9eb814f9518e5f4194ea0c73446c5d21be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f198935-095d-e2dc-8a97-5acb13e11392",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c2cc56e-4555-76fa-1df8-d4fbcf9915ab",
  "kind": "theorem",
  "lexical_name": "factorial_smul_hasseDeriv",
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
  "slug": "factorial-smul-hassederiv--6c51cb6c73cf14e19e59e1de",
  "source": {
    "blob": "2c273a9eb814f9518e5f4194ea0c73446c5d21be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 145,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c51cb6c73cf14e19e59e1de62ea6ffc5c44aea4e60b8f253d470b65897b6943",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c2cc56e-4555-76fa-1df8-d4fbcf9915ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_smul_hasseDeriv : ⇑(k ! • @hasseDeriv R _ k) = (@derivative R _)^[k] := by
  induction' k with k ih
  · rw [hasseDeriv_zero, factorial_zero, iterate_zero, one_smul, LinearMap.id_coe]
  ext f n : 2
  rw [iterate_succ_apply', ← ih]
  simp only [LinearMap.smul_apply, coeff_smul, LinearMap.map_smul_of_tower, coeff_derivative,
    hasseDeriv_coeff, ← @choose_symm_add _ k]
  simp only [nsmul_eq_mul, factorial_succ, mul_assoc, succ_eq_add_one, ← add_assoc,
    add_right_comm n 1 k, ← cast_succ]
  rw [← (cast_commute (n + 1) (f.coeff (n + k + 1))).eq]
  simp only [← mul_assoc]
  norm_cast
  congr 2
  rw [mul_comm (k+1) _, mul_assoc, mul_assoc]
  congr 1
  have : n + k + 1 = n + (k + 1) := by apply add_assoc
  rw [←choose_symm_of_eq_add this, choose_succ_right_eq, mul_comm]
  congr
  rw [add_assoc, add_tsub_cancel_left]
#align polynomial.factorial_smul_hasse_deriv Polynomial.factorial_smul_hasseDeriv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant31113f4dbe27b7b3b6d572d8c0b9a23508196f7bc4808029658203673edbb6bd.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c273a9eb814f9518e5f4194ea0c73446c5d21be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
