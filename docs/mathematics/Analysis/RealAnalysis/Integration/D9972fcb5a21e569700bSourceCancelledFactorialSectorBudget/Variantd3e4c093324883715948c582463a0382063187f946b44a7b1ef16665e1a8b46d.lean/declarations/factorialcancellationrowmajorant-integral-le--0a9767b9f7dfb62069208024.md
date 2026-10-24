# factorialCancellationRowMajorant_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cb2d7e8-9455-b516-8cdd-70c53edde4ff",
  "kind": "theorem",
  "lexical_name": "factorialCancellationRowMajorant_integral_le",
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
  "slug": "factorialcancellationrowmajorant-integral-le--0a9767b9f7dfb62069208024",
  "source": {
    "blob": "5151c0495da9d42f4f411316efe89fd103d5e5bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a9767b9f7dfb62069208024d77b60de52c4d7ba0a70cff03af1b86ab61a4fea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cb2d7e8-9455-b516-8cdd-70c53edde4ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorialCancellationRowMajorant_integral_le {d : ℝ} (hd : 1 ≤ d) :
    (∫ x in Ioi (0 : ℝ), factorialCancellationRowMajorant d x) ≤
      (60 * Real.log d ^ 2 + 640 * Real.log d + 1920) / Real.sqrt d := by
  have hdpos : 0 < d := by linarith
  have ha := Real.log_nonneg hd
  have hu := integral_mono_ae (factorialCancellationRowMajorant_integrable hd)
    (translatedFactorialMajorant_integrable hdpos) (by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
      exact translatedFactorialMajorant_le hd hx)
  unfold translatedFactorialMajorant at hu
  rw [integral_const_mul,
    integral_add (f := fun x =>
      (5 * Real.log d ^ 2 + 20 * Real.log d) * factorialAbsLogWeight 0 (x * d⁻¹) +
        (10 * Real.log d + 20) * factorialAbsLogWeight 1 (x * d⁻¹))
      (((scaled_abslog_integrable 0 hdpos).const_mul _).add
      ((scaled_abslog_integrable 1 hdpos).const_mul _))
        ((scaled_abslog_integrable 2 hdpos).const_mul _),
    integral_add (f := fun x =>
      (5 * Real.log d ^ 2 + 20 * Real.log d) * factorialAbsLogWeight 0 (x * d⁻¹))
      ((scaled_abslog_integrable 0 hdpos).const_mul _)
      ((scaled_abslog_integrable 1 hdpos).const_mul _)] at hu
  simp_rw [integral_const_mul, scaled_abslog_integral _ hdpos] at hu
  have hp : d ^ (-(3 : ℝ) / 2) * d = (Real.sqrt d)⁻¹ := by
    rw [Real.sqrt_eq_rpow, ← Real.rpow_neg hdpos.le]
    calc
      d ^ (-(3 : ℝ) / 2) * d = d ^ (-(3 : ℝ) / 2) * d ^ (1 : ℝ) := by
        rw [Real.rpow_one]
      _ = d ^ (-(3 : ℝ) / 2 + 1) := (Real.rpow_add hdpos _ _).symm
      _ = _ := by norm_num
  have h0 := factorialAbsLogMoment_first_three.1
  have h1 := factorialAbsLogMoment_first_three.2.1
  have h2 := factorialAbsLogMoment_first_three.2.2
  calc
    _ ≤ d ^ (-(3 : ℝ) / 2) *
        ((5 * Real.log d ^ 2 + 20 * Real.log d) * (d * factorialAbsLogMoment 0) +
          (10 * Real.log d + 20) * (d * factorialAbsLogMoment 1) +
            5 * (d * factorialAbsLogMoment 2)) := hu
    _ ≤ d ^ (-(3 : ℝ) / 2) *
        ((5 * Real.log d ^ 2 + 20 * Real.log d) * (d * 12) +
          (10 * Real.log d + 20) * (d * 40) + 5 * (d * 224)) := by gcongr
    _ = _ := by
      calc
        _ = (d ^ (-(3 : ℝ) / 2) * d) *
            (60 * Real.log d ^ 2 + 640 * Real.log d + 1920) := by ring
        _ = _ := by rw [hp]; ring


/-- Full actual absolute Moebius cutoff majorant, used only for the cancelled F sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5151c0495da9d42f4f411316efe89fd103d5e5bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
