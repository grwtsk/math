# iterate_derivative_prod_X_sub_C

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ae21ad6-4ade-e9e0-f435-877e0be13dca",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_prod_X_sub_C",
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
  "slug": "iterate-derivative-prod-x-sub-c--5853198332c686ee23351917",
  "source": {
    "blob": "2d70f88e48c223c2d4e7b2747717889acf4c0ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 765,
    "line": 725,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5853198332c686ee23351917e1de12b681b2661dab5818c538c86d4a121c0c96",
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

Occurrence: `result:3ae21ad6-4ade-e9e0-f435-877e0be13dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 725–765.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_prod_X_sub_C {k : ℕ} {S : Finset R} (hk : k ≤ #S) :
    derivative^[k] (∏ a ∈ S, (X - C a)) =
    k.factorial * ∑ T ∈ S.powersetCard (#S - k), ∏ a ∈ T, (X - C a) := by
  classical
  induction k
  case zero => simp
  case succ k ind =>
    specialize ind (Nat.le_of_succ_le hk)
    nth_rewrite 1 [add_comm]
    rw [Function.iterate_add_apply, Function.iterate_one, ind, ← nsmul_eq_mul, derivative_smul,
      nsmul_eq_mul, derivative_sum, Nat.factorial_succ, mul_comm (k + 1), Nat.cast_mul, mul_assoc]
    congr 1
    calc
      ∑ T ∈ S.powersetCard (#S - k), derivative (∏ a ∈ T, (X - C a)) =
      ∑ T ∈ S.powersetCard (#S - k), ∑ i ∈ T, ∏ a ∈ T.erase i, (X - C a) := by
        congr! with T hT
        simp_rw [derivative_prod_finset, derivative_X_sub_C, mul_one]
      _ = ∑ (T ∈ S.powersetCard (#S - k)) (i ∈ S) with i ∈ T, ∏ a ∈ T.erase i, (X - C a) := by
        rw [← sum_finset_product']
        grind
      _ = ∑ (T ∈ S.powersetCard (#S - (k + 1))) (i ∈ S) with i ∉ T, ∏ a ∈ T, (X - C a) := by
        apply sum_bij' (fun ⟨T, i⟩ _ => ⟨T.erase i, i⟩) (fun ⟨T, i⟩ _ => ⟨insert i T, i⟩)
        · intro r hr; dsimp at hr ⊢; congr 1; grind
        · intro r hr; dsimp at hr ⊢; congr 1; grind
        all_goals grind
      _ = ∑ T ∈ S.powersetCard (#S - (k + 1)), ∑ i ∈ S \ T, ∏ a ∈ T, (X - C a) := by
        rw [← sum_finset_product']
        grind
      _ = (k + 1) * ∑ T ∈ S.powersetCard (#S - (k + 1)), ∏ a ∈ T, (X - C a) := by
        rw [mul_sum]
        congr! 1 with T hT
        simp [sum_const, show #(S \ T) = k + 1 by grind]
      _ = _ := by grind

end CommRing

section NoZeroDivisors

variable [Semiring R] [NoZeroDivisors R]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant31f2b6851a860cd8bdae95bcf42e470b764777335fcfa0457283f0493561e975.lean#L725).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d70f88e48c223c2d4e7b2747717889acf4c0ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
