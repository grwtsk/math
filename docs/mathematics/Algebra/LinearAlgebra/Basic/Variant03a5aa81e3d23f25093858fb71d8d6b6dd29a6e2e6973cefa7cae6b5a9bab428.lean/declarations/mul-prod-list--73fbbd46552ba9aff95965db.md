# ι_mul_prod_list

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10be6a65-dc98-a9a9-7fec-8d9fe789fedf",
  "kind": "theorem",
  "lexical_name": "ι_mul_prod_list",
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
  "slug": "mul-prod-list--73fbbd46552ba9aff95965db",
  "source": {
    "blob": "8a1a3ff7041d6740ba1cfdfc2244f84d1be6dbe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 250,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73fbbd46552ba9aff95965dbdacd9076384cc22c7e22635b82f54f4f782df6fe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10be6a65-dc98-a9a9-7fec-8d9fe789fedf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ι_mul_prod_list {n : ℕ} (f : Fin n → M) (i : Fin n) :
    (ι R <| f i) * (List.ofFn fun i => ι R <| f i).prod = 0 := by
  induction n with
  | zero => exact i.elim0
  | succ n hn =>
    rw [List.ofFn_succ, List.prod_cons, ← mul_assoc]
    by_cases h : i = 0
    · rw [h, ι_sq_zero, zero_mul]
    · replace hn :=
        congr_arg (ι R (f 0) * ·) <| hn (fun i => f <| Fin.succ i) (i.pred h)
      simp only at hn
      rw [Fin.succ_pred, ← mul_assoc, mul_zero] at hn
      refine (eq_zero_iff_eq_zero_of_add_eq_zero ?_).mp hn
      rw [← add_mul, ι_add_mul_swap, zero_mul]

end

variable (R) in
/-- The product of `n` terms of the form `ι R m` is an alternating map.

This is a special case of `MultilinearMap.mkPiAlgebraFin`, and the exterior algebra version of
`TensorAlgebra.tprod`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant03a5aa81e3d23f25093858fb71d8d6b6dd29a6e2e6973cefa7cae6b5a9bab428.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a1a3ff7041d6740ba1cfdfc2244f84d1be6dbe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
