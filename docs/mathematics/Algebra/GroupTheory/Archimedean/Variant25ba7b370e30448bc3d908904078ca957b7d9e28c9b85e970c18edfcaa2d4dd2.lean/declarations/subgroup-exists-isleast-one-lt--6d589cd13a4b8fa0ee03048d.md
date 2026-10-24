# Subgroup.exists_isLeast_one_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de554065-6f88-a044-2bc2-f1ee7eaacc11",
  "kind": "theorem",
  "lexical_name": "Subgroup.exists_isLeast_one_lt",
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
  "slug": "subgroup-exists-isleast-one-lt--6d589cd13a4b8fa0ee03048d",
  "source": {
    "blob": "a11edc39e181fd45068909d137a20cdb15eba9bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 74,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d589cd13a4b8fa0ee03048dc70abb9677f6865d28c995bb324c1408147710c0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de554065-6f88-a044-2bc2-f1ee7eaacc11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subgroup.exists_isLeast_one_lt {H : Subgroup G} (hbot : H ≠ ⊥) {a : G} (h₀ : 1 < a)
    (hd : Disjoint (H : Set G) (Ioo 1 a)) : ∃ b, IsLeast { g : G | g ∈ H ∧ 1 < g } b := by
  -- todo: move to a lemma?
  have hex : ∀ g > 1, ∃ n : ℕ, g ∈ Ioc (a ^ n) (a ^ (n + 1)) := fun g hg => by
    rcases existsUnique_mul_zpow_mem_Ico h₀ 1 (g / a) with ⟨m, ⟨hm, hm'⟩, -⟩
    simp only [one_mul, div_le_iff_le_mul, div_mul_cancel, ← zpow_add_one] at hm hm'
    lift m to ℕ
    · rw [← Int.lt_add_one_iff, ← zpow_lt_zpow_iff_right h₀, zpow_zero]
      exact hg.trans_le hm
    · simp only [← Nat.cast_succ, zpow_natCast] at hm hm'
      exact ⟨m, hm', hm⟩
  have : ∃ n : ℕ, Set.Nonempty (H ∩ Ioc (a ^ n) (a ^ (n + 1))) := by
    rcases (bot_or_exists_ne_one H).resolve_left hbot with ⟨g, hgH, hg₀⟩
    rcases hex |g|ₘ (one_lt_mabs.2 hg₀) with ⟨n, hn⟩
    exact ⟨n, _, (@mabs_mem_iff (Subgroup G) G _ _).2 hgH, hn⟩
  classical rcases Nat.findX this with ⟨n, ⟨x, hxH, hnx, hxn⟩, hmin⟩
  by_contra hxmin
  simp only [IsLeast, not_and, mem_setOf_eq, mem_lowerBounds, not_exists, not_forall,
    not_le] at hxmin
  rcases hxmin x ⟨hxH, (one_le_pow_of_one_le'  h₀.le _).trans_lt hnx⟩ with ⟨y, ⟨hyH, hy₀⟩, hxy⟩
  rcases hex y hy₀ with ⟨m, hm⟩
  rcases lt_or_le m n with hmn | hnm
  · exact hmin m hmn ⟨y, hyH, hm⟩
  · refine disjoint_left.1 hd (div_mem hxH hyH) ⟨one_lt_div'.2 hxy, div_lt_iff_lt_mul'.2 ?_⟩
    calc x ≤ a^ (n + 1) := hxn
    _ ≤ a ^ (m + 1) := pow_le_pow_right' h₀.le (add_le_add_right hnm _)
    _ = a ^ m * a := pow_succ _ _
    _ < y * a := mul_lt_mul_right' hm.1 _

/-- If a subgroup of a linear ordered commutative group is disjoint with the
interval `Set.Ioo 1 a` for some `1 < a`, then this is a cyclic subgroup. -/
@[to_additive AddSubgroup.cyclic_of_isolated_zero "If an additive subgroup of a linear ordered
additive commutative group is disjoint with the interval `Set.Ioo 0 a` for some positive `a`, then
this is a cyclic subgroup."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variant25ba7b370e30448bc3d908904078ca957b7d9e28c9b85e970c18edfcaa2d4dd2.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a11edc39e181fd45068909d137a20cdb15eba9bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
