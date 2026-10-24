# nonUnitalNonAssocSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:952278c1f8c7571d6104392a79c49158ed8c3cecba14da5baf72bf003751c53e",
  "kind": "instance",
  "lexical_name": "nonUnitalNonAssocSemiring",
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
  "slug": "nonunitalnonassocsemiring--9fbc55a1a8673bdb0cde639e",
  "source": {
    "blob": "505163d603c369fd89805cdd652c5a9491856b5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1335,
    "line": 1298,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fbc55a1a8673bdb0cde639e40f082f2a6437e1a3c6aaa15bdb0d9734f46b235",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:952278c1f8c7571d6104392a79c49158ed8c3cecba14da5baf72bf003751c53e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1298–1335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonUnitalNonAssocSemiring : NonUnitalNonAssocSemiring (AddMonoidAlgebra k G) :=
  { Finsupp.addCommMonoid with
    zero := 0
    mul := (· * ·)
    add := (· + ·)
    -- Porting note: `refine` & `exact` are required because `simp` behaves differently.
    left_distrib := fun f g h => by
      haveI := Classical.decEq G
      simp only [mul_def]
      refine Eq.trans (congr_arg (sum f) (funext₂ fun a₁ b₁ => sum_add_index ?_ ?_)) ?_ <;>
        simp only [mul_add, mul_zero, single_zero, single_add, forall_true_iff, sum_add]
    right_distrib := fun f g h => by
      haveI := Classical.decEq G
      simp only [mul_def]
      refine Eq.trans (sum_add_index ?_ ?_) ?_ <;>
        simp only [add_mul, zero_mul, single_zero, single_add, forall_true_iff, sum_zero, sum_add]
    zero_mul := fun f => by
      simp only [mul_def]
      exact sum_zero_index
    mul_zero := fun f => by
      simp only [mul_def]
      exact Eq.trans (congr_arg (sum f) (funext₂ fun a₁ b₁ => sum_zero_index)) sum_zero
    nsmul := fun n f => n • f
    -- Porting note: `ext` → `refine Finsupp.ext fun _ => ?_`
    nsmul_zero := by
      intros
      refine Finsupp.ext fun _ => ?_
      simp [-nsmul_eq_mul, add_smul]
    nsmul_succ := by
      intros
      refine Finsupp.ext fun _ => ?_
      -- Porting note: The definition of `nsmul_succ` is different, so next line is required.
      simp only [fun n => Nat.add_comm n 1]
      simp [-nsmul_eq_mul, add_smul] }
#align add_monoid_algebra.non_unital_non_assoc_semiring AddMonoidAlgebra.nonUnitalNonAssocSemiring

variable [Semiring R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta03233f5e5f069b1f3d37c5a8957143327a85d05d50f62b74ecbb9f75a7b6bb3.lean#L1298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `505163d603c369fd89805cdd652c5a9491856b5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
