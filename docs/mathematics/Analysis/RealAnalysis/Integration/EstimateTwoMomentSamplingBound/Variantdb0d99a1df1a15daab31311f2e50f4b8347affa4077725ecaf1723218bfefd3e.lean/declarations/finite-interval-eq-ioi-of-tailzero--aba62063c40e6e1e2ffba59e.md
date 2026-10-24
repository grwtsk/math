# finite_interval_eq_Ioi_of_tailZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d8e2d05-dc1c-3e28-6aac-48987c7ae85f",
  "kind": "theorem",
  "lexical_name": "finite_interval_eq_Ioi_of_tailZero",
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
  "slug": "finite-interval-eq-ioi-of-tailzero--aba62063c40e6e1e2ffba59e",
  "source": {
    "blob": "47254b066532e3813be15b87e1c016d94e0bb0d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 451,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aba62063c40e6e1e2ffba59e100f74bdaba5768e7aed658e36ac693b64af6c31",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d8e2d05-dc1c-3e28-6aac-48987c7ae85f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_interval_eq_Ioi_of_tailZero
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (N : ℕ)
    (hTail : SamplingTailZero F x N) :
    (∫ u in (1 : ℝ)..(N + 1 : ℝ),
      logSamplingTerm F x u) =
      ∫ u in Ioi (1 : ℝ),
        logSamplingTerm F x u := by
  have hle : (1 : ℝ) ≤ N + 1 := by norm_num
  have hinterval :=
    logSamplingTerm_intervalIntegrable
      hF hx zero_lt_one hle
  have hIoc :
      IntegrableOn
        (logSamplingTerm F x)
        (Ioc (1 : ℝ) (N + 1)) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hle).1
      hinterval
  have htailInt :
      IntegrableOn
        (logSamplingTerm F x)
        (Ioi (N + 1 : ℝ)) := by
    exact IntegrableOn.congr_fun
      integrableOn_zero
      (fun u hu => by
        symm
        exact hTail u hu)
      measurableSet_Ioi
  rw [intervalIntegral.integral_of_le hle]
  rw [← Ioc_union_Ioi_eq_Ioi hle,
    setIntegral_union Ioc_disjoint_Ioi_same
      measurableSet_Ioi hIoc htailInt]
  have htailZero : (∫ u in Ioi (N + 1 : ℝ), logSamplingTerm F x u) = 0 :=
    setIntegral_eq_zero_of_forall_eq_zero (fun u hu => hTail u hu)
  rw [htailZero, add_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47254b066532e3813be15b87e1c016d94e0bb0d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
