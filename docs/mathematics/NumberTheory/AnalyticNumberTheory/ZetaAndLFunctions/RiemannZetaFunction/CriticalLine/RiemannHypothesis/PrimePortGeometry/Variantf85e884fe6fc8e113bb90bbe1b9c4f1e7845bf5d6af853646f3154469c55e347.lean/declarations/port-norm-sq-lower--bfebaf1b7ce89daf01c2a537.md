# port_norm_sq_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b3d283a-d229-d718-d108-07913cee83cf",
  "kind": "theorem",
  "lexical_name": "port_norm_sq_lower",
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
  "slug": "port-norm-sq-lower--bfebaf1b7ce89daf01c2a537",
  "source": {
    "blob": "70c6f020b36694bbb14ff09df24adfac4f5b0687",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 125,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variantf85e884fe6fc8e113bb90bbe1b9c4f1e7845bf5d6af853646f3154469c55e347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfebaf1b7ce89daf01c2a53793faecc7e3d3ecf6a5e35a2101eca6f3e67f4a87",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variantf85e884fe6fc8e113bb90bbe1b9c4f1e7845bf5d6af853646f3154469c55e347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b3d283a-d229-d718-d108-07913cee83cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem port_norm_sq_lower {ρ η : ℂ} (hρ : ρ.re ≤ 1) (hη : η.re ≤ 1) :
    (1 / 3 : ℝ) * logLength ^ 2 * |ρ.re - η.re| ^ 2 +
      (1 / 3 : ℝ) * phaseDistance ρ.im η.im ^ 2 ≤ ‖port ρ - port η‖ ^ 2 := by
  have hs := Finset.sum_le_sum
    (fun p (_hp : p ∈ (Finset.univ : Finset (Fin 2))) => port_coordinate_lower p hρ hη)
  have hL : logLength ^ 2 = (Real.log 2) ^ 2 + (Real.log 3) ^ 2 :=
    Real.sq_sqrt (add_nonneg (sq_nonneg _) (sq_nonneg _))
  have hright : (∑ p : Fin 2, ‖port ρ p - port η p‖ ^ 2) = ‖port ρ - port η‖ ^ 2 :=
    (EuclideanSpace.norm_sq_eq (port ρ - port η)).symm
  rw [hright] at hs
  have hleft : (∑ p : Fin 2, ((radialFloor * primeLog p * |ρ.re - η.re|) ^ 2 +
      radialFloor ^ 2 * ‖phase ρ.im p - phase η.im p‖ ^ 2)) =
      (1 / 3 : ℝ) * logLength ^ 2 * |ρ.re - η.re| ^ 2 +
        (1 / 3 : ℝ) * phaseDistance ρ.im η.im ^ 2 := by
    rw [Finset.sum_add_distrib]
    simp only [mul_pow, radialFloor_sq]
    rw [← Finset.mul_sum]
    have hphase : (∑ p : Fin 2, ‖phase ρ.im p - phase η.im p‖ ^ 2) =
        phaseDistance ρ.im η.im ^ 2 := (EuclideanSpace.norm_sq_eq (phase ρ.im - phase η.im)).symm
    rw [hphase]
    change (∑ p : Fin 2, (1 / 3 : ℝ) * primeLog p ^ 2 * |ρ.re - η.re| ^ 2) +
      (1 / 3 : ℝ) * phaseDistance ρ.im η.im ^ 2 = _
    rw [hL, Fin.sum_univ_two]
    rw [show primeLog 0 = Real.log 2 from rfl, show primeLog 1 = Real.log 3 from rfl]
    ring
  rwa [hleft] at hs

/-- A supplied lower phase gain controls the joint horizontal/vertical port. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variantf85e884fe6fc8e113bb90bbe1b9c4f1e7845bf5d6af853646f3154469c55e347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variantf85e884fe6fc8e113bb90bbe1b9c4f1e7845bf5d6af853646f3154469c55e347.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70c6f020b36694bbb14ff09df24adfac4f5b0687` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
