# baseNote_energy_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d043efb7-5fee-41b2-ca06-07dcbd2cab75",
  "kind": "theorem",
  "lexical_name": "baseNote_energy_bound",
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
  "slug": "basenote-energy-bound--733fce4c942741a9d14ea8e7",
  "source": {
    "blob": "e300e722b9da7add5e68de24a3f47e5817e8412f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Moebius/PrimeFilterGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:733fce4c942741a9d14ea8e79ca029b0c22d397401595052ec69ecef1419dc4a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/PrimeFilterGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d043efb7-5fee-41b2-ca06-07dcbd2cab75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem baseNote_energy_bound {T : ℝ} (hT : 0 ≤ T) : noteEnergy baseNote T ≤ 4 * T := by
  unfold noteEnergy
  rw [max_eq_right hT]
  calc
    _ ≤ ∫ u in (0 : ℝ)..T, (4 : ℝ) := by
      apply intervalIntegral.integral_mono_on hT
        (((pickupResponse_continuous (by norm_num : 1 ≤ (1 : ℕ))).pow 2).intervalIntegrable 0 T)
        (continuous_const.intervalIntegrable _ _)
      intro u hu
      have he : exp (-u / 2) ≤ 1 := exp_le_one_iff.mpr (by linarith [hu.1])
      have hp := exp_pos (-u / 2)
      change pickupResponse 1 u ^ 2 ≤ 4
      simp only [pickupResponse, Nat.cast_one, log_one, if_pos hu.1, sqrt_one, inv_one]
      nlinarith
    _ = _ := by simp [mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/PrimeFilterGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/PrimeFilterGrowth.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e300e722b9da7add5e68de24a3f47e5817e8412f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
