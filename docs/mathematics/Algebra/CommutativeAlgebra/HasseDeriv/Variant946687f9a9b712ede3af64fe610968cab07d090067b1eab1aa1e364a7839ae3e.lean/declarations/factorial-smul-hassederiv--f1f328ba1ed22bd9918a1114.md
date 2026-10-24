# factorial_smul_hasseDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aefcb7de-380b-6757-3272-57a1fe6044ad",
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
  "slug": "factorial-smul-hassederiv--f1f328ba1ed22bd9918a1114",
  "source": {
    "blob": "fddedaa2f5d81920441a9510d936f857187f65b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 141,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1f328ba1ed22bd9918a11141462386e2d817bb9a500227c97b9026e3cb92668",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aefcb7de-380b-6757-3272-57a1fe6044ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_smul_hasseDeriv : ⇑(k ! • @hasseDeriv R _ k) = (@derivative R _)^[k] := by
  induction k with
  | zero => rw [hasseDeriv_zero, factorial_zero, iterate_zero, one_smul, LinearMap.id_coe]
  | succ k ih => ?_
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
  rw [mul_comm (k + 1) _, mul_assoc, mul_assoc]
  congr 1
  have : n + k + 1 = n + (k + 1) := by apply add_assoc
  rw [← choose_symm_of_eq_add this, choose_succ_right_eq, mul_comm]
  congr
  rw [add_assoc, add_tsub_cancel_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant946687f9a9b712ede3af64fe610968cab07d090067b1eab1aa1e364a7839ae3e.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fddedaa2f5d81920441a9510d936f857187f65b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
