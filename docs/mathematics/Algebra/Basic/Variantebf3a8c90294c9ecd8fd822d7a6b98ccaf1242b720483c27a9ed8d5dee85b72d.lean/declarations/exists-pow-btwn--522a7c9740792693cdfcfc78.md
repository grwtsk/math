# exists_pow_btwn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79cf73c914f625a55d598faf96e56ab883aec722",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30e37462-2dc2-52d0-81fe-517b8ee72f85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e1bde74-6066-c659-e28b-c64f19855837",
  "kind": "theorem",
  "lexical_name": "exists_pow_btwn",
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
  "slug": "exists-pow-btwn--522a7c9740792693cdfcfc78",
  "source": {
    "blob": "79cf73c914f625a55d598faf96e56ab883aec722",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 416,
    "path": "GRWTSK/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:522a7c9740792693cdfcfc78514915723ac7a475b8a495be7b77bdc128387ffc",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e1bde74-6066-c659-e28b-c64f19855837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pow_btwn {n : ℕ} (hn : n ≠ 0) {x y : K} (h : x < y) (hy : 0 < y) :
    ∃ q : K, 0 < q ∧ x < q ^ n ∧ q ^ n < y := by
  have ⟨δ, δ_pos, cont⟩ := uniform_continuous_npow_on_bounded (max 1 y)
    (sub_pos.mpr <| max_lt_iff.mpr ⟨h, hy⟩) n
  have ex : ∃ m : ℕ, y ≤ (m * δ) ^ n := by
    have ⟨m, hm⟩ := exists_nat_ge (y / δ + 1 / δ)
    refine ⟨m, le_trans ?_ (le_self_pow₀ ?_ hn)⟩ <;> rw [← div_le_iff₀ δ_pos]
    · exact (lt_add_of_pos_right _ <| by positivity).le.trans hm
    · exact (le_add_of_nonneg_left <| by positivity).trans hm
  let m := Nat.find ex
  have m_pos : 0 < m := (Nat.find_pos _).mpr <| by simpa [zero_pow hn] using hy
  let q := m.pred * δ
  have qny : q ^ n < y := lt_of_not_le (Nat.find_min ex <| Nat.pred_lt m_pos.ne')
  have q1y : |q| < max 1 y := (abs_eq_self.mpr <| by positivity).trans_lt <| lt_max_iff.mpr
    (or_iff_not_imp_left.mpr fun q1 ↦ (le_self_pow₀ (le_of_not_lt q1) hn).trans_lt qny)
  have xqn : max x 0 < q ^ n :=
    calc _ = y - (y - max x 0) := by rw [sub_sub_cancel]
      _ ≤ (m * δ) ^ n - (y - max x 0) := sub_le_sub_right (Nat.find_spec ex) _
      _ < (m * δ) ^ n - ((m * δ) ^ n - q ^ n) := by
        refine sub_lt_sub_left ((le_abs_self _).trans_lt <| cont _ _ q1y.le ?_) _
        rw [← Nat.succ_pred_eq_of_pos m_pos, Nat.cast_succ, ← sub_mul,
          add_sub_cancel_left, one_mul, abs_eq_self.mpr (by positivity)]
      _ = q ^ n := sub_sub_cancel ..
  exact ⟨q, lt_of_le_of_ne (by positivity) fun q0 ↦
    (le_sup_right.trans_lt xqn).ne <| q0 ▸ (zero_pow hn).symm, le_sup_left.trans_lt xqn, qny⟩

@[deprecated (since := "2024-12-26")] alias exists_rat_pow_btwn_rat := exists_pow_btwn

/-- There is a rational power between any two positive elements of an archimedean ordered field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantebf3a8c90294c9ecd8fd822d7a6b98ccaf1242b720483c27a9ed8d5dee85b72d.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79cf73c914f625a55d598faf96e56ab883aec722` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
