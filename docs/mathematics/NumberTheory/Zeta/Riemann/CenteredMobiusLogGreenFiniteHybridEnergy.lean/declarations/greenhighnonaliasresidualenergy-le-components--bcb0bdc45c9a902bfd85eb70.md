# greenHighNonaliasResidualEnergy_le_components

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd8d4052-66bb-4d3b-b84f-ff7b192f025b",
  "kind": "theorem",
  "lexical_name": "greenHighNonaliasResidualEnergy_le_components",
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
  "slug": "greenhighnonaliasresidualenergy-le-components--bcb0bdc45c9a902bfd85eb70",
  "source": {
    "blob": "88fe39dae35906e9967a32ca5610d64695524387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 25,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHybridEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcb0bdc45c9a902bfd85eb70886d5a176ed39cccdf84981caadeacd78454aec2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHybridEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd8d4052-66bb-4d3b-b84f-ff7b192f025b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greenHighNonaliasResidualEnergy_le_components
    {X Q : ℕ} (hX : 2 ≤ X) :
    greenHighNonaliasResidualEnergy X Q ≤
      3 * (greenHighA2Majorant X Q +
        (1 / (16 * Real.pi^2)) *
          greenHighQuotientResidueMajorant X Q +
        greenHighC2Majorant X Q) := by
  unfold greenHighNonaliasResidualEnergy
  apply Finset.sum_le_sum
  intro r hr
  apply Finset.sum_le_sum
  intro q hq
  have hrI := Finset.mem_Icc.mp hr
  have hqI := Finset.mem_Icc.mp hq
  have hrpos : 1 ≤ r := hrI.1
  have hqpos : 1 ≤ q := hqI.1
  have hden := principal_residue_denominator_lower (by omega) hr hqpos
  have hmpos : 0 < q * X - r := by omega
  let Rminus : GreenCenteredResidue X ((q * X - r : ℕ) : ℤ) := {
    q := q
    r := -(r : ℤ)
    relation := by push_cast; omega
    range := by
      simp
      exact_mod_cast (by omega : 2 * r ≤ X)
  }
  let Rplus : GreenCenteredResidue X ((q * X + r : ℕ) : ℤ) := {
    q := q
    r := r
    relation := by push_cast; ring
    range := by
      simp
      exact_mod_cast (by omega : 2 * r ≤ X)
  }
  have hm0 : ((q * X - r : ℕ) : ℤ) ≠ 0 := by omega
  have hp0 : ((q * X + r : ℕ) : ℤ) ≠ 0 := by omega
  have hrm : Rminus.r ≠ 0 := by simp [Rminus, hrpos]
  have hrp : Rplus.r ≠ 0 := by simp [Rplus, hrpos]
  have hm := sq_norm_greenCenteringResidual_le_residue
    (by omega) hm0 Rminus hrm
  have hp := sq_norm_greenCenteringResidual_le_residue
    (by omega) hp0 Rplus hrp
  have hB :
      (greenResidualB ((q * X - r : ℕ) : ℤ) Rminus.r)^2 =
        (greenResidualB ((q * X - r : ℕ) : ℤ) r)^2 := by
    simp [Rminus, greenResidualB]
  rw [hB] at hm
  have hAdef :
      greenHighA2Majorant X Q =
        ∑ r ∈ greenPositivePrincipalResidues X,
          ∑ q ∈ Finset.Icc 1 Q,
            greenResidualA ((q * X - r : ℕ) : ℤ)^2 +
            greenResidualA ((q * X + r : ℕ) : ℤ)^2 := rfl
  have hCdef :
      greenHighC2Majorant X Q =
        ∑ r ∈ greenPositivePrincipalResidues X,
          ∑ q ∈ Finset.Icc 1 Q,
            greenResidualC X ((q * X - r : ℕ) : ℤ)^2 +
            greenResidualC X ((q * X + r : ℕ) : ℤ)^2 := rfl
  have hBglobal := greenHighB2_eq_residueMajorant X Q
  -- Pointwise inequality; the global definitions are unfolded by the outer
  -- sums after this local step.
  linarith

/-- Finite hybrid energy aggregate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHybridEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHybridEnergy.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88fe39dae35906e9967a32ca5610d64695524387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
