# iterate_derivative_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47141d44-c1f2-39b2-1fde-2c93fc079b21",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_mul",
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
  "slug": "iterate-derivative-mul--31780ff231f816c818b894c8",
  "source": {
    "blob": "2d70f88e48c223c2d4e7b2747717889acf4c0ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 314,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31780ff231f816c818b894c81048635a2d3a7d0620e63f289953ac9f07fb34bf",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47141d44-c1f2-39b2-1fde-2c93fc079b21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_mul {n} (p q : R[X]) :
    derivative^[n] (p * q) =
      ∑ k ∈ range n.succ, (n.choose k • (derivative^[n - k] p * derivative^[k] q)) := by
  induction n with
  | zero =>
    simp [Finset.range]
  | succ n IH =>
    calc
      derivative^[n + 1] (p * q) =
          derivative (∑ k ∈ range n.succ,
              n.choose k • (derivative^[n - k] p * derivative^[k] q)) := by
        rw [Function.iterate_succ_apply', IH]
      _ = (∑ k ∈ range n.succ,
            n.choose k • (derivative^[n - k + 1] p * derivative^[k] q)) +
          ∑ k ∈ range n.succ,
            n.choose k • (derivative^[n - k] p * derivative^[k + 1] q) := by
        simp only [Nat.succ_eq_add_one, nsmul_eq_mul, derivative_mul, derivative_natCast, zero_mul,
          derivative_sum, zero_add, Function.iterate_succ', Function.comp_apply]
        simp_rw [mul_add, sum_add_distrib]
      _ = (∑ k ∈ range n.succ,
                n.choose k.succ • (derivative^[n - k] p * derivative^[k + 1] q)) +
              1 • (derivative^[n + 1] p * derivative^[0] q) +
            ∑ k ∈ range n.succ, n.choose k • (derivative^[n - k] p * derivative^[k + 1] q) :=
        ?_
      _ = ((∑ k ∈ range n.succ, n.choose k • (derivative^[n - k] p * derivative^[k + 1] q)) +
              ∑ k ∈ range n.succ,
                n.choose k.succ • (derivative^[n - k] p * derivative^[k + 1] q)) +
            1 • (derivative^[n + 1] p * derivative^[0] q) := by
        rw [add_comm, add_assoc]
      _ = (∑ i ∈ range n.succ,
              (n + 1).choose (i + 1) • (derivative^[n + 1 - (i + 1)] p * derivative^[i + 1] q)) +
            1 • (derivative^[n + 1] p * derivative^[0] q) := by
        simp_rw [Nat.choose_succ_succ, Nat.succ_sub_succ, add_smul, sum_add_distrib]
      _ = ∑ k ∈ range n.succ.succ,
            n.succ.choose k • (derivative^[n.succ - k] p * derivative^[k] q) := by
        rw [sum_range_succ' _ n.succ, Nat.choose_zero_right, tsub_zero]
    congr
    refine (sum_range_succ' _ _).trans (congr_arg₂ (· + ·) ?_ ?_)
    · rw [sum_range_succ, Nat.choose_succ_self, zero_smul, add_zero]
      refine sum_congr rfl fun k hk => ?_
      rw [mem_range] at hk
      congr
      lia
    · rw [Nat.choose_zero_right, tsub_zero]

/--
Iterated derivatives as a finite support function.
-/
@[simps! apply_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d70f88e48c223c2d4e7b2747717889acf4c0ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
