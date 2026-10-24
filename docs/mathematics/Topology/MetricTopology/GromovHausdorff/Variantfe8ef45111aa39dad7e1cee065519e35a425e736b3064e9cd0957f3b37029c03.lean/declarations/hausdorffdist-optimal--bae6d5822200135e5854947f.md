# hausdorffDist_optimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a323bb14830c522f7d8a6648634b1b5304b913ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aad3d326-3f83-06ed-ebfc-9ca85eb2848b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edb24fb3-82a3-f3cc-ba92-dd8ebe5f25bb",
  "kind": "theorem",
  "lexical_name": "hausdorffDist_optimal",
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
  "slug": "hausdorffdist-optimal--bae6d5822200135e5854947f",
  "source": {
    "blob": "a323bb14830c522f7d8a6648634b1b5304b913ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 254,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bae6d5822200135e5854947f089a36f5fc2c2c9c906fab78f40f7b1c042f25ea",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edb24fb3-82a3-f3cc-ba92-dd8ebe5f25bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffDist_optimal {X : Type u} [MetricSpace X] [CompactSpace X] [Nonempty X]
    {Y : Type v} [MetricSpace Y] [CompactSpace Y] [Nonempty Y] :
    hausdorffDist (range (optimalGHInjl X Y)) (range (optimalGHInjr X Y)) = ghDist X Y := by
  inhabit X; inhabit Y
  /- we only need to check the inequality `≤`, as the other one follows from the previous lemma.
       As the Gromov-Hausdorff distance is an infimum, we need to check that the Hausdorff distance
       in the optimal coupling is smaller than the Hausdorff distance of any coupling.
       First, we check this for couplings which already have small Hausdorff distance: in this
       case, the induced "distance" on `X ⊕ Y` belongs to the candidates family introduced in the
       definition of the optimal coupling, and the conclusion follows from the optimality
       of the optimal coupling within this family.
    -/
  have A :
    ∀ p q : NonemptyCompacts ℓ_infty_ℝ,
      ⟦p⟧ = toGHSpace X →
        ⟦q⟧ = toGHSpace Y →
          hausdorffDist (p : Set ℓ_infty_ℝ) q < diam (univ : Set X) + 1 + diam (univ : Set Y) →
            hausdorffDist (range (optimalGHInjl X Y)) (range (optimalGHInjr X Y)) ≤
              hausdorffDist (p : Set ℓ_infty_ℝ) q := by
    intro p q hp hq bound
    rcases eq_toGHSpace_iff.1 hp with ⟨Φ, ⟨Φisom, Φrange⟩⟩
    rcases eq_toGHSpace_iff.1 hq with ⟨Ψ, ⟨Ψisom, Ψrange⟩⟩
    have I : diam (range Φ ∪ range Ψ) ≤ 2 * diam (univ : Set X) + 1 + 2 * diam (univ : Set Y) := by
      rcases exists_mem_of_nonempty X with ⟨xX, _⟩
      have : ∃ y ∈ range Ψ, dist (Φ xX) y < diam (univ : Set X) + 1 + diam (univ : Set Y) := by
        rw [Ψrange]
        have : Φ xX ∈ ↑p := Φrange.subst (mem_range_self _)
        exact
          exists_dist_lt_of_hausdorffDist_lt this bound
            (hausdorffEdist_ne_top_of_nonempty_of_bounded p.nonempty q.nonempty
              p.isCompact.bounded q.isCompact.bounded)
      rcases this with ⟨y, hy, dy⟩
      rcases mem_range.1 hy with ⟨z, hzy⟩
      rw [← hzy] at dy
      have DΦ : diam (range Φ) = diam (univ : Set X) := Φisom.diam_range
      have DΨ : diam (range Ψ) = diam (univ : Set Y) := Ψisom.diam_range
      calc
        diam (range Φ ∪ range Ψ) ≤ diam (range Φ) + dist (Φ xX) (Ψ z) + diam (range Ψ) :=
          diam_union (mem_range_self _) (mem_range_self _)
        _ ≤
            diam (univ : Set X) + (diam (univ : Set X) + 1 + diam (univ : Set Y)) +
              diam (univ : Set Y) := by
          rw [DΦ, DΨ]
          gcongr
          -- apply add_le_add (add_le_add le_rfl (le_of_lt dy)) le_rfl
        _ = 2 * diam (univ : Set X) + 1 + 2 * diam (univ : Set Y) := by ring
    let f : Sum X Y → ℓ_infty_ℝ := fun x =>
      match x with
      | inl y => Φ y
      | inr z => Ψ z
    let F : Sum X Y × Sum X Y → ℝ := fun p => dist (f p.1) (f p.2)
    -- check that the induced "distance" is a candidate
    have Fgood : F ∈ candidates X Y := by
      simp only [candidates, forall_const, and_true_iff, add_comm, eq_self_iff_true, dist_eq_zero,
        and_self_iff, Set.mem_setOf_eq]
      repeat' constructor
      · exact fun x y =>
          calc
            F (inl x, inl y) = dist (Φ x) (Φ y) := rfl
            _ = dist x y := Φisom.dist_eq x y

      · exact fun x y =>
          calc
            F (inr x, inr y) = dist (Ψ x) (Ψ y) := rfl
            _ = dist x y := Ψisom.dist_eq x y

      · exact fun x y => dist_comm _ _
      · exact fun x y z => dist_triangle _ _ _
      · exact fun x y =>
          calc
            F (x, y) ≤ diam (range Φ ∪ range Ψ) := by
              have A : ∀ z : Sum X Y, f z ∈ range Φ ∪ range Ψ := by
                intro z
                cases z
                · apply mem_union_left; apply mem_range_self
                · apply mem_union_right; apply mem_range_self
              refine' dist_le_diam_of_mem _ (A _) (A _)
              rw [Φrange, Ψrange]
              exact (p ⊔ q).isCompact.bounded
            _ ≤ 2 * diam (univ : Set X) + 1 + 2 * diam (univ : Set Y) := I
    let Fb := candidatesBOfCandidates F Fgood
    have : hausdorffDist (range (optimalGHInjl X Y)) (range (optimalGHInjr X Y)) ≤ HD Fb :=
      hausdorffDist_optimal_le_HD _ _ (candidatesBOfCandidates_mem F Fgood)
    refine' le_trans this (le_of_forall_le_of_dense fun r hr => _)
    have I1 : ∀ x : X, (⨅ y, Fb (inl x, inr y)) ≤ r := by
      intro x
      have : f (inl x) ∈ ↑p := Φrange.subst (mem_range_self _)
      rcases exists_dist_lt_of_hausdorffDist_lt this hr
          (hausdorffEdist_ne_top_of_nonempty_of_bounded p.nonempty q.nonempty p.isCompact.bounded
            q.isCompact.bounded) with
        ⟨z, zq, hz⟩
      have : z ∈ range Ψ := by rwa [← Ψrange] at zq
      rcases mem_range.1 this with ⟨y, hy⟩
      calc
        (⨅ y, Fb (inl x, inr y)) ≤ Fb (inl x, inr y) :=
          ciInf_le (by simpa only [add_zero] using HD_below_aux1 0) y
        _ = dist (Φ x) (Ψ y) := rfl
        _ = dist (f (inl x)) z := by rw [hy]
        _ ≤ r := le_of_lt hz

    have I2 : ∀ y : Y, (⨅ x, Fb (inl x, inr y)) ≤ r := by
      intro y
      have : f (inr y) ∈ ↑q := Ψrange.subst (mem_range_self _)
      rcases exists_dist_lt_of_hausdorffDist_lt' this hr
          (hausdorffEdist_ne_top_of_nonempty_of_bounded p.nonempty q.nonempty p.isCompact.bounded
            q.isCompact.bounded) with
        ⟨z, zq, hz⟩
      have : z ∈ range Φ := by rwa [← Φrange] at zq
      rcases mem_range.1 this with ⟨x, hx⟩
      calc
        (⨅ x, Fb (inl x, inr y)) ≤ Fb (inl x, inr y) :=
          ciInf_le (by simpa only [add_zero] using HD_below_aux2 0) x
        _ = dist (Φ x) (Ψ y) := rfl
        _ = dist z (f (inr y)) := by rw [hx]
        _ ≤ r := le_of_lt hz

    simp only [HD, ciSup_le I1, ciSup_le I2, max_le_iff, and_self_iff]
  /- Get the same inequality for any coupling. If the coupling is quite good, the desired
    inequality has been proved above. If it is bad, then the inequality is obvious. -/
  have B :
    ∀ p q : NonemptyCompacts ℓ_infty_ℝ,
      ⟦p⟧ = toGHSpace X →
        ⟦q⟧ = toGHSpace Y →
          hausdorffDist (range (optimalGHInjl X Y)) (range (optimalGHInjr X Y)) ≤
            hausdorffDist (p : Set ℓ_infty_ℝ) q := by
    intro p q hp hq
    by_cases h :
      hausdorffDist (p : Set ℓ_infty_ℝ) q < diam (univ : Set X) + 1 + diam (univ : Set Y)
    · exact A p q hp hq h
    · calc
        hausdorffDist (range (optimalGHInjl X Y)) (range (optimalGHInjr X Y)) ≤
            HD (candidatesBDist X Y) :=
          hausdorffDist_optimal_le_HD _ _ candidatesBDist_mem_candidatesB
        _ ≤ diam (univ : Set X) + 1 + diam (univ : Set Y) := HD_candidatesBDist_le
        _ ≤ hausdorffDist (p : Set ℓ_infty_ℝ) q := not_lt.1 h
  refine' le_antisymm _ _
  · apply le_csInf
    · refine' (Set.Nonempty.prod _ _).image _ <;> exact ⟨_, rfl⟩
    · rintro b ⟨⟨p, q⟩, ⟨hp, hq⟩, rfl⟩
      exact B p q hp hq
  · exact ghDist_le_hausdorffDist (isometry_optimalGHInjl X Y) (isometry_optimalGHInjr X Y)
#align Gromov_Hausdorff.Hausdorff_dist_optimal GromovHausdorff.hausdorffDist_optimal

/-- The Gromov-Hausdorff distance can also be realized by a coupling in `ℓ^∞(ℝ)`, by embedding
the optimal coupling through its Kuratowski embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a323bb14830c522f7d8a6648634b1b5304b913ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
