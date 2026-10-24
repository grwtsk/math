# original_pickup_laplace_zeta_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03932ac1-1abd-be54-5a02-668fef854b42",
  "kind": "theorem",
  "lexical_name": "original_pickup_laplace_zeta_identity",
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
  "slug": "original-pickup-laplace-zeta-identity--4b8cee70889f4eae95fbfed1",
  "source": {
    "blob": "bf694380e233e32eeb49979931e72540d598cfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 247,
    "path": "GRWTSK/NumberTheory/Moebius/LaplaceDirichletSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b8cee70889f4eae95fbfed1e1fcbc2a0ce5f379116c78f9e7001af55e1188e3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LaplaceDirichletSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03932ac1-1abd-be54-5a02-668fef854b42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_pickup_laplace_zeta_identity {z : ℂ} (hz : 1 / 2 < z.re) :
    z * (z + 1 / 2) * riemannZeta (z + 1 / 2) *
      (∫ t : ℝ in Ioi 0, Complex.exp (-z * (t : ℂ)) * (pickup t : ℂ)) = 1 := by
  have positive : 0 < z.re := by linarith
  have shiftPositive : 0 < (z + 1 / 2).re := by
    simp only [Complex.add_re]
    norm_num
    linarith
  have seriesDomain : 1 < (z + 1 / 2).re := by
    simp only [Complex.add_re]
    norm_num
    linarith
  have zNonzero : z ≠ 0 := by
    intro zero
    rw [zero] at positive
    norm_num at positive
  have shiftNonzero : z + 1 / 2 ≠ 0 := by
    intro zero
    rw [zero] at shiftPositive
    norm_num at shiftPositive
  have denominatorNonzero : z * (z + 1 / 2) ≠ 0 := mul_ne_zero zNonzero shiftNonzero
  rw [original_pickup_laplace_integral_eq_LSeries hz]
  calc
    _ = riemannZeta (z + 1 / 2) *
        LSeries (fun n ↦ (moebiusCoefficient n : ℂ)) (z + 1 / 2) := by
      calc
        _ = riemannZeta (z + 1 / 2) * (z * (z + 1 / 2) *
            (LSeries (fun n ↦ (moebiusCoefficient n : ℂ)) (z + 1 / 2) /
              (z * (z + 1 / 2)))) := by ring
        _ = _ := by rw [mul_div_cancel₀ _ denominatorNonzero]
    _ = 1 := native_moebius_series_zeta_identity seriesDomain

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupLaplaceInfinite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LaplaceDirichletSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LaplaceDirichletSeries.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf694380e233e32eeb49979931e72540d598cfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
