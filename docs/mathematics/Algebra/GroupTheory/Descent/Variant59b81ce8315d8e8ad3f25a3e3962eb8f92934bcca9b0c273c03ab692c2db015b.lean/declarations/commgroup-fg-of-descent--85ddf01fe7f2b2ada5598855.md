# CommGroup.fg_of_descent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "042a904f46d950bea9f607d67fbf827873c6c0b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bef7c4c-28b5-3a58-b4e6-4ea17d2cdf6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82b120b6-22d9-031d-7012-65f4bac496a9",
  "kind": "theorem",
  "lexical_name": "CommGroup.fg_of_descent",
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
  "slug": "commgroup-fg-of-descent--85ddf01fe7f2b2ada5598855",
  "source": {
    "blob": "042a904f46d950bea9f607d67fbf827873c6c0b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 112,
    "path": "GRWTSK/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85ddf01fe7f2b2ada559885593d8e8109097efa6a787fd80d5af1618ceb81a19",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82b120b6-22d9-031d-7012-65f4bac496a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CommGroup.fg_of_descent {G : Type*} [CommGroup G] {n : ℕ} {h : G → ℝ} {a b c₀ : ℝ}
    {c : G → ℝ} (ha : 0 ≤ a) (H₀ : a < b) (H₁ : (powMonoidHom (α := G) n).range.FiniteIndex)
    (H₂ : ∀ g x, h x ≤ a * h (g * x) + c g) (H₃ : ∀ x, b * h x - c₀ ≤ h (x ^ n)) [Northcott h] :
    Group.FG G := by
  let f : G →* G := powMonoidHom n
  let q := QuotientGroup.mk (s := f.range)
  let qi : G ⧸ f.range → G := Function.surjInv mk_surjective
  let s : Set G := Set.range qi
  obtain ⟨g, hg₁, hg₂⟩ := s.exists_max_image c s.toFinite <| Set.range_nonempty qi
  have H₁' : s * f.range = .univ := by
    refine Set.eq_univ_iff_forall.mpr fun x ↦ Set.mem_mul.mpr ⟨qi (q x), by simp [s], ?_⟩
    conv => enter [1, y]; rw [eq_comm, ← div_eq_iff_eq_mul', SetLike.mem_coe]
    simp only [↓existsAndEq, and_true]
    exact eq_iff_div_mem.mp (Function.surjInv_eq mk_surjective _).symm
  let c' : ℝ := max c₀ (c g)
  have H₃' x : b * h x - c' ≤ h (f x) := by grind [powMonoidHom_apply]
  refine Group.fg_of_descent (fun U u hu ↦ ?_) ha H₀ s.toFinite H₁' (fun g' hg' x ↦ ?_) H₃'
  · obtain ⟨u', hu₁, rfl⟩ := mem_map.mp hu
    exact U.pow_mem hu₁ n
  · grind

/--
If `G` is a commutative group and `n : ℕ`, `h : G → ℝ` satisfy
* `G / G ^ 2` is finite,
* `0 ≤ h x` for all `x : G`,
* there is `C : ℝ` such that for all `x y : G`, `|h (x * y) + h(x / y) - 2 * (h x + h y)| ≤ C`,
* for all `B : ℝ`, there are only finitely many `x : G` such that `h x ≤ B`,

then `G` is finitely generated.
-/
@[to_additive /-- If `G` is a commutative additive group and `n : ℕ`, `h : G → ℝ` satisfy
* `G / 2 • G` is finite,
* `0 ≤ h x` for all `x : G`,
* there is `C : ℝ` such that for all `x y : G`, `|h (x + y) + h(x - y) - 2 * (h x + h y)| ≤ C`,
* for all `B : ℝ`, there are only finitely many `x : G` such that `h x ≤ B`,

then `G` is finitely generated. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042a904f46d950bea9f607d67fbf827873c6c0b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
