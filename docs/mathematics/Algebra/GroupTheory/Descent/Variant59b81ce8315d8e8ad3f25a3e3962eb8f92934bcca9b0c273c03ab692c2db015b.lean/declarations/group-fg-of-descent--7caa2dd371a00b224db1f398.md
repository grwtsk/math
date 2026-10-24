# Group.fg_of_descent

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
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1335cb0c-6de5-daa0-cde9-b0a10ed2942d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ad1acea-fd1b-e026-7c6b-fb13455d0cc2",
  "kind": "theorem",
  "lexical_name": "Group.fg_of_descent",
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
  "slug": "group-fg-of-descent--7caa2dd371a00b224db1f398",
  "source": {
    "blob": "042a904f46d950bea9f607d67fbf827873c6c0b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 69,
    "path": "GRWTSK/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7caa2dd371a00b224db1f3981b05abe40c5355e5f0cc7b6feaead9905e465a19",
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

Occurrence: `result:5ad1acea-fd1b-e026-7c6b-fb13455d0cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Group.fg_of_descent {G : Type*} [Group G] {f : G →* G} (hf : ∀ U : Subgroup G, U.map f ≤ U)
    {s : Set G} {h : G → ℝ} {a b c : ℝ} (ha : 0 ≤ a) (H₀ : a < b) (hs : s.Finite)
    (H₁ : s * f.range = .univ) (H₂ : ∀ g ∈ s, ∀ x, h x ≤ a * h (g * x) + c)
    (H₃ : ∀ x, b * h x - c ≤ h (f x)) [Northcott h] :
    FG G := by
  set q := QuotientGroup.mk (s := map f ⊤)
  -- Main proof idea: `s` together with elements of sufficiently small "height" `h` generates `G`.
  let S : Set G := s ∪ {x : G | h x ≤ 2 * c / (b - a)}
  let U := closure S
  suffices U = ⊤ from Group.fg_iff.mpr ⟨S, this, hs.union <| Northcott.finite_le _⟩
  by_contra! H -- Assume for contradiction that these elements generate a proper subgroup `U`.
  rw [← SetLike.coe_ne_coe, coe_top, ← Set.nonempty_compl] at H
  -- Then we can find an element `x : G` not in `U` and of minimal height.
  obtain ⟨x, hx₁, hx₂⟩ := Northcott.exists_min_image h Uᶜ H
  -- Now we construct an element `y` of smaller height and not in `U`.
  obtain ⟨g, hg, z, ⟨y, rfl⟩, rfl⟩ := Set.mem_mul.mp <| H₁ ▸ Set.mem_univ x
  have H' : h y < h (g * f y) := by
    suffices a * h (g * f y) + 2 * c < b * h (g * f y) by nlinarith [H₂ g hg (f y), H₃ y]
    suffices 2 * c / (b - a) < h (g * f y) by field_simp [sub_pos.mpr H₀] at this; grind
    suffices g * f y ∉ S by grind
    exact notMem_of_notMem_closure hx₁
  -- To obtain a contradiction, we do cases on whether `y ∈ U`.
  by_cases hy : y ∈ U
  · exact hx₁ <| U.mul_mem (mem_closure_of_mem <| .inl hg) <| hf U <| mem_map_of_mem f hy
  · exact H'.not_ge <| hx₂ y hy

open Subgroup QuotientGroup in
/--
If `G` is a commutative group and `n : ℕ`, `h : G → ℝ` satisfy
* `G / G ^ n` is finite,
* for all `g x : G`, `h x ≤ a * h (g * x) + c g`,
* for all `x : G`, `h (x ^ n) ≥ b * h x - c₀`,
* for all `B : ℝ`, there are only finitely many `x : G` such that `h x ≤ B`,

where `0 ≤ a < b` and `c₀` are real numbers, `c : G → ℝ`, then `G` is finitely generated.
-/
@[to_additive /-- If `G` is a commutative additive group and `n : ℕ`, `h : G → ℝ` satisfy
* `G / n • G` is finite,
* for all `g x : G`, `h x ≤ a * h (g + x) + c g`,
* for all `x : G`, `h (n • x) ≥ b * h x - c₀`,
* for all `B : ℝ`, there are only finitely many `x : G` such that `h x ≤ B`,

where `0 ≤ a < b` and `c₀` are real numbers, `c : G → ℝ`, then `G` is finitely generated. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Descent/Variant59b81ce8315d8e8ad3f25a3e3962eb8f92934bcca9b0c273c03ab692c2db015b.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042a904f46d950bea9f607d67fbf827873c6c0b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
