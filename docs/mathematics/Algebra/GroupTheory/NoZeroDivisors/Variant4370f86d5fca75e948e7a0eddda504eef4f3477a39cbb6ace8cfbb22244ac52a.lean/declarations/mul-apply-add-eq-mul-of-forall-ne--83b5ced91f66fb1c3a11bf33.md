# mul_apply_add_eq_mul_of_forall_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d0f7196-e0fd-cd04-80a2-4d9cb1e991fc",
  "kind": "theorem",
  "lexical_name": "mul_apply_add_eq_mul_of_forall_ne",
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
  "slug": "mul-apply-add-eq-mul-of-forall-ne--83b5ced91f66fb1c3a11bf33",
  "source": {
    "blob": "bb8a6accbafb9d12a529d525473fc2a0d36813eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 61,
    "path": "GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83b5ced91f66fb1c3a11bf33bf7eeea4029b03e2bb099eea54e22b42d105f279",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d0f7196-e0fd-cd04-80a2-4d9cb1e991fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_apply_add_eq_mul_of_forall_ne [Add A] {f g : AddMonoidAlgebra R A} {a0 b0 : A}
    (h : ∀ {a b : A}, a ∈ f.support → b ∈ g.support → a ≠ a0 ∨ b ≠ b0 → a + b ≠ a0 + b0) :
    (f * g) (a0 + b0) = f a0 * g b0 := by
  classical
    rw [mul_apply]
    refine' (Finset.sum_eq_single a0 _ _).trans _
    · exact fun b H hb => Finset.sum_eq_zero fun x H1 => if_neg (h H H1 (Or.inl hb))
    · exact fun af0 => by simp [not_mem_support_iff.mp af0]
    · refine' (Finset.sum_eq_single b0 (fun b bg b0 => _) _).trans (if_pos rfl)
      · by_cases af : a0 ∈ f.support
        · exact if_neg (h af bg (Or.inr b0))
        · simp only [not_mem_support_iff.mp af, zero_mul, ite_self]
      · exact fun bf0 => by simp [not_mem_support_iff.mp bf0]
#align add_monoid_algebra.mul_apply_add_eq_mul_of_forall_ne AddMonoidAlgebra.mul_apply_add_eq_mul_of_forall_ne

section LeftOrRightOrderability

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoZeroDivisors/Variant4370f86d5fca75e948e7a0eddda504eef4f3477a39cbb6ace8cfbb22244ac52a.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8a6accbafb9d12a529d525473fc2a0d36813eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
