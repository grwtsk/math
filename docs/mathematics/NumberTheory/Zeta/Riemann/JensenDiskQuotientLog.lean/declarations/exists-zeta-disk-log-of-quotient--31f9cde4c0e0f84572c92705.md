# exists_zeta_disk_log_of_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b4b2943-a612-ed0d-31e7-0b750d05ba4b",
  "kind": "theorem",
  "lexical_name": "exists_zeta_disk_log_of_quotient",
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
  "slug": "exists-zeta-disk-log-of-quotient--31f9cde4c0e0f84572c92705",
  "source": {
    "blob": "a96388ad55f1b301f9dc57c1aec40cfc6470af67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskQuotientLog.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31f9cde4c0e0f84572c927056fbd5fdf04ae29a6a014eaf7b25dd5f45691c2e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JensenDiskQuotientLog.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b4b2943-a612-ed0d-31e7-0b750d05ba4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_zeta_disk_log_of_quotient (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) (g : ℂ → ℂ)
    (hg : DiffContOnCl ℂ g (ball 0 (3 : ℝ)))
    (hn : ∀ w ∈ ball 0 (11 / 4 : ℝ), g w ≠ 0)
    (hquot : ∀ w ∈ closedBall 0 (3 : ℝ),
      riemannZeta (c + w) = g w *
        ∏ z ∈ diskHead N c, (factor 3 (z.1 - c) w) ^ multiplicity z) :
    ∃ L : ℂ → ℂ, g 0 ≠ 0 ∧ L 0 = 0 ∧
      DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ)) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), HasDerivAt L (logDeriv g w) w) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), (L w).re ≤ growthLog N) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), riemannZeta (c + w) = g 0 *
        (Complex.exp (L w) *
          ∏ z ∈ diskHead N c, (factor 3 (z.1 - c) w) ^ multiplicity z)) := by
  have hb : ∀ w ∈ sphere 0 (3 : ℝ), ‖riemannZeta (c + w)‖ ≤ ((N : ℝ) + 2) ^ 3 := by
    intro w hw
    apply norm_zeta_le_cube_on_disk N hN c (c + w) hc
    have hnorm : ‖w‖ = 3 := by simpa [Metric.mem_sphere, dist_zero_right] using hw
    simp [Metric.mem_closedBall, dist_eq_norm, hnorm]
  have hf : (1 / 4 : ℝ) ≤ ‖riemannZeta (c + 0)‖ := by
    rw [add_zero]
    rcases hc with rfl | rfl
    · exact upper_center_floor N
    · exact lower_center_floor N
  have hlog : Real.log (((N : ℝ) + 2) ^ 3 / (1 / 4 : ℝ)) = growthLog N := by
    have he : ((N : ℝ) + 2) ^ 3 / (1 / 4 : ℝ) = 4 * ((N : ℝ) + 2) ^ 3 := by ring
    rw [he, Real.log_mul (by norm_num) (by positivity), Real.log_pow]
    norm_num only [Nat.cast_ofNat]
    rfl
  obtain ⟨L, hg0, h0, hL, hd, hr, he⟩ := exists_log_from_quotient
    (diskHead N c) (fun z : ZeroPoint => z.1 - c) multiplicity
    (fun w => riemannZeta (c + w)) g (((N : ℝ) + 2) ^ 3) (1 / 4)
    (by positivity) (by norm_num) (fun z hz => (mem_diskHead N c hc z).mp hz)
    hg hn hquot hb hf
  exact ⟨L, hg0, h0, hL, hd, (fun w hw => by simpa only [hlog] using hr w hw), he⟩

/-- Conditional only on the extended quotient; no analytic logarithm is supplied.
This covers the same central real segment, not the still-missing [-3,0) part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JensenDiskQuotientLog.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskQuotientLog.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a96388ad55f1b301f9dc57c1aec40cfc6470af67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
