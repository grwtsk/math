# complete_chamber_actual_count_and_fold_consumers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a83d0abf-1ad3-def3-5501-10085daf6774",
  "kind": "theorem",
  "lexical_name": "complete_chamber_actual_count_and_fold_consumers",
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
  "slug": "complete-chamber-actual-count-and-fold-consumers--cbacad9cfae5c9baa8d969f9",
  "source": {
    "blob": "b2204ae8d00905a3577523a52a736cea9cea12b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbacad9cfae5c9baa8d969f991efdb0f4da2c05ddf773e8aa4a3828f5b164fab",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a83d0abf-1ad3-def3-5501-10085daf6774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_chamber_actual_count_and_fold_consumers {g : ℝ × ℝ → ℝ}
    {l₀ a b : ℝ} (hab : a < b)
    (hc : ∀ x ∈ Icc a b, ContDiffAt ℝ 1 g (l₀,x))
    (ha : g (l₀,a) ≠ 0) (hb : g (l₀,b) ≠ 0)
    (hfinite : {x | x ∈ Ioo a b ∧ g (l₀,x) = 0}.Finite)
    (hsimple : ∀ x ∈ Ioo a b, g (l₀,x) = 0 → spatialSlope g (l₀,x) ≠ 0) :
    ∃ (n : ℕ) (z : Fin n → ℝ → ℝ) (U : Set ℝ),
      IsOpen U ∧ l₀ ∈ U ∧ (∀ i, ContDiffOn ℝ 1 (z i) U) ∧
      (∀ l ∈ U, StrictMono (fun i => z i l) ∧
        (∀ i, z i l ∈ Ioo a b) ∧
        (∀ x ∈ Icc a b, g (l,x) = 0 ↔ ∃ i, z i l = x) ∧
        {x | x ∈ Icc a b ∧ g (l,x) = 0}.ncard = n ∧
        g (l,a) ≠ 0 ∧ g (l,b) ≠ 0 ∧
        (∀ i j : Fin n, i < j →
          ContDiffAt ℝ 1 (center (z i) (z j)) l ∧
          ContDiffAt ℝ 1 (radius (z i) (z j)) l ∧
          0 < radius (z i) (z j) l ∧
          0 < MovingNativeChamber.width (z i l) (z j l) ∧
          (∀ x : ℝ, ContDiffAt ℝ 1 (fun u : ℝ × ℝ =>
            AffineAccordionWeld.fold (z i u.1) (z j u.1) u.2) (l,x) ∧
            ContDiffAt ℝ 1 (fun u : ℝ × ℝ =>
              MovingNativeChamber.fold (z i u.1) (z j u.1) u.2) (l,x)))) := by
  obtain ⟨n,z,U,hU,hu,hzc,hfull⟩ :=
    finite_simple_interior_zeros_have_complete_chamber hc ha hb hfinite hsimple
  refine ⟨n,z,U,hU,hu,hzc,?_⟩
  intro l hl
  obtain ⟨horder,hinside,hcensus⟩ := hfull l hl
  have hna : g (l,a) ≠ 0 := by
    intro hz
    obtain ⟨i,hi⟩ := (hcensus a ⟨le_refl a,hab.le⟩).1 hz
    have h := (hinside i).1
    rw [hi] at h
    exact lt_irrefl a h
  have hnb : g (l,b) ≠ 0 := by
    intro hz
    obtain ⟨i,hi⟩ := (hcensus b ⟨hab.le,le_refl b⟩).1 hz
    have h := (hinside i).2
    rw [hi] at h
    exact lt_irrefl b h
  refine ⟨horder,hinside,hcensus,
    complete_census_exact_zero_count _ horder hinside hcensus,hna,hnb,?_⟩
  intro i j hij
  have hci := (hzc i).contDiffAt (hU.mem_nhds hl)
  have hcj := (hzc j).contDiffAt (hU.mem_nhds hl)
  have ho := horder hij
  refine ⟨moving_center_c1 hci hcj,moving_radius_c1 hci hcj,
    div_pos (sub_pos.mpr ho) (by norm_num),MovingNativeChamber.width_pos ho,?_⟩
  intro x
  exact ⟨moving_fold_joint_c1 hci hcj ho,MovingNativeChamber.native_fold_joint_c1 hci hcj ho⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ZeroChamberConsumer/Variant1cf12b5f6a4c8719c2769f6bb0f5e52e698427eb4b71aa7fa7b2c6a78dfa941e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2204ae8d00905a3577523a52a736cea9cea12b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
