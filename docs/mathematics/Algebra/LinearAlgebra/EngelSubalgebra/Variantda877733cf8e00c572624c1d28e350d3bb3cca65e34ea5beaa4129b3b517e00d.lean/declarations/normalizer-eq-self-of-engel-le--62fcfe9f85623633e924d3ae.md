# normalizer_eq_self_of_engel_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d64a3728-b1c0-3bc4-8430-c9a1bd73d360",
  "kind": "lemma",
  "lexical_name": "normalizer_eq_self_of_engel_le",
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
  "slug": "normalizer-eq-self-of-engel-le--62fcfe9f85623633e924d3ae",
  "source": {
    "blob": "e9230d9d69d43e324d4333f53089ac3833ae76f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 110,
    "path": "GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62fcfe9f85623633e924d3aee3163ed88023fa0fb935b528871e86d07ce7699b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d64a3728-b1c0-3bc4-8430-c9a1bd73d360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma normalizer_eq_self_of_engel_le [IsArtinian R L]
    (H : LieSubalgebra R L) (x : L) (h : engel R x ≤ H) :
    normalizer H = H := by
  set N := normalizer H
  apply le_antisymm _ (le_normalizer H)
  calc N.toSubmodule ≤ (engel R x).toSubmodule ⊔ H.toSubmodule := ?_
       _ = H := by rwa [sup_eq_right]
  have aux₁ : ∀ n ∈ N, ⁅x, n⁆ ∈ H := by
    intro n hn
    rw [mem_normalizer_iff] at hn
    specialize hn x (h (self_mem_engel R x))
    rwa [← lie_skew, neg_mem_iff (G := L)]
  have aux₂ : ∀ n ∈ N, ⁅x, n⁆ ∈ N := fun n hn ↦ le_normalizer H (aux₁ _ hn)
  let dx : N →ₗ[R] N := (ad R L x).restrict aux₂
  obtain ⟨k, hk⟩ : ∃ a, ∀ b ≥ a, Codisjoint (LinearMap.ker (dx ^ b)) (LinearMap.range (dx ^ b)) :=
    eventually_atTop.mp <| dx.eventually_codisjoint_ker_pow_range_pow
  specialize hk (k+1) (Nat.le_add_right k 1)
  rw [← Submodule.map_subtype_top N.toSubmodule, Submodule.map_le_iff_le_comap]
  apply hk
  · rw [← Submodule.map_le_iff_le_comap]
    apply le_sup_of_le_left
    rw [Submodule.map_le_iff_le_comap]
    intro y hy
    simp only [Submodule.mem_comap, mem_engel_iff, mem_toSubmodule]
    use k+1
    clear hk; revert hy
    generalize k+1 = k
    induction k generalizing y with
    | zero =>
      cases y; intro hy; simp only [pow_zero, Module.End.one_apply]
      exact (AddSubmonoid.mk_eq_zero N.toAddSubmonoid).mp hy
    | succ k ih => simp only [pow_succ, LinearMap.mem_ker, Module.End.mul_apply] at ih ⊢; apply ih
  · rw [← Submodule.map_le_iff_le_comap]
    apply le_sup_of_le_right
    rw [Submodule.map_le_iff_le_comap]
    rintro _ ⟨y, rfl⟩
    simp only [pow_succ', Module.End.mul_apply, Submodule.mem_comap, mem_toSubmodule]
    apply aux₁
    simp only [Submodule.coe_subtype, SetLike.coe_mem]

/-- A Lie subalgebra of a Noetherian Lie algebra is nilpotent
if it is contained in the Engel subalgebra of all its elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Variantda877733cf8e00c572624c1d28e350d3bb3cca65e34ea5beaa4129b3b517e00d.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9230d9d69d43e324d4333f53089ac3833ae76f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
