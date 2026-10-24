# coeff_iterate_derivative_as_prod_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32ccfad2-c37a-3040-98f5-8f423050e093",
  "kind": "theorem",
  "lexical_name": "coeff_iterate_derivative_as_prod_Ico",
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
  "slug": "coeff-iterate-derivative-as-prod-ico--76a42d60a86e342c4a1eeb9e",
  "source": {
    "blob": "d8da881b3ac25b0df10cfc4e153e7b05324c1636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 394,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76a42d60a86e342c4a1eeb9e1e81e3ed1d5ccf08e16ea2006e8b9193f22949c3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32ccfad2-c37a-3040-98f5-8f423050e093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_iterate_derivative_as_prod_Ico {k} (p : R[X]) : ∀ m : ℕ,
    (derivative^[k] p).coeff m = (∏ i in Ico m.succ (m + k.succ), i) • p.coeff (m + k) := by
  induction' k with k ih
  · simp [add_zero, forall_const, one_smul, Ico_self, eq_self_iff_true,
      Function.iterate_zero_apply, prod_empty]
  · intro m
    rw [Function.iterate_succ_apply', coeff_derivative, ih (m + 1), ← Nat.cast_add_one, ←
      nsmul_eq_mul', smul_smul, mul_comm]
    apply congr_arg₂
    · have set_eq : Ico m.succ (m + k.succ.succ) = Ico (m + 1).succ (m + 1 + k.succ) ∪ {m + 1} := by
        simp_rw [← Nat.Ico_succ_singleton, union_comm, Nat.succ_eq_add_one, add_comm (k + 1),
          add_assoc]
        rw [Ico_union_Ico_eq_Ico] <;> simp
      rw [set_eq, prod_union, prod_singleton]
      · rw [disjoint_singleton_right, mem_Ico]
        exact fun h => (Nat.lt_succ_self _).not_le h.1
    · exact congr_arg _ (Nat.succ_add m k)
#align polynomial.coeff_iterate_derivative_as_prod_Ico Polynomial.coeff_iterate_derivative_as_prod_Ico

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantb6c4712f853ea38d622483a708644ff45a77f34cc283ff167fd478be4475f547.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8da881b3ac25b0df10cfc4e153e7b05324c1636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
