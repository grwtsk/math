# ext_of_forall_mem_subalgebra_integral_eq_of_pseudoEMetric_complete_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac64a285-27cf-01f9-313a-979cc9a2a17f",
  "kind": "theorem",
  "lexical_name": "ext_of_forall_mem_subalgebra_integral_eq_of_pseudoEMetric_complete_countable",
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
  "slug": "ext-of-forall-mem-subalgebra-integral-eq-of-pseudoemetric-complete-count--4b7fd685e21b1f8ec16090ac",
  "source": {
    "blob": "5c41a699c312749c113bc7d009ef7fbaeda2357a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b7fd685e21b1f8ec16090aca015c5cc983240ea19a27c2ded7ebb8c053192d4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac64a285-27cf-01f9-313a-979cc9a2a17f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_of_forall_mem_subalgebra_integral_eq_of_pseudoEMetric_complete_countable
    [PseudoEMetricSpace E] [BorelSpace E] [CompleteSpace E] [SecondCountableTopology E]
    {P P' : Measure E} [IsFiniteMeasure P] [IsFiniteMeasure P']
    {A : StarSubalgebra 𝕜 (E →ᵇ 𝕜)} (hA : (A.map (toContinuousMapStarₐ 𝕜)).SeparatesPoints)
    (heq : ∀ g ∈ A, ∫ x, (g : E → 𝕜) x ∂P = ∫ x, (g : E → 𝕜) x ∂P') : P = P' := by
  --consider the real subalgebra of the purely real-valued elements of A
  let A_toReal := (A.restrictScalars ℝ).comap
    (ofRealAm.compLeftContinuousBounded ℝ lipschitzWith_ofReal)
  --the real subalgebra separates points
  have hA_toReal : (A_toReal.map (toContinuousMapₐ ℝ)).SeparatesPoints := by
    rw [RCLike.restrict_toContinuousMap_eq_toContinuousMapStar_restrict]
    exact Subalgebra.SeparatesPoints.rclike_to_real hA
  --integrals of elements of the real subalgebra wrt P, P', respectively, coincide
  have heq' : ∀ g ∈ A_toReal, ∫ x, (g : E → ℝ) x ∂P = ∫ x, (g : E → ℝ) x ∂P' := by
    intro g hgA_toReal
    rw [← @ofReal_inj 𝕜, ← integral_ofReal, ← integral_ofReal]
    exact heq _ hgA_toReal
  apply ext_of_forall_integral_eq_of_IsFiniteMeasure
  intro f
  have h0 : Tendsto (fun ε : ℝ => 6 * √ε) (𝓝[>] 0) (𝓝 0) := by
    nth_rewrite 3 [← mul_zero 6]
    apply tendsto_nhdsWithin_of_tendsto_nhds (Tendsto.const_mul 6 _)
    nth_rewrite 2 [← sqrt_zero]
    exact Continuous.tendsto continuous_sqrt 0
  have lim1 : Tendsto (fun ε => |∫ x, mulExpNegMulSq ε (f x) ∂P - ∫ x, mulExpNegMulSq ε (f x) ∂P'|)
      (𝓝[>] 0) (𝓝 0) := by
    apply squeeze_zero' (eventually_nhdsWithin_of_forall (fun x _ => abs_nonneg _))
      (eventually_nhdsWithin_of_forall _) h0
    exact fun ε hε => dist_integral_mulExpNegMulSq_comp_le f hA_toReal heq' hε
  have lim2 : Tendsto (fun ε => |∫ x, mulExpNegMulSq ε (f x) ∂P
      - ∫ x, mulExpNegMulSq ε (f x) ∂P'|) (𝓝[>] 0)
      (𝓝 |∫ x, f x ∂↑P - ∫ x, f x ∂↑P'|) :=
    Tendsto.abs (Tendsto.sub (tendsto_integral_mulExpNegMulSq_comp f)
      (tendsto_integral_mulExpNegMulSq_comp f))
  exact eq_of_abs_sub_eq_zero (tendsto_nhds_unique lim2 lim1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiniteMeasureExt/Variant664f35fa0b6d54f6922e8e3d4a2f7ef38f9f04619f658ebe916a9bf28c45f3e5.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c41a699c312749c113bc7d009ef7fbaeda2357a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
