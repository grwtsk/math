# integral_sampled_logarithmicCell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29981d89-5d90-cc0b-e3bb-483ec70b1e19",
  "kind": "theorem",
  "lexical_name": "integral_sampled_logarithmicCell",
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
  "slug": "integral-sampled-logarithmiccell--e5329ef8d34db9a21dfbdf9d",
  "source": {
    "blob": "813d381298ab1415230ce94eb10edf05338aadba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 301,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5329ef8d34db9a21dfbdf9d355d984d6ed2532975c3794d41b63fcdd9aeff20",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicPickupSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29981d89-5d90-cc0b-e3bb-483ec70b1e19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_sampled_logarithmicCell {σ : ℝ} (hσ : σ ≠ 0) (k : ℕ) :
    (∫ u in logarithmicCell k, Real.exp (-σ * u) * sampledPickup u ^ 2) =
      sampleCellMass σ k := by
  have hab : Real.log ((k : ℝ) + 1) ≤ Real.log ((k : ℝ) + 2) :=
    Real.log_le_log (by positivity) (by linarith)
  calc
    _ = ∫ u in logarithmicCell k,
        Real.exp (-σ * u) * (2 * sampleResidue (k + 1)) ^ 2 := by
      apply setIntegral_congr_fun (logarithmicCell_measurable k)
      intro u hu
      dsimp only
      rw [sampledPickup_eq_on_logarithmicCell hu]
    _ = sampleCellMass σ k := by
      unfold logarithmicCell sampleCellMass
      rw [integral_Ico_eq_integral_Ioc, ← intervalIntegral.integral_of_le hab,
        intervalIntegral.integral_mul_const, integral_exp_neg_mul σ _ _ hσ]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicPickupSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813d381298ab1415230ce94eb10edf05338aadba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
