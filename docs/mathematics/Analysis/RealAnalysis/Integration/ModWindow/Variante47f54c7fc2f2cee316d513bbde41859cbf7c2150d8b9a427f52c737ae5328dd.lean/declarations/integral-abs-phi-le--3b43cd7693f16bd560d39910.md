# integral_abs_phi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50ca65a6-c597-aa36-57e0-090a7fffea1c",
  "kind": "theorem",
  "lexical_name": "integral_abs_phi_le",
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
  "slug": "integral-abs-phi-le--3b43cd7693f16bd560d39910",
  "source": {
    "blob": "313e0cb80f1a74a85dd7cbd1254688b4d0d64763",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 336,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b43cd7693f16bd560d39910dd6331c6091b8fd8005dc249f7fec95909ef2c10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50ca65a6-c597-aa36-57e0-090a7fffea1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_phi_le (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    ∫ u, |Taper.phi ϱ L w u| ≤ L := by
  have hL : 0 < L := by linarith
  have heq : ∫ u, |Taper.phi ϱ L w u| = ∫ u in Icc (-(L / 2)) (L / 2), |Taper.phi ϱ L w u| := by
    refine (setIntegral_eq_integral_of_forall_compl_eq_zero fun u hu => ?_).symm
    rw [mem_Icc, not_and_or, not_le, not_le] at hu
    have habs : L / 2 ≤ |u| := by
      rcases hu with h | h
      · linarith [neg_le_abs u]
      · linarith [le_abs_self u]
    rw [Taper.phi_eq_zero hϱ hw habs, abs_zero]
  rw [heq]
  calc ∫ u in Icc (-(L / 2)) (L / 2), |Taper.phi ϱ L w u|
      ≤ ∫ u in Icc (-(L / 2)) (L / 2), (1:ℝ) := by
        refine setIntegral_mono_on ?_ (by simp) measurableSet_Icc fun u _ => ?_
        · exact ((Taper.phi_continuous hϱ hw hwL).abs.integrableOn_Icc)
        · rw [abs_of_nonneg (Taper.phi_nonneg hϱ u)]; exact Taper.phi_le_one hϱ u
    _ = L := by
        rw [setIntegral_const, smul_eq_mul, mul_one, Measure.real, Real.volume_Icc,
          ENNReal.toReal_ofReal (by linarith)]
        ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `313e0cb80f1a74a85dd7cbd1254688b4d0d64763` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
