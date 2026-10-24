# Asymptotics.IsLittleO.sum_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b62925af74918e5451da98f0cd18869567bb9b97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e6080fc-e9f3-c80f-e615-2752c33c85e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ceeac3c8-dfcd-f6a2-3d76-ae40bc924a22",
  "kind": "theorem",
  "lexical_name": "Asymptotics.IsLittleO.sum_range",
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
  "slug": "asymptotics-islittleo-sum-range--77f84daa70311d6feb8993e9",
  "source": {
    "blob": "b62925af74918e5451da98f0cd18869567bb9b97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 106,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77f84daa70311d6feb8993e9e236537ebfbe3694de09fa2c6f708181886e9970",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceeac3c8-dfcd-f6a2-3d76-ae40bc924a22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Asymptotics.IsLittleO.sum_range {α : Type*} [NormedAddCommGroup α] {f : ℕ → α} {g : ℕ → ℝ}
    (h : f =o[atTop] g) (hg : 0 ≤ g) (h'g : Tendsto (fun n => ∑ i in range n, g i) atTop atTop) :
    (fun n => ∑ i in range n, f i) =o[atTop] fun n => ∑ i in range n, g i := by
  have A : ∀ i, ‖g i‖ = g i := fun i => Real.norm_of_nonneg (hg i)
  have B : ∀ n, ‖∑ i in range n, g i‖ = ∑ i in range n, g i := fun n => by
    rwa [Real.norm_eq_abs, abs_sum_of_nonneg']
  apply isLittleO_iff.2 fun ε εpos => _
  intro ε εpos
  obtain ⟨N, hN⟩ : ∃ N : ℕ, ∀ b : ℕ, N ≤ b → ‖f b‖ ≤ ε / 2 * g b := by
    simpa only [A, eventually_atTop] using isLittleO_iff.mp h (half_pos εpos)
  have : (fun _ : ℕ => ∑ i in range N, f i) =o[atTop] fun n : ℕ => ∑ i in range n, g i := by
    apply isLittleO_const_left.2
    exact Or.inr (h'g.congr fun n => (B n).symm)
  filter_upwards [isLittleO_iff.1 this (half_pos εpos), Ici_mem_atTop N] with n hn Nn
  calc
    ‖∑ i in range n, f i‖ = ‖(∑ i in range N, f i) + ∑ i in Ico N n, f i‖ := by
      rw [sum_range_add_sum_Ico _ Nn]
    _ ≤ ‖∑ i in range N, f i‖ + ‖∑ i in Ico N n, f i‖ := (norm_add_le _ _)
    _ ≤ ‖∑ i in range N, f i‖ + ∑ i in Ico N n, ε / 2 * g i :=
      (add_le_add le_rfl (norm_sum_le_of_le _ fun i hi => hN _ (mem_Ico.1 hi).1))
    _ ≤ ‖∑ i in range N, f i‖ + ∑ i in range n, ε / 2 * g i := by
      gcongr
      apply sum_le_sum_of_subset_of_nonneg
      · rw [range_eq_Ico]
        exact Ico_subset_Ico (zero_le _) le_rfl
      · intro i _ _
        exact mul_nonneg (half_pos εpos).le (hg i)
    _ ≤ ε / 2 * ‖∑ i in range n, g i‖ + ε / 2 * ∑ i in range n, g i := by rw [← mul_sum]; gcongr
    _ = ε * ‖∑ i in range n, g i‖ := by
      simp only [B]
      ring
#align asymptotics.is_o.sum_range Asymptotics.IsLittleO.sum_range

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Varianta482a0b33550db274ea38adab408a55173d47193e84ce8abe9805623c376329d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b62925af74918e5451da98f0cd18869567bb9b97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
