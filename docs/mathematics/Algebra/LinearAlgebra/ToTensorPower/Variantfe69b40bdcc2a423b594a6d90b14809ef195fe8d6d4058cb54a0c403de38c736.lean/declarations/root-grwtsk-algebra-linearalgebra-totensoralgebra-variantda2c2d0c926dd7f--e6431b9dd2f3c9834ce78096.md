# _root_.GRWTSK.Algebra.LinearAlgebra.ToTensorAlgebra.Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.TensorPower.list_prod_gradedMonoid_mk_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c6037ce-9c2c-3272-f0a7-8f224f767278",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.ToTensorAlgebra.Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.TensorPower.list_prod_gradedMonoid_mk_single",
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
  "slug": "root-grwtsk-algebra-linearalgebra-totensoralgebra-variantda2c2d0c926dd7f--e6431b9dd2f3c9834ce78096",
  "source": {
    "blob": "ce70c332f1e83c9a06f0ed510d2f5ad4ccc7fb25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6431b9dd2f3c9834ce7809696ac06cefa01edc46cac552ae777f9abdd64f60e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c6037ce-9c2c-3272-f0a7-8f224f767278`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.ToTensorAlgebra.Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.TensorPower.list_prod_gradedMonoid_mk_single (n : ℕ) (x : Fin n → M) :
    ((List.finRange n).map fun a =>
          (GradedMonoid.mk _ (PiTensorProduct.tprod R fun _ : Fin 1 => x a) :
            GradedMonoid fun n => (⨂[R]^n) M)).prod =
      GradedMonoid.mk n (PiTensorProduct.tprod R x) := by
  refine' Fin.consInduction _ _ x <;> clear x
  · rw [List.finRange_zero, List.map_nil, List.prod_nil]
    rfl
  · intro n x₀ x ih
    rw [List.finRange_succ_eq_map, List.map_cons, List.prod_cons, List.map_map]
    simp_rw [Function.comp, Fin.cons_zero, Fin.cons_succ]
    rw [ih, GradedMonoid.mk_mul_mk, TensorPower.tprod_mul_tprod]
    refine' TensorPower.gradedMonoid_eq_of_cast (add_comm _ _) _
    dsimp only [GradedMonoid.mk]
    rw [TensorPower.cast_tprod]
    simp_rw [Fin.append_left_eq_cons, Function.comp]
    congr 1 with i
#align tensor_power.list_prod_graded_monoid_mk_single TensorPower.list_prod_gradedMonoid_mk_single

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce70c332f1e83c9a06f0ed510d2f5ad4ccc7fb25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
