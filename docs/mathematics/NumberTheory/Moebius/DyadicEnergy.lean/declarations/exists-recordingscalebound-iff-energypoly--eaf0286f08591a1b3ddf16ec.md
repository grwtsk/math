# exists_recordingScaleBound_iff_energyPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4869cb14-ba2d-0abf-a046-32de06fd548d",
  "kind": "theorem",
  "lexical_name": "exists_recordingScaleBound_iff_energyPoly",
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
  "slug": "exists-recordingscalebound-iff-energypoly--eaf0286f08591a1b3ddf16ec",
  "source": {
    "blob": "9bd9ace9794e4369974f39c242ad2ab9b04d368f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 179,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaf0286f08591a1b3ddf16ecb87270b49b8c2a6cdae731209086af7418a3564c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4869cb14-ba2d-0abf-a046-32de06fd548d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_recordingScaleBound_iff_energyPoly :
    (∃ C : ℝ, ∃ r : ℕ, 0 ≤ C ∧ RecordingScaleBound C r) ↔ PickupEnergyPoly := by
  constructor
  · rintro ⟨C,r,hC,h⟩
    exact pickupEnergyPoly_of_recordingScaleBound hC h
  · rintro ⟨A,q,hA,_,hb⟩
    let r := ⌈q⌉₊
    let C := A*(3:ℝ)^r
    refine ⟨C,r,by positivity,?_⟩
    intro T hT
    have hT0 : 0 ≤ T := by linarith
    have hE := pickupEnergy_nonneg hT0
    have hI : recordingInnovation T ≤ pickupEnergy (2*T) := by
      rw [pickupEnergy_double_eq hT0]
      linarith
    have hq : (1+2*T)^q ≤ (1+2*T)^(r:ℝ) :=
      Real.rpow_le_rpow_of_exponent_le (by linarith) (Nat.le_ceil q)
    rw [Real.rpow_natCast] at hq
    have hp := pow_le_pow_left₀ (by linarith : 0 ≤ 1+2*T)
      (show 1+2*T ≤ 3*T by linarith) r
    have hmain : recordingInnovation T ≤ C*T^r := by
      calc
        _ ≤ pickupEnergy (2*T) := hI
        _ ≤ A*(1+2*T)^q := hb (2*T) (by linarith)
        _ ≤ A*(1+2*T)^r := mul_le_mul_of_nonneg_left hq hA
        _ ≤ A*(3*T)^r := mul_le_mul_of_nonneg_left hp hA
        _ = _ := by rw [mul_pow]; dsimp [C]; ring
    have hC : 0 ≤ C := by positivity
    have h2 : (1:ℝ) ≤ 2^r := one_le_pow₀ (by norm_num)
    have h2' : (1:ℝ) ≤ 2^(r+1) := one_le_pow₀ (by norm_num)
    have hcost : C*T^r ≤ C*(2:ℝ)^r*T^r := by
      nlinarith [mul_nonneg hC (pow_nonneg hT0 r)]
    have hbase : 0 ≤ ((2:ℝ)^(r+1)-1)*pickupEnergy T :=
      mul_nonneg (by linarith) hE
    exact hmain.trans (by linarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicEnergy.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd9ace9794e4369974f39c242ad2ab9b04d368f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
