# abs_AplusPh_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25fe6b14-5738-bf57-2419-904adfc9c73e",
  "kind": "lemma",
  "lexical_name": "abs_AplusPh_le",
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
  "slug": "abs-aplusph-le--3581ed4aa7130ffb8ed78921",
  "source": {
    "blob": "3f951dc0e8825b99c9f30a71911a84172574dac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3581ed4aa7130ffb8ed789211eb953eecb593becca75735a47148178989c8308",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25fe6b14-5738-bf57-2419-904adfc9c73e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_AplusPh_le (hΦ : Continuous Φ) (hΦ2 : Integrable fun x => Φ x ^ 2) {y y' : ℝ}
    (hyy : 0 < y + y') (φ φ' : ℝ) :
    |AplusPh Φ T y y' φ φ'| ≤ 2 / (y + y') * ∫ x, Φ x ^ 2 := by
  unfold AplusPh
  have hne : y + y' ≠ 0 := hyy.ne'
  have hint : IntegrableOn (fun x => Φ x ^ 2 *
      Jker (y + y') (x * y - (φ + φ')) (max (T - x) T) (min (2 * T - x) (2 * T))) (Icc (-T) T) :=
    ((hΦ.pow 2).mul (continuous_Jker_offset_ph _ _ _ _)).integrableOn_Icc
  calc |∫ x in Icc (-T) T, Φ x ^ 2 *
          Jker (y + y') (x * y - (φ + φ')) (max (T - x) T) (min (2 * T - x) (2 * T))|
      ≤ ∫ x in Icc (-T) T, |Φ x ^ 2 *
          Jker (y + y') (x * y - (φ + φ')) (max (T - x) T) (min (2 * T - x) (2 * T))| :=
        abs_integral_le_integral_abs
    _ ≤ ∫ x in Icc (-T) T, Φ x ^ 2 * (2 / (y + y')) := by
        apply setIntegral_mono_on hint.abs (hΦ2.integrableOn.mul_const _) measurableSet_Icc
        intro x _
        rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
        refine mul_le_mul_of_nonneg_left ?_ (sq_nonneg _)
        have h := abs_Jker_le hne (x * y - (φ + φ')) (max (T - x) T) (min (2 * T - x) (2 * T))
        rwa [abs_of_pos hyy] at h
    _ = 2 / (y + y') * ∫ x in Icc (-T) T, Φ x ^ 2 := by rw [integral_mul_const]; ring
    _ ≤ 2 / (y + y') * ∫ x, Φ x ^ 2 := by
        apply mul_le_mul_of_nonneg_left _ (by positivity)
        exact setIntegral_le_integral hΦ2 (Filter.Eventually.of_forall fun x => sq_nonneg _)

end PhasePair

section PhaseO1
variable {Φ : ℝ → ℝ} {T : ℝ}

/-- O₁-type exact evaluation with phases (mirror of sub_mul_Aminus_eq): for θ := y − y' ≠ 0, T ≥ 0,
ψ := φ − φ':
θ·A⁻_ph(y,y',φ,φ') = [sin(θ2T−ψ)C⁻(y) + cos(θ2T−ψ)S⁻(y) − (sin(θT−ψ)C⁻(y') + cos(θT−ψ)S⁻(y'))]
                   + [sin(θ2T−ψ)C⁺(y') + cos(θ2T−ψ)S⁺(y') − (sin(θT−ψ)C⁺(y) + cos(θT−ψ)S⁺(y))]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant9b880e00bd77b9ecd4c8d5d3b49251b5c57e8ca08208f7b927176188917252fe.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f951dc0e8825b99c9f30a71911a84172574dac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
