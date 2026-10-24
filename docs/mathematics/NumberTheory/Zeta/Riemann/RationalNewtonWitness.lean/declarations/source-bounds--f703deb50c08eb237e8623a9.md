# source_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9430fb27-38fd-69d4-e93e-d1baf9798a99",
  "kind": "theorem",
  "lexical_name": "source_bounds",
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
  "slug": "source-bounds--f703deb50c08eb237e8623a9",
  "source": {
    "blob": "72d89bdb76077d55f3c532fbd673330078c251e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 114,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f703deb50c08eb237e8623a9bed00c627aaf8284170d1f05c1bf9fc9d8bfa75b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9430fb27-38fd-69d4-e93e-d1baf9798a99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_bounds (N : ℕ) (positive : Bool) (p : Data)
    (hp : Admissible N positive p) (hc : CenterEnclosures p) :
    ‖QComplex.embed p.inverse * riemannZeta (QComplex.embed p.center)‖ ≤ (residualBudget p : ℝ) ∧
      ∀ z ∈ closedBall (QComplex.embed p.center) (p.radius : ℝ),
        ‖1 - QComplex.embed p.inverse * deriv riemannZeta z‖ ≤ (defectBudget N p : ℝ) := by
  have hr : (0 : ℝ) ≤ p.radius := le_of_lt (by exact_mod_cast hp.1.2.1)
  have hev : (0 : ℝ) ≤ p.valueError := by exact_mod_cast hp.2.1
  have hed : (0 : ℝ) ≤ p.slopeError := by exact_mod_cast hp.2.2.1
  have hM : (0 : ℝ) ≤ curvature N := by exact_mod_cast curvature_nonneg N
  have hsub := geometry_subset N positive p hp.1
  have hout : closedBall (QComplex.embed (chartCenter N positive)) (5 / 2 : ℝ) ⊆
      closedBall (QComplex.embed (chartCenter N positive)) (3 : ℝ) :=
    closedBall_subset_closedBall (by norm_num)
  have ha := (analyticOnNhd_zeta_disk N hp.1.1 _ (chartCenter_spec N positive)).mono (hsub.trans hout)
  have hsecond : ∀ z ∈ closedBall (QComplex.embed p.center) (p.radius : ℝ),
      ‖deriv (deriv riemannZeta) z‖ ≤ (curvature N : ℝ) := by
    intro z hz
    simpa [curvature] using norm_zeta_second_le N hp.1.1 _ z (chartCenter_spec N positive) (hsub hz)
  have hb := center_enclosure_bounds riemannZeta (QComplex.embed p.inverse)
    (QComplex.embed p.center) (QComplex.embed p.value) (QComplex.embed p.slope)
    (p.radius : ℝ) (curvature N : ℝ) (p.valueError : ℝ) (p.slopeError : ℝ)
    hr hM ha hsecond hc.1 hc.2
  constructor
  · refine hb.1.trans ?_
    have h := mul_le_mul (norm_le_rectNorm (QComplex.embed p.inverse))
      (add_le_add_right (norm_le_rectNorm (QComplex.embed p.value)) (p.valueError : ℝ))
      (by positivity) (rectNorm_nonneg (QComplex.embed p.inverse))
    simpa [residualBudget, add_comm] using h
  · intro z hz
    refine (hb.2 z hz).trans ?_
    have hA := mul_le_mul_of_nonneg_right (norm_le_rectNorm (QComplex.embed p.inverse))
      (show (0 : ℝ) ≤ (p.slopeError : ℝ) + (curvature N : ℝ) * (p.radius : ℝ) by positivity)
    have hD := norm_le_rectNorm
      (QComplex.embed (QComplex.sub QComplex.one (QComplex.mul p.inverse p.slope)))
    have h := add_le_add hD hA
    simpa [defectBudget] using h

/-- A genuine local zero is produced from center enclosures and finite tests.
No local-zero premise or all-disk derivative supplier remains in this theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalNewtonWitness.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72d89bdb76077d55f3c532fbd673330078c251e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
