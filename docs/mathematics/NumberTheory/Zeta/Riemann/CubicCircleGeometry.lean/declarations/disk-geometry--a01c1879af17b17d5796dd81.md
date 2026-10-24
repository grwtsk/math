# disk_geometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71a400fa-2925-9b0c-1129-11928b53eb66",
  "kind": "theorem",
  "lexical_name": "disk_geometry",
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
  "slug": "disk-geometry--a01c1879af17b17d5796dd81",
  "source": {
    "blob": "de4d3fc751818d5e38ae5a391dc7add991016d63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a01c1879af17b17d5796dd816e4de9164371d8101054eef6be5029bcb0736122",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71a400fa-2925-9b0c-1129-11928b53eb66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disk_geometry (N : ℕ) (hN : 2 ≤ N) (c s : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) (hs : s ∈ closedBall c (3 : ℝ)) :
    -1 ≤ s.re ∧ (1 / 2 : ℝ) ≤ |s.im| ∧
      ‖s‖ ≤ 3 * ((N : ℝ) + 2) ∧ ‖s + 1‖ ≤ 3 * ((N : ℝ) + 2) ∧
      ‖s + 2‖ ≤ 3 * ((N : ℝ) + 2) := by
  have hNr : (2 : ℝ) ≤ N := by exact_mod_cast hN
  have hdist : ‖s - c‖ ≤ 3 := by simpa [mem_closedBall, dist_eq_norm] using hs
  have hcr : c.re = 2 := by rcases hc with rfl | rfl <;> simp
  have hci : |c.im| = (N : ℝ) + 3 / 2 := by
    rcases hc with rfl | rfl
    · rw [upperCenter_im, abs_of_nonneg (by positivity)]
    · rw [lowerCenter_im, abs_neg, abs_of_nonneg (by positivity)]
  have hreal : |s.re - 2| ≤ 3 := by
    simpa only [Complex.sub_re, hcr] using (Complex.abs_re_le_norm (s - c)).trans hdist
  have him : |s.im - c.im| ≤ 3 :=
    (Complex.abs_im_le_norm (s - c)).trans hdist
  have himtri : |c.im| ≤ |s.im| + |s.im - c.im| := by
    have h := abs_add_le s.im (c.im - s.im)
    have he : s.im + (c.im - s.im) = c.im := by ring
    rw [he, abs_sub_comm c.im s.im] at h
    exact h
  have hcn : ‖c‖ ≤ (N : ℝ) + 7 / 2 := by
    have hparts := Complex.norm_le_abs_re_add_abs_im c
    rw [hcr, hci] at hparts
    norm_num at hparts
    linarith
  have hsn : ‖s‖ ≤ (N : ℝ) + 13 / 2 :=
    (norm_le_norm_sub_add s c).trans (by linarith)
  have hs1 : ‖s + 1‖ ≤ ‖s‖ + 1 := by simpa using norm_add_le s (1 : ℂ)
  have hs2 : ‖s + 2‖ ≤ ‖s‖ + 2 := by simpa using norm_add_le s (2 : ℂ)
  exact ⟨by linarith [(abs_le.mp hreal).1], by linarith,
    by linarith, by linarith, by linarith⟩

/-- A quantitative pole-distance bound, not merely qualitative pole avoidance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de4d3fc751818d5e38ae5a391dc7add991016d63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
