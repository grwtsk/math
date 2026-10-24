# thetaADerivSeries_norm_le_superexp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ca27fb4-096d-748c-8b10-fb0268aa49e8",
  "kind": "theorem",
  "lexical_name": "thetaADerivSeries_norm_le_superexp",
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
  "slug": "thetaaderivseries-norm-le-superexp--745cb1c620a3788e05a68c62",
  "source": {
    "blob": "638e99b8eec7abd7ff95b51125676c4b465db5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:745cb1c620a3788e05a68c62c65345b3726cdf7cdd87f02fc39cfbae0519d048",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca27fb4-096d-748c-8b10-fb0268aa49e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaADerivSeries_norm_le_superexp {t : ℝ} (ht : 0 ≤ t) :
    ‖thetaADerivSeries t‖ ≤
      thetaADerivDecayConstant *
        Real.exp (5 * t - (Real.pi / 2) * Real.exp (4 * t)) := by
  rw [thetaADerivSeries_eq_F_nat]
  refine (norm_sub_le _ _).trans ?_
  have hF0 :
      0 ≤ HurwitzKernelBounds.F_nat 0 1 (Real.exp (4 * t)) :=
    hurwitzF_nat_nonnegative 0 _
  have hF2 :
      0 ≤ HurwitzKernelBounds.F_nat 2 1 (Real.exp (4 * t)) :=
    hurwitzF_nat_nonnegative 2 _
  rw [Real.norm_of_nonneg
      (mul_nonneg (Real.exp_pos _).le hF0),
    Real.norm_of_nonneg
      (mul_nonneg
        (mul_nonneg
          (mul_nonneg (by norm_num) Real.pi_pos.le)
          (Real.exp_pos _).le) hF2)]
  have he15 : Real.exp t ≤ Real.exp (5 * t) := by
    apply Real.exp_le_exp.mpr
    linarith
  have h0 := F_nat_le_half_split 0 ht
  have h2 := F_nat_le_half_split 2 ht
  calc
    Real.exp t * HurwitzKernelBounds.F_nat 0 1 (Real.exp (4 * t)) +
        (4 * Real.pi * Real.exp (5 * t)) *
          HurwitzKernelBounds.F_nat 2 1 (Real.exp (4 * t))
      ≤ Real.exp (5 * t) *
            (Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
              HurwitzKernelBounds.F_nat 0 1 (1 / 2)) +
          (4 * Real.pi * Real.exp (5 * t)) *
            (Real.exp (-(Real.pi / 2) * Real.exp (4 * t)) *
              HurwitzKernelBounds.F_nat 2 1 (1 / 2)) := by
        apply add_le_add
        · exact mul_le_mul he15 h0 hF0 (Real.exp_pos _).le
        · exact mul_le_mul_of_nonneg_left h2 (by positivity)
    _ = thetaADerivDecayConstant *
        Real.exp (5 * t - (Real.pi / 2) * Real.exp (4 * t)) := by
      unfold thetaADerivDecayConstant
      rw [sub_eq_add_neg, Real.exp_add]
      ring

/-- Every fixed linear exponent is eventually dominated by the
superexponential Gaussian debt. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant600127ea8e10566253f3f23ca0df43851701344c9cbf90f0e3487ae4ad836338.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638e99b8eec7abd7ff95b51125676c4b465db5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
