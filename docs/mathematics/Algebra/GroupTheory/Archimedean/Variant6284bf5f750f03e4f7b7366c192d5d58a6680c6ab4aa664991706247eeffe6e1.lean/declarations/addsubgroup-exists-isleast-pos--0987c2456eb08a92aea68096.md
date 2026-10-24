# AddSubgroup.exists_isLeast_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33b4ea2a-1c69-a6e7-914c-1d8e4fac043b",
  "kind": "theorem",
  "lexical_name": "AddSubgroup.exists_isLeast_pos",
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
  "slug": "addsubgroup-exists-isleast-pos--0987c2456eb08a92aea68096",
  "source": {
    "blob": "ccef7cdf2cd284f25863fda53347efa4bf38d917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 67,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0987c2456eb08a92aea68096de962f6bdebab0320d6e0fb7a538f72f501757cf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33b4ea2a-1c69-a6e7-914c-1d8e4fac043b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddSubgroup.exists_isLeast_pos {H : AddSubgroup G} (hbot : H ≠ ⊥) {a : G} (h₀ : 0 < a)
    (hd : Disjoint (H : Set G) (Ioo 0 a)) : ∃ b, IsLeast { g : G | g ∈ H ∧ 0 < g } b := by
  -- todo: move to a lemma?
  have hex : ∀ g > 0, ∃ n : ℕ, g ∈ Ioc (n • a) ((n + 1) • a) := fun g hg => by
    rcases existsUnique_add_zsmul_mem_Ico h₀ 0 (g - a) with ⟨m, ⟨hm, hm'⟩, -⟩
    simp only [zero_add, sub_le_iff_le_add, sub_add_cancel, ← add_one_zsmul] at hm hm'
    lift m to ℕ
    · rw [← Int.lt_add_one_iff, ← zsmul_lt_zsmul_iff h₀, zero_zsmul]
      exact hg.trans_le hm
    · simp only [← Nat.cast_succ, coe_nat_zsmul] at hm hm'
      exact ⟨m, hm', hm⟩
  have : ∃ n : ℕ, Set.Nonempty (H ∩ Ioc (n • a) ((n + 1) • a))
  · rcases (bot_or_exists_ne_zero H).resolve_left hbot with ⟨g, hgH, hg₀⟩
    rcases hex |g| (abs_pos.2 hg₀) with ⟨n, hn⟩
    exact ⟨n, _, (@abs_mem_iff (AddSubgroup G) G _ _).2 hgH, hn⟩
  classical rcases Nat.findX this with ⟨n, ⟨x, hxH, hnx, hxn⟩, hmin⟩
  by_contra hxmin
  simp only [IsLeast, not_and, mem_setOf_eq, mem_lowerBounds, not_exists, not_forall,
    not_le] at hxmin
  rcases hxmin x ⟨hxH, (nsmul_nonneg h₀.le _).trans_lt hnx⟩ with ⟨y, ⟨hyH, hy₀⟩, hxy⟩
  rcases hex y hy₀ with ⟨m, hm⟩
  cases' lt_or_le m n with hmn hnm
  · exact hmin m hmn ⟨y, hyH, hm⟩
  · refine disjoint_left.1 hd (sub_mem hxH hyH) ⟨sub_pos.2 hxy, sub_lt_iff_lt_add'.2 ?_⟩
    calc x ≤ (n + 1) • a := hxn
    _ ≤ (m + 1) • a := nsmul_le_nsmul h₀.le (add_le_add_right hnm _)
    _ = m • a + a := succ_nsmul' _ _
    _ < y + a := add_lt_add_right hm.1 _

/-- If an additive subgroup of a linear ordered additive commutative group is disjoint with the
interval `Set.Ioo 0 a` for some positive `a`, then this is a cyclic subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variant6284bf5f750f03e4f7b7366c192d5d58a6680c6ab4aa664991706247eeffe6e1.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccef7cdf2cd284f25863fda53347efa4bf38d917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
