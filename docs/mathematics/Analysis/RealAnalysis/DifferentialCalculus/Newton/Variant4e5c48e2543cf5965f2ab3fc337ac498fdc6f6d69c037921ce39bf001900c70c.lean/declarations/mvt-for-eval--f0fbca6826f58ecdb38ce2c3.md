# mvt_for_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41c1839a-3727-ec58-e2a7-9615559a30fe",
  "kind": "theorem",
  "lexical_name": "mvt_for_eval",
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
  "slug": "mvt-for-eval--f0fbca6826f58ecdb38ce2c3",
  "source": {
    "blob": "ec9d246d4125bc4d43ddcf3493084911838ef0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 200,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0fbca6826f58ecdb38ce2c34277ca7618f5267482d40f8442b8a3aa8a0c3173",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41c1839a-3727-ec58-e2a7-9615559a30fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mvt_for_eval (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (c x : ℝ) (_hcI : c ∈ I) (_hxI : x ∈ I) (hcx : c ≠ x) :
    ∃ ξ, (min c x < ξ ∧ ξ < max c x) ∧
      evalFunc1 e x - evalFunc1 e c = deriv (evalFunc1 e) ξ * (x - c) := by
  have hdiff := evalFunc1_differentiable e hsupp
  -- Need continuity on [min c x, max c x] and differentiability on (min c x, max c x)
  have hcont : ContinuousOn (evalFunc1 e) (Set.Icc (min c x) (max c x)) :=
    hdiff.continuous.continuousOn
  have hdiffOn : DifferentiableOn ℝ (evalFunc1 e) (Set.Ioo (min c x) (max c x)) :=
    hdiff.differentiableOn
  have hlt : min c x < max c x := by
    rcases lt_trichotomy c x with hlt | heq | hgt
    · simp [min_eq_left hlt.le, max_eq_right hlt.le, hlt]
    · exact absurd heq hcx
    · simp [min_eq_right hgt.le, max_eq_left hgt.le, hgt]
  -- Apply MVT: exists ξ with deriv f ξ = (f(max) - f(min)) / (max - min)
  rcases exists_deriv_eq_slope (evalFunc1 e) hlt hcont hdiffOn with ⟨ξ, hξ_mem, hξ_eq⟩
  use ξ
  constructor
  · exact hξ_mem
  · -- Convert slope equation to what we need
    -- hξ_eq: deriv f ξ = (f(max) - f(min)) / (max - min)
    rcases le_or_gt c x with hcx_le | hcx_gt
    · -- c ≤ x case: min = c, max = x
      have hmin : min c x = c := min_eq_left hcx_le
      have hmax : max c x = x := max_eq_right hcx_le
      rw [hmin, hmax] at hξ_eq
      -- hξ_eq: deriv f ξ = (f x - f c) / (x - c)
      have hxc_ne : x - c ≠ 0 := by
        intro heq
        have : x = c := by linarith
        exact hcx this.symm
      field_simp [hxc_ne] at hξ_eq
      linarith
    · -- x < c case: min = x, max = c
      have hmin : min c x = x := min_eq_right hcx_gt.le
      have hmax : max c x = c := max_eq_left hcx_gt.le
      rw [hmin, hmax] at hξ_eq
      -- hξ_eq: deriv f ξ = (f c - f x) / (c - x)
      have hcx_ne : c - x ≠ 0 := by linarith
      field_simp [hcx_ne] at hξ_eq
      -- hξ_eq: deriv f ξ * (c - x) = f c - f x
      -- need: f x - f c = deriv f ξ * (x - c)
      linarith

/-- If ξ is between c and x, and both c and x are in I, then ξ is in I. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9d246d4125bc4d43ddcf3493084911838ef0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
