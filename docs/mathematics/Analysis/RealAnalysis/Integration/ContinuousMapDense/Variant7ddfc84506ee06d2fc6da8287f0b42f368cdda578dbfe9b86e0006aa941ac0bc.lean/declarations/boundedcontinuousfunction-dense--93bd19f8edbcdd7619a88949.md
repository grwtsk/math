# boundedContinuousFunction_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84f1b747-86fe-a744-ad68-257a9c79cec1",
  "kind": "theorem",
  "lexical_name": "boundedContinuousFunction_dense",
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
  "slug": "boundedcontinuousfunction-dense--93bd19f8edbcdd7619a88949",
  "source": {
    "blob": "42e34c708789a0e6253a72c3fe0cad5f477eeb70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 336,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93bd19f8edbcdd7619a889495a54e5183a4641e999df8b84fa5de3c28ff701c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84f1b747-86fe-a744-ad68-257a9c79cec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundedContinuousFunction_dense [SecondCountableTopologyEither α E] [_i : Fact (1 ≤ p)]
    (hp : p ≠ ∞) [μ.WeaklyRegular] : (boundedContinuousFunction E p μ).topologicalClosure = ⊤ := by
  rw [AddSubgroup.eq_top_iff']
  intro f
  refine' mem_closure_iff_frequently.mpr _
  rw [Metric.nhds_basis_closedBall.frequently_iff]
  intro ε hε
  have A : ENNReal.ofReal ε ≠ 0 := by simp only [Ne.def, ENNReal.ofReal_eq_zero, not_le, hε]
  obtain ⟨g, hg, g_mem⟩ :
      ∃ g : α →ᵇ E, snorm ((f : α → E) - (g : α → E)) p μ ≤ ENNReal.ofReal ε ∧ Memℒp g p μ :=
    (Lp.memℒp f).exists_boundedContinuous_snorm_sub_le hp A
  refine' ⟨g_mem.toLp _, _, ⟨g, rfl⟩⟩
  simp only [dist_eq_norm, Metric.mem_closedBall']
  rw [Lp.norm_def]
  -- porting note: original proof started with:
  -- convert ENNReal.toReal_le_of_le_ofReal hε.le hg using 2
  -- the `convert` was completely borked and timed out
  have key : snorm ((f : α → E) - (g : α → E)) p μ = snorm (f - Memℒp.toLp (↑g) g_mem) p μ := by
    apply snorm_congr_ae
    filter_upwards [coeFn_sub f (g_mem.toLp g), g_mem.coeFn_toLp] with x hx h'x
    simp only [hx, Pi.sub_apply, sub_right_inj, h'x]
  simpa only [key] using ENNReal.toReal_le_of_le_ofReal hε.le hg
set_option linter.uppercaseLean3 false in
#align measure_theory.Lp.bounded_continuous_function_dense MeasureTheory.Lp.boundedContinuousFunction_dense

end Lp

end MeasureTheory

variable [SecondCountableTopologyEither α E] [_i : Fact (1 ≤ p)] (hp : p ≠ ∞)

variable (𝕜 : Type*) [NormedField 𝕜] [NormedAlgebra ℝ 𝕜] [NormedSpace 𝕜 E]

variable (E) (μ)

namespace BoundedContinuousFunction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42e34c708789a0e6253a72c3fe0cad5f477eeb70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
