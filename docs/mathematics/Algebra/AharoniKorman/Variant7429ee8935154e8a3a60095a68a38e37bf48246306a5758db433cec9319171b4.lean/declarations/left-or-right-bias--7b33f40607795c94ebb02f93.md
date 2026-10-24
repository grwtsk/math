# left_or_right_bias

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3da6e7f8-121c-bd71-49a6-50a5008b5379",
  "kind": "lemma",
  "lexical_name": "left_or_right_bias",
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
  "slug": "left-or-right-bias--7b33f40607795c94ebb02f93",
  "source": {
    "blob": "ede695c4c5c2bb0254a5568e0a360f44a0358566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1040,
    "line": 1018,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b33f40607795c94ebb02f937db189423004d58c89a1fd3e1d21b27ebf4e5164",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3da6e7f8-121c-bd71-49a6-50a5008b5379`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1018–1040.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma left_or_right_bias {n : ℕ} (a b : ℕ)
    (hab : ∀ x y, h(x, y, n) ∈ C → h(a, b, n) ≤ h(x, y, n))
    (hCn : (C ∩ level n).Infinite) :
    (∀ i : ℕ, ∃ j ∈ C ∩ level n, h(a, i, n) ≤ j) ∨
    (∀ i : ℕ, ∃ j ∈ C ∩ level n, h(i, b, n) ≤ j) := by
  -- Suppose otherwise, and take `c` and `d` counterexamples to both alternatives
  by_contra! ⟨⟨c, hc⟩, d, hd⟩
  -- Observe the set of points in `C ∩ level n` below `(d, c, n)` is finite, and aim to show that
  -- `C ∩ level n` is contained in this set, for a contradiction
  refine hCn (((Set.finite_Iic (d, c)).image (embed n)).subset ?_)
  simp only [Set.subset_def, Set.mem_inter_iff, Set.mem_image, Set.mem_Iic, Prod.exists,
    Prod.mk_le_mk, and_imp, «forall», toHollom_mem_level_iff, Prod.forall]
  rintro x y n hxy rfl
  specialize hab x y (by simp [hxy])
  specialize hc h(x, y, n) (by simp [hxy])
  specialize hd h(x, y, n) (by simp [hxy])
  simp_all only [toHollom_le_toHollom_iff_fixed_right, true_and, not_le, and_true]
  exact ⟨_, _, ⟨hd.le, hc.le⟩, rfl⟩

/--
Given a point `x` in `S` which is not in `C ∩ level n`, its image under `f` cannot be in
`C ∩ level (n + 1)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean#L1018).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede695c4c5c2bb0254a5568e0a360f44a0358566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
