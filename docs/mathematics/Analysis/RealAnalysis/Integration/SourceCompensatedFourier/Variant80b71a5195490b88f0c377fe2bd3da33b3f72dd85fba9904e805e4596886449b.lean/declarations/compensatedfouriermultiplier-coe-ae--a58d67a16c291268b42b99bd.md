# compensatedFourierMultiplier_coe_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88dc9956-dc82-0d33-0724-ccc8af1735a0",
  "kind": "theorem",
  "lexical_name": "compensatedFourierMultiplier_coe_ae",
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
  "slug": "compensatedfouriermultiplier-coe-ae--a58d67a16c291268b42b99bd",
  "source": {
    "blob": "9b9131602905029d67b5926c129e76f07a0b4d11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant80b71a5195490b88f0c377fe2bd3da33b3f72dd85fba9904e805e4596886449b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a58d67a16c291268b42b99bd38741e8e9c85e918e623cbac07559e7e3860826b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant80b71a5195490b88f0c377fe2bd3da33b3f72dd85fba9904e805e4596886449b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88dc9956-dc82-0d33-0724-ccc8af1735a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedFourierMultiplier_coe_ae (A : ℝ) (f : ComplexL2) :
    compensatedFourierMultiplier A f =ᵐ[volume]
      fun ξ => (compensatedFourierSymbol A ξ : ℂ) * f ξ := by
  let S := primePowerInventory (2 * A)
  have hterms : ∀ᵐ ξ ∂volume, ∀ n ∈ S,
      ((compensatedCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f) ξ =
        (compensatedCoefficient n : ℂ) *
          (Real.cos (2 * Real.pi * ξ * Real.log n) : ℂ) * f ξ := by
    apply (Filter.eventually_all_finset S).mpr
    intro n _
    filter_upwards [Lp.coeFn_smul (compensatedCoefficient n : ℂ)
      (symmetricPhaseMultiplier (Real.log n) f),
      symmetricPhaseMultiplier_coe_ae (Real.log n) f] with ξ hs hc
    simp only [Pi.smul_apply, smul_eq_mul] at hs
    rw [hs, hc]
    ring
  filter_upwards [Lp.coeFn_fun_finsetSum S (fun n =>
    (compensatedCoefficient n : ℂ) • symmetricPhaseMultiplier (Real.log n) f), hterms]
    with ξ hs ht
  rw [compensatedFourierMultiplier_apply]
  change (∑ n ∈ S, (compensatedCoefficient n : ℂ) •
    symmetricPhaseMultiplier (Real.log n) f) ξ = _
  rw [hs]
  simp only [compensatedFourierSymbol, Complex.ofReal_sum, Complex.ofReal_mul,
    Finset.sum_mul]
  exact Finset.sum_congr rfl ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant80b71a5195490b88f0c377fe2bd3da33b3f72dd85fba9904e805e4596886449b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCompensatedFourier/Variant80b71a5195490b88f0c377fe2bd3da33b3f72dd85fba9904e805e4596886449b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9131602905029d67b5926c129e76f07a0b4d11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
