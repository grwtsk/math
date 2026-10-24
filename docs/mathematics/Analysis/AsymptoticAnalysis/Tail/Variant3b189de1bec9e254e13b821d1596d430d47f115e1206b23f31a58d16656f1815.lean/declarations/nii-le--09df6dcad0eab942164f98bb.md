# NII_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 593,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:883b9e62-c54f-0b71-d138-661787cbe6f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54d8e6e2-4cf7-95d2-48d7-9878ae611799",
  "kind": "theorem",
  "lexical_name": "NII_le",
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
  "slug": "nii-le--09df6dcad0eab942164f98bb",
  "source": {
    "blob": "b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 593,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09df6dcad0eab942164f98bbbb78a895691e063094a932b3fa231405f9328a89",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54d8e6e2-4cf7-95d2-48d7-9878ae611799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NII_le (Z : ZeroConfig) {A₀ T : ℝ} (hA₀ : 1 ≤ A₀)
    (hloc : ∀ t : ℝ, (Z.N t (t + 1) : ℝ) ≤ A₀ * Real.log (|t| + 3)) (hT : T₀ ≤ T) :
    (Assembly.NII Z T : ℝ) ≤ 3 * A₀ * Real.sqrt T * Real.log (4 * T) := by
  classical
  have hT' : (300:ℝ) ≤ T := hT
  have hLC := LocalCount.ofWindowCount Z hA₀ hloc
  have hfin1 : (Z.window (T - D0 T) T).Finite := Z.finite_window _ _
  have hfin2 : (Z.window (2 * T) (2 * T + D0 T)).Finite := Z.finite_window _ _
  set s1 : Finset Z.carrier := hfin1.toFinset.subtype (· ∈ Z.carrier) with hs1
  set s2 : Finset Z.carrier := hfin2.toFinset.subtype (· ∈ Z.carrier) with hs2
  have hN1 : (Z.N (T - D0 T) T : ℝ) = ∑ ρ ∈ s1, (Z.mult (ρ : ℂ) : ℝ) := by
    unfold ZeroConfig.N
    rw [finsum_mem_eq_finite_toFinset_sum _ hfin1, hs1,
      Finset.sum_subtype_of_mem (f := fun ρ : ℂ => (Z.mult ρ : ℝ))]
    · push_cast; rfl
    · intro x hx; exact ((Set.Finite.mem_toFinset _).mp hx).1
  have hN2 : (Z.N (2 * T) (2 * T + D0 T) : ℝ) = ∑ ρ ∈ s2, (Z.mult (ρ : ℂ) : ℝ) := by
    unfold ZeroConfig.N
    rw [finsum_mem_eq_finite_toFinset_sum _ hfin2, hs2,
      Finset.sum_subtype_of_mem (f := fun ρ : ℂ => (Z.mult ρ : ℝ))]
    · push_cast; rfl
    · intro x hx; exact ((Set.Finite.mem_toFinset _).mp hx).1
  have hmem1 : ∀ ρ ∈ s1, T - Real.sqrt T < (ρ : ℂ).im ∧ (ρ : ℂ).im ≤ T := by
    intro ρ hρ
    rw [hs1, Finset.mem_subtype, Set.Finite.mem_toFinset] at hρ
    exact hρ.2
  have hmem2 : ∀ ρ ∈ s2, 2 * T < (ρ : ℂ).im ∧ (ρ : ℂ).im ≤ 2 * T + Real.sqrt T := by
    intro ρ hρ
    rw [hs2, Finset.mem_subtype, Set.Finite.mem_toFinset] at hρ
    exact hρ.2
  have hdisj : Disjoint s1 s2 := by
    rw [Finset.disjoint_left]
    intro ρ h1 h2
    have := (hmem1 ρ h1).2; have := (hmem2 ρ h2).1; linarith
  have hunion : ∀ ρ ∈ s1 ∪ s2, (T - Real.sqrt T < (ρ : ℂ).im ∧ (ρ : ℂ).im ≤ T)
      ∨ (2 * T < (ρ : ℂ).im ∧ (ρ : ℂ).im ≤ 2 * T + Real.sqrt T) := by
    intro ρ hρ
    rcases Finset.mem_union.mp hρ with h | h
    · exact Or.inl (hmem1 ρ h)
    · exact Or.inr (hmem2 ρ h)
  have h := boundary_count_le hLC hT (s1 ∪ s2) hunion
  rw [Finset.sum_union hdisj] at h
  unfold Assembly.NII
  push_cast
  rw [hN1, hN2]
  exact h

/-- L = λ log(T/2π) → ∞; in particular eventually L ≥ 2 (and ≥ 8w, etc.). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
