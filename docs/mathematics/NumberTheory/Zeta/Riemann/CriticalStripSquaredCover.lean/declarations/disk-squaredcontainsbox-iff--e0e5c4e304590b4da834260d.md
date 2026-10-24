# Disk.squaredContainsBox_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68f0dfed-9919-eba4-5a99-f55150bc4ede",
  "kind": "theorem",
  "lexical_name": "Disk.squaredContainsBox_iff",
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
  "slug": "disk-squaredcontainsbox-iff--e0e5c4e304590b4da834260d",
  "source": {
    "blob": "629d134563d63cdbbcd90ac679c388691f45444f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0e5c4e304590b4da834260da6ffa8bbdd5507593ab8c1a3b45c22c48208d14a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68f0dfed-9919-eba4-5a99-f55150bc4ede`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Disk.squaredContainsBox_iff (d : Disk) (b : Rectangle)
    (hb : b.WellFormed) : d.SquaredContainsBox b ↔ b.carrier ⊆ d.carrier := by
  refine ⟨d.squaredContainsBox_sound b, ?_⟩
  intro hsub
  obtain ⟨x, hx, hxe⟩ := endpoint_max_attained b.left b.right d.re
  obtain ⟨y, hy, hye⟩ := endpoint_max_attained b.bottom b.top d.im
  have hxmem : b.left ≤ x ∧ x ≤ b.right := by
    rcases hx with rfl | rfl
    · exact ⟨le_rfl, hb.1⟩
    · exact ⟨hb.1, le_rfl⟩
  have hymem : b.bottom ≤ y ∧ y ≤ b.top := by
    rcases hy with rfl | rfl
    · exact ⟨le_rfl, hb.2⟩
    · exact ⟨hb.2, le_rfl⟩
  let z : ℂ := ⟨(x : ℝ), (y : ℝ)⟩
  have hz : z ∈ b.carrier := by
    change (b.left : ℝ) ≤ (x : ℝ) ∧ (x : ℝ) ≤ (b.right : ℝ) ∧
      (b.bottom : ℝ) ≤ (y : ℝ) ∧ (y : ℝ) ≤ (b.top : ℝ)
    exact_mod_cast (And.intro hxmem.1 (And.intro hxmem.2 hymem))
  have hnorm : ‖z - d.center‖ ≤ (d.radius : ℝ) := by
    simpa only [Disk.carrier, Metric.mem_closedBall, dist_eq_norm] using hsub hz
  have hr : 0 ≤ (d.radius : ℝ) := (norm_nonneg _).trans hnorm
  have hxabs : |(x : ℝ) - (d.re : ℝ)| = (d.realReach b : ℝ) := by
    exact_mod_cast hxe
  have hyabs : |(y : ℝ) - (d.im : ℝ)| = (d.imagReach b : ℝ) := by
    exact_mod_cast hye
  have hn : ‖z - d.center‖ ^ 2 =
      (d.realReach b : ℝ) ^ 2 + (d.imagReach b : ℝ) ^ 2 := by
    calc
      _ = ((x : ℝ) - (d.re : ℝ)) ^ 2 + ((y : ℝ) - (d.im : ℝ)) ^ 2 := by
        simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
          Complex.sub_im, Disk.center, z, pow_two]
      _ = |(x : ℝ) - (d.re : ℝ)| ^ 2 + |(y : ℝ) - (d.im : ℝ)| ^ 2 := by
        simp only [sq_abs]
      _ = _ := by rw [hxabs, hyabs]
  have hsq : (d.realReach b : ℝ) ^ 2 + (d.imagReach b : ℝ) ^ 2 ≤
      (d.radius : ℝ) ^ 2 := by
    have hm := mul_le_mul hnorm hnorm (norm_nonneg _) hr
    nlinarith
  constructor
  · exact_mod_cast hr
  · exact_mod_cast hsq

end

namespace SquaredCover

/-- Uses the SAME Tree and split geometry; only the leaf guard changes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629d134563d63cdbbcd90ac679c388691f45444f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
