# exists_rightBoundary_norm_collar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7d62745-b807-213a-1632-97441aa4f29a",
  "kind": "theorem",
  "lexical_name": "exists_rightBoundary_norm_collar",
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
  "slug": "exists-rightboundary-norm-collar--fae6648cc69e74876da9c147",
  "source": {
    "blob": "0cde97b4d3760c0ab2de7c0e653442de3c15fc55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fae6648cc69e74876da9c1476a4be97cf12928ca4879508690bf12bc20ac0b3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7d62745-b807-213a-1632-97441aa4f29a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rightBoundary_norm_collar (N : ℕ) :
    ∃ δ b : ℝ, 0 < δ ∧ δ ≤ 1 / 4 ∧ 0 < b ∧
      ∀ z ∈ rightClosedBand N δ, b ≤ ‖poleNormalizedZeta z‖ := by
  obtain ⟨r, b, hr, hb, hthick⟩ := exists_thickening_norm_lower_of_compact
    (rightBoundarySegment_isCompact N) (rightBoundarySegment_nonempty N)
    differentiable_poleNormalizedZeta.continuous
    (by
      intro z hz
      have hre := ((mem_rightBoundarySegment_iff N z).mp hz).1
      exact poleNormalizedZeta_ne_zero_of_one_le_re
        (by simpa only [hre] using (le_refl (1 : ℝ))))
  let δ : ℝ := min (r / 2) (1 / 4)
  have hδ : 0 < δ := lt_min (by positivity) (by norm_num)
  have hδr : δ < r := (min_le_left _ _).trans_lt (by linarith)
  refine ⟨δ, b, hδ, min_le_right _ _, hb, ?_⟩
  intro z hz
  let w : ℂ := ⟨1, z.im⟩
  have hw : w ∈ rightBoundarySegment N :=
    (mem_rightBoundarySegment_iff N w).mpr ⟨rfl, hz.2⟩
  have hdist : dist z w = |z.re - 1| := by
    rw [dist_eq_norm]
    have hdiff : z - w = ((z.re - 1 : ℝ) : ℂ) := by
      apply Complex.ext <;> simp [w]
    rw [hdiff, Complex.norm_real, Real.norm_eq_abs]
  exact hthick z (Metric.mem_thickening_iff.mpr
    ⟨w, hw, by rw [hdist]; exact hz.1.trans_lt hδr⟩)

/-- Proof-carrying collar data, with its lower bound and finite cover bound to the
same exact normalized zeta source. No effective extraction is claimed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cde97b4d3760c0ab2de7c0e653442de3c15fc55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
