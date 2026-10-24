# signedPickupLaplace_eq_part_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a71df95-9ca2-b16c-048a-3a552939d37c",
  "kind": "theorem",
  "lexical_name": "signedPickupLaplace_eq_part_difference",
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
  "slug": "signedpickuplaplace-eq-part-difference--b2d06c28c4fca36b44183e19",
  "source": {
    "blob": "e15369bb13a4de253e658c4fdd6e799c8a70dbaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Moebius/LaplaceHolomorphy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2d06c28c4fca36b44183e19a747786df3903cce01377e33bd598718c4f399b2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LaplaceHolomorphy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a71df95-9ca2-b16c-048a-3a552939d37c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedPickupLaplace_eq_part_difference (hW : Continuous wholePickup)
    (hconv : ∀ σ : ℝ, 0 < σ →
      IntegrableOn (fun u ↦ Real.exp (-σ * u) * wholePickup u) (Ioi 0))
    {z : ℂ} (hz : 0 < z.re) :
    GRWTSK.RiemannHypothesis.CCC.Laplace.transform
      id (pickupPartMeasure 1) z -
      GRWTSK.RiemannHypothesis.CCC.Laplace.transform
        id (pickupPartMeasure (-1)) z =
      signedPickupLaplace z := by
  unfold GRWTSK.RiemannHypothesis.CCC.Laplace.transform complexMGF
  simp only [id_eq]
  rw [pickupPartMeasure, pickupPartMeasure,
    integral_withDensity_eq_integral_smul (pickupPartDensity_continuous hW 1).measurable,
    integral_withDensity_eq_integral_smul (pickupPartDensity_continuous hW (-1)).measurable]
  simp only [NNReal.smul_def]
  rw [← integral_sub (pickup_part_complex_integrable hW hconv (by norm_num) hz)
      (pickup_part_complex_integrable hW hconv (by norm_num) hz)]
  apply integral_congr_ae
  apply Eventually.of_forall
  intro u
  have hparts : (pickupPartDensity 1 u : ℝ) - (pickupPartDensity (-1) u : ℝ) = wholePickup u := by
    simp only [pickupPartDensity, Real.coe_toNNReal', one_mul, neg_one_mul]
    by_cases h : 0 ≤ wholePickup u
    · rw [max_eq_left h, max_eq_right (neg_nonpos.mpr h)]
      ring
    · rw [max_eq_right (le_of_not_ge h), max_eq_left (by linarith)]
      ring
  dsimp only
  rw [← sub_smul, hparts]
  simp [Complex.real_smul, mul_comm]

/-- All-positive real tilt integrability pays signed holomorphy without an amplitude return. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LaplaceHolomorphy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LaplaceHolomorphy.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e15369bb13a4de253e658c4fdd6e799c8a70dbaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
