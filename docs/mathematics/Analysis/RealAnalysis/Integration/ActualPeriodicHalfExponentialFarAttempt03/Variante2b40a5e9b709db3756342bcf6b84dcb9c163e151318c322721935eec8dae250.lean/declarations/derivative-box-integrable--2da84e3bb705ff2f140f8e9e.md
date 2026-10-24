# derivative_box_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:329d441d-dc0d-2bb5-7967-4367f371f216",
  "kind": "theorem",
  "lexical_name": "derivative_box_integrable",
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
  "slug": "derivative-box-integrable--2da84e3bb705ff2f140f8e9e",
  "source": {
    "blob": "90ba184561589999c627f08c65de651fe8f8e644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt03/Variante2b40a5e9b709db3756342bcf6b84dcb9c163e151318c322721935eec8dae250.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2da84e3bb705ff2f140f8e9e953bbb176e4775a356105d5bb155c7c01e21f53c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt03/Variante2b40a5e9b709db3756342bcf6b84dcb9c163e151318c322721935eec8dae250.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:329d441d-dc0d-2bb5-7967-4367f371f216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem derivative_box_integrable {A v b l r : ℝ} (hA : 0 < A)
    (hv : 0 < v) (hvb : v ≤ b) (hlr : l ≤ r) :
    Integrable (fun p : ℝ × ℝ => |deriv (actualPeriodicPhysicalCellProfile A p.1) p.2|)
      ((volume.restrict (Ioc l r)).prod (volume.restrict (Ioc v b))) := by
  let F : ℝ × ℝ → ℝ := fun p =>
    |Real.exp (p.1 / 2) * Real.exp (-Real.log (max v p.2) / 2) *
      actualPeriodicTransportJet A (p.1 + Real.log (max v p.2)) / (max v p.2) ^ 2|
  have hx (p : ℝ × ℝ) : 0 < max v p.2 := hv.trans_le (le_max_left _ _)
  have hl : Continuous (fun p : ℝ × ℝ => Real.log (max v p.2)) :=
    (continuous_const.max continuous_snd).log (fun p => (hx p).ne')
  have h1 := jet_continuous hA 1 (by norm_num)
  have h2 := jet_continuous hA 2 (by norm_num)
  have h3 := jet_continuous hA 3 (by norm_num)
  have h4 := jet_continuous hA 4 (by norm_num)
  have hF : Continuous F := by
    dsimp only [F]
    have hz := continuous_fst.add hl
    have hJ : Continuous (fun p : ℝ × ℝ =>
        actualPeriodicTransportJet A (p.1 + Real.log (max v p.2))) := by
      unfold actualPeriodicTransportJet
      exact (((h4.comp hz).sub ((h3.comp hz).const_mul (3 / 2 : ℝ))).sub
        ((h2.comp hz).div_const 4)).add ((h1.comp hz).const_mul (3 / 8 : ℝ))
    have hn := ((Real.continuous_exp.comp (continuous_fst.div_const (2 : ℝ))).mul
      (Real.continuous_exp.comp (hl.neg.div_const 2))).mul hJ
    exact (hn.div ((continuous_const.max continuous_snd).pow 2)
      (fun p => (pow_pos (hx p) 2).ne')).abs
  have hi : IntegrableOn F (Icc l r ×ˢ Icc v b) (volume.prod volume) :=
    hF.continuousOn.integrableOn_compact (isCompact_Icc.prod isCompact_Icc)
  rw [Measure.prod_restrict]
  apply (hi.mono_set (fun p hp => ⟨⟨hp.1.1.le, hp.1.2⟩, ⟨hp.2.1.le, hp.2.2⟩⟩)).congr
  filter_upwards [ae_restrict_mem (measurableSet_Ioc.prod measurableSet_Ioc)] with p hp
  dsimp only [F]
  rw [max_eq_right hp.2.1.le,
    actualPeriodicPhysicalCellProfile_deriv hA (hv.trans hp.2.1) p.1,
    actualPeriodicTransportKernel_eq hA p.1 (Real.log p.2)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt03/Variante2b40a5e9b709db3756342bcf6b84dcb9c163e151318c322721935eec8dae250.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt03/Variante2b40a5e9b709db3756342bcf6b84dcb9c163e151318c322721935eec8dae250.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90ba184561589999c627f08c65de651fe8f8e644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
