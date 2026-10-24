# rescale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43b4797f201a49b20893c4805c7b4b8c15fd465c426ca02a2e4f48f71ab2584c",
  "kind": "def",
  "lexical_name": "rescale",
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
  "slug": "rescale--cc36b799d0fc518806f4ec26",
  "source": {
    "blob": "c9c1ee3571c97a9a25cb8e672dfa90e896aee55d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 393,
    "path": "GRWTSK/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc36b799d0fc518806f4ec260b504216c3dd099c49e76eaf58ec7e0cd3f09aa3",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43b4797f201a49b20893c4805c7b4b8c15fd465c426ca02a2e4f48f71ab2584c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rescale (a : σ → R) : MvPowerSeries σ R →+* MvPowerSeries σ R where
  toFun f := fun n ↦ (n.prod fun s m ↦ a s ^ m) * f.coeff R n
  map_zero' := by
    ext
    simp [map_zero, coeff_apply]
  map_one' := by
    ext1 n
    classical
    simp only [coeff_one, mul_ite, mul_one, mul_zero]
    split_ifs with h
    · simp [h, coeff_apply]
    · simp only [coeff_apply, ite_eq_right_iff]
      exact fun a_1 ↦ False.elim (h a_1)
  map_add' := by
    intros
    ext
    exact mul_add _ _ _
  map_mul' f g := by
    ext n
    classical
    rw [coeff_apply, coeff_mul, coeff_mul, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro x hx
    simp only [Finset.mem_antidiagonal] at hx
    rw [← hx]
    simp only [coeff_apply]
    rw [Finsupp.prod_of_support_subset _ Finsupp.support_add,
      Finsupp.prod_of_support_subset x.1 Finset.subset_union_left,
      Finsupp.prod_of_support_subset x.2 Finset.subset_union_right]
    · simp only [← mul_assoc]
      congr 1
      rw [mul_assoc, mul_comm (f x.1), ← mul_assoc]
      congr 1
      rw [← Finset.prod_mul_distrib]
      apply Finset.prod_congr rfl
      simp [pow_add]
    all_goals {simp}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c1ee3571c97a9a25cb8e672dfa90e896aee55d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
