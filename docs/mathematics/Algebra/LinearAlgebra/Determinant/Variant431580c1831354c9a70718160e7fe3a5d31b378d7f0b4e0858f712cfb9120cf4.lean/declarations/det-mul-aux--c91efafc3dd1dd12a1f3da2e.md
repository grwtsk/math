# det_mul_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d963f61-8a22-8d6d-623f-653d656abbc8",
  "kind": "theorem",
  "lexical_name": "det_mul_aux",
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
  "slug": "det-mul-aux--c91efafc3dd1dd12a1f3da2e",
  "source": {
    "blob": "8c536a6eaffecee5111c064aa0257798c22dc402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 142,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c91efafc3dd1dd12a1f3da2efa900bdfb457bed8940a32485678e2cd5adf8d91",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d963f61-8a22-8d6d-623f-653d656abbc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_mul_aux {M N : Matrix n n R} {p : n → n} (H : ¬Bijective p) :
    (∑ σ : Perm n, ε σ * ∏ x, M (σ x) (p x) * N (p x) x) = 0 := by
  obtain ⟨i, j, hpij, hij⟩ : ∃ i j, p i = p j ∧ i ≠ j := by
    rw [← Finite.injective_iff_bijective, Injective] at H
    push_neg at H
    exact H
  exact
    sum_involution (fun σ _ => σ * Equiv.swap i j)
      (fun σ _ => by
        have : (∏ x, M (σ x) (p x)) = ∏ x, M ((σ * Equiv.swap i j) x) (p x) :=
          Fintype.prod_equiv (swap i j) _ _ (by simp [apply_swap_eq_self hpij])
        simp [this, sign_swap hij, -sign_swap', prod_mul_distrib])
      (fun σ _ _ => (not_congr mul_swap_eq_iff).mpr hij) (fun _ _ => mem_univ _) fun σ _ =>
      mul_swap_involutive i j σ
#align matrix.det_mul_aux Matrix.det_mul_aux

-- Porting note: need to bump for last simp; new after #3414 (reenableeta)
set_option maxHeartbeats 300000 in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c536a6eaffecee5111c064aa0257798c22dc402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
