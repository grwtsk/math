# exists_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddb803a5-eefb-b235-b1c7-e87477b804ee",
  "kind": "theorem",
  "lexical_name": "exists_zero",
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
  "slug": "exists-zero--262bc94d0d4c3b9b413a97ab",
  "source": {
    "blob": "72d89bdb76077d55f3c532fbd673330078c251e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 153,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:262bc94d0d4c3b9b413a97abbcd2d373c3c5e6fb1776a209ccff52ee2755209e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddb803a5-eefb-b235-b1c7-e87477b804ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_zero (N : ℕ) (positive : Bool) (p : Data)
    (hv : verify N positive p = true) (hc : CenterEnclosures p) :
    ∃ z : ZeroPoint,
      ‖z.1 - QComplex.embed p.center‖ ≤ (p.radius : ℝ) ∧
      ‖z.1 - QComplex.embed p.center‖ ≤ (residualBudget p : ℝ) / (1 - (defectBudget N p : ℝ)) ∧
      deriv riemannZeta z.1 ≠ 0 ∧
      ∀ w : ZeroPoint, ‖w.1 - QComplex.embed p.center‖ ≤ (p.radius : ℝ) → w = z := by
  have hp := (verify_iff N positive p).mp hv
  have hr : (0 : ℝ) < p.radius := by exact_mod_cast hp.1.2.1
  have hev : (0 : ℝ) ≤ p.valueError := by exact_mod_cast hp.2.1
  have hed : (0 : ℝ) ≤ p.slopeError := by exact_mod_cast hp.2.2.1
  have hA : QComplex.embed p.inverse ≠ 0 := by
    have hn : (0 : ℝ) < QComplex.normSq p.inverse := by exact_mod_cast hp.2.2.2.1
    rw [QComplex.cast_normSq] at hn
    intro he
    rw [he] at hn
    norm_num at hn
  have hq0 : (0 : ℝ) ≤ (defectBudget N p : ℝ) := by
    have hq : 0 ≤ defectBudget N p := by
      unfold defectBudget QComplex.rect
      have hm := curvature_nonneg N
      have her := hp.2.2.1
      have hrr := hp.1.2.1.le
      positivity
    exact_mod_cast hq
  have hq1 : (defectBudget N p : ℝ) < 1 := by exact_mod_cast hp.2.2.2.2.1
  have hself : (residualBudget p : ℝ) + (defectBudget N p : ℝ) * (p.radius : ℝ) ≤ (p.radius : ℝ) := by
    exact_mod_cast hp.2.2.2.2.2
  have hsub := geometry_subset N positive p hp.1
  have hout : closedBall (QComplex.embed (chartCenter N positive)) (5 / 2 : ℝ) ⊆
      closedBall (QComplex.embed (chartCenter N positive)) (3 : ℝ) :=
    closedBall_subset_closedBall (by norm_num)
  have ha := (analyticOnNhd_zeta_disk N hp.1.1 _ (chartCenter_spec N positive)).mono (hsub.trans hout)
  obtain ⟨hres, hdefect⟩ := source_bounds N positive p hp hc
  obtain ⟨z, hz, hzero, hloc, huniq⟩ := exists_unique_zero riemannZeta
    (QComplex.embed p.inverse) (QComplex.embed p.center) (p.radius : ℝ)
    (defectBudget N p : ℝ) (residualBudget p : ℝ) hA hr hq0 hq1
    (fun w hw => (ha w hw).differentiableAt) hdefect hres hself
  have hnz := nontrivial_of_zero_in_disk N hp.1.1 _ z (chartCenter_spec N positive)
    (hout (hsub hz)) hzero
  refine ⟨⟨z, hnz⟩, ?_, hloc, deriv_ne_zero_of_defect _ _ _ hq1 (hdefect z hz), ?_⟩
  · simpa [mem_closedBall, dist_eq_norm] using hz
  · intro w hw
    apply Subtype.ext
    exact huniq w.1 (by simpa [mem_closedBall, dist_eq_norm] using hw) w.2.1

end GRWTSK.RiemannHypothesis.RationalNewtonWitness
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72d89bdb76077d55f3c532fbd673330078c251e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
