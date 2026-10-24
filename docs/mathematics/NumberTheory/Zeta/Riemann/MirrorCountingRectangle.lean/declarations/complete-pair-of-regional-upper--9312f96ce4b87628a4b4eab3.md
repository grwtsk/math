# complete_pair_of_regional_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edcf732d-05e5-e911-8d06-deefc9644314",
  "kind": "theorem",
  "lexical_name": "complete_pair_of_regional_upper",
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
  "slug": "complete-pair-of-regional-upper--9312f96ce4b87628a4b4eab3",
  "source": {
    "blob": "e3b6d30ef143df89911644364df10c075b7387e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 126,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9312f96ce4b87628a4b4eab3505454f3651ef6463ea7abdc2777f50285c6c167",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edcf732d-05e5-e911-8d06-deefc9644314`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_pair_of_regional_upper (hu : count (15 : ℝ) ≤ 1) :
    ∃ z : ZeroPoint, multiplicity z = 1 ∧ z.1.re = (1 / 2 : ℝ) ∧
      heightHead (15 : ℝ) = {z, conjugatePoint z} := by
  classical
  obtain ⟨z, hzdisk, hmult, hline, _⟩ := Checks.EndpointCriticalLine.unique_simple_critical_point
  have hp := Checks.EndpointCriticalLine.positive_height hzdisk
  have hzpos : 0 < z.1.im := by linarith [hp.1]
  have hzbox : z ∈ head (15 : ℝ) := (mem_head_iff _ _).mpr
    ⟨by linarith [hline], by linarith [hline], hzpos, by linarith [hp.2]⟩
  have positive_unique (w : ZeroPoint) (hwpos : 0 < w.1.im) (hwheight : w.1.im ≤ 15) : w = z :=
    eq_of_representative_eq hline
      (unique_of_count_le_one hu hzbox (representative_in_head hwpos hwheight))
  have hzheight : height z ≤ 15 := by
    change |z.1.im| ≤ 15
    rw [abs_of_pos hzpos]
    exact hp.2.le
  refine ⟨z, hmult, hline, ?_⟩
  ext w
  constructor
  · intro hw
    have hh := (mem_heightHead (15 : ℝ) w).mp hw
    have hnz := nontrivialZetaZero_im_ne_zero w.2
    simp only [Finset.mem_insert, Finset.mem_singleton]
    rcases lt_or_gt_of_ne hnz with hneg | hpos
    · right
      have hcpos : 0 < (conjugatePoint w).1.im := by change 0 < -w.1.im; linarith
      have hcheight : (conjugatePoint w).1.im ≤ 15 := by
        change -w.1.im ≤ 15
        simpa only [height, abs_of_neg hneg] using hh
      have he := congrArg conjugatePoint (positive_unique (conjugatePoint w) hcpos hcheight)
      simpa only [conjugatePoint_involutive] using he
    · left
      apply positive_unique w hpos
      simpa only [height, abs_of_pos hpos] using hh
  · intro hw
    simp only [Finset.mem_insert, Finset.mem_singleton] at hw
    rcases hw with rfl | rfl
    · exact (mem_heightHead _ _).mpr hzheight
    · exact (mem_heightHead _ _).mpr (by simpa only [conjugate_height] using hzheight)

/-- The bounded line statement still has its regional analytic-count premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/MirrorCountingRectangle.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3b6d30ef143df89911644364df10c075b7387e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
