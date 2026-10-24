# convs_eq_sum_of_forall_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6ffc46a-61b8-d934-e82c-658aa6ab79af",
  "kind": "theorem",
  "lexical_name": "convs_eq_sum_of_forall_le",
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
  "slug": "convs-eq-sum-of-forall-le--7393a960aeff3ebf4384eae0",
  "source": {
    "blob": "f52dc96cc0a8c1503ec18c1e119429dbf2a0a4da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 311,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7393a960aeff3ebf4384eae092c31401c42430dc9e0eca0f9c205825c66e299e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6ffc46a-61b8-d934-e82c-658aa6ab79af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convs_eq_sum_of_forall_le (hB : ∀ m ≤ n, g.dens m ≠ 0) :
    g.convs n = g.h + ∑ i ∈ Finset.range n,
      - (∏ j ∈ Finset.range (i + 1), -(g.partNums.get? j).getD 0) /
        (g.dens i * g.dens (i + 1)) := by
  obtain ⟨ρ, hρ⟩ := isEuler_toEuler (g := g) |>.exists_euler
  rw [toEuler_h] at hρ
  rw [← convs_toEuler_of_forall_le hB _ le_rfl, ← hρ, convs_euler, add_left_cancel_iff]
  apply Finset.sum_congr rfl fun i hi => ?_
  rw [Finset.prod_range_succ', Finset.prod_range_succ']
  have hj_zero : (ρ.get? 0).getD 0 = (g.partNums.get? 0).getD 0 / g.dens 1 := by
    erw [Stream'.Seq.map_get?]
    rcases Decidable.em <| TerminatedAt g 0 with hj | hj
    · rw [hj]
      rw [← terminatedAt_toEuler, ← hρ, terminatedAt_euler] at hj
      rw [hj]
      simp
    · have := toEuler_s_zero (g := g)
      rw [← hρ, euler_s_zero] at this
      obtain ⟨⟨a₀, b₀⟩, hg1⟩ : ∃ gp, g.s.get? 0 = some gp :=
        Option.ne_none_iff_exists'.mp hj
      have ⟨ρ₀, hg2⟩ : ∃ ρ₀, ρ.get? 0 = some ρ₀ :=
        Option.ne_none_iff_exists'.mp <| show ¬ρ.TerminatedAt 0 by
          rwa [← terminatedAt_toEuler, ← hρ, terminatedAt_euler] at hj
      grind [first_den_eq hg1]
  have hj_succ (j : ℕ) : (ρ.get? (j + 1)).getD 0 = - (g.partNums.get? (j + 1)).getD 0 *
      g.dens j / g.dens (j + 2) := by
    erw [Stream'.Seq.map_get?]
    rcases Decidable.em <| TerminatedAt g (j + 1) with hj | hj
    · rw [hj]
      rw [← terminatedAt_toEuler, ← hρ, terminatedAt_euler] at hj
      rw [hj]
      simp
    · have := toEuler_s_succ (n := j) (g := g)
      rw [← hρ, euler_s_succ] at this
      obtain ⟨⟨aₙ, bₙ⟩, hg1⟩ : ∃ gp, g.s.get? (j + 1) = some gp :=
        Option.ne_none_iff_exists'.mp hj
      obtain ⟨ρₙ, hg2⟩ : ∃ ρ₀, ρ.get? (j + 1) = some ρ₀ :=
        Option.ne_none_iff_exists'.mp <| show ¬ρ.TerminatedAt (j + 1) by
          rwa [← terminatedAt_toEuler, ← hρ, terminatedAt_euler] at hj
      grind
  simp only [hj_zero, hj_succ]
  induction i with
  | zero => simp
  | succ i' ih => grind [Finset.prod_range_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variantbefccb4569ba08223e62f7e7bed7bde771149113ed8b4099d89e7dea114fbbc0.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f52dc96cc0a8c1503ec18c1e119429dbf2a0a4da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
