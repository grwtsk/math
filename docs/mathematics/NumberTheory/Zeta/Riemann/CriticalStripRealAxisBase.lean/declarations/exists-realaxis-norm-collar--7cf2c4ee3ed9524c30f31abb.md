# exists_realAxis_norm_collar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d71e4c5-5bbf-6aef-308c-6238bb94b9ae",
  "kind": "theorem",
  "lexical_name": "exists_realAxis_norm_collar",
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
  "slug": "exists-realaxis-norm-collar--7cf2c4ee3ed9524c30f31abb",
  "source": {
    "blob": "ac2b21d5a84f683a67e04cad4377a9deca32330a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 60,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cf2c4ee3ed9524c30f31abb20abfc49c31b588759faa3b365f19fa220d0d7a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d71e4c5-5bbf-6aef-308c-6238bb94b9ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_realAxis_norm_collar :
    ∃ η b : ℝ, 0 < η ∧ 0 < b ∧
      ∀ z : ℂ, 0 ≤ z.re → z.re ≤ 1 → |z.im| ≤ η →
        b ≤ ‖poleNormalizedZeta z‖ := by
  obtain ⟨r, b, hr, hb, hthick⟩ := exists_thickening_norm_lower_of_compact
    realCoreSegment_isCompact realCoreSegment_nonempty
    differentiable_poleNormalizedZeta.continuous
    (fun z hz => poleNormalized_nonzero_on_realCore hz)
  refine ⟨r / 2, b, by positivity, hb, ?_⟩
  intro z hleft hright hheight
  let w : ℂ := (z.re : ℂ)
  have hw : w ∈ realCoreSegment := ⟨z.re, ⟨hleft, hright⟩, rfl⟩
  have hdiff : z - w = (z.im : ℂ) * I := by
    apply Complex.ext <;> simp [w]
  have hdist : dist z w = |z.im| := by
    rw [dist_eq_norm, hdiff, norm_mul, Complex.norm_real, Complex.norm_I,
      mul_one, Real.norm_eq_abs]
  apply hthick z
  apply Metric.mem_thickening_iff.mpr
  refine ⟨w, hw, ?_⟩
  rw [hdist]
  exact hheight.trans_lt (by linarith : r / 2 < r)

/-- Some positive height is free of all canonical nontrivial zeros, not merely a
finite list. This is noneffective and does not claim any prescribed numerical height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisBase.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac2b21d5a84f683a67e04cad4377a9deca32330a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
