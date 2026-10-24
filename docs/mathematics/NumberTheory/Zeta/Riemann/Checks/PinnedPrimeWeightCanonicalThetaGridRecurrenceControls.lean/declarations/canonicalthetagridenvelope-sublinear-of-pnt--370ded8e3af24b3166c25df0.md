# canonicalThetaGridEnvelope_sublinear_of_PNT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6459b5a0-622a-4d35-8cc6-93fb34836d39",
  "kind": "theorem",
  "lexical_name": "canonicalThetaGridEnvelope_sublinear_of_PNT",
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
  "slug": "canonicalthetagridenvelope-sublinear-of-pnt--370ded8e3af24b3166c25df0",
  "source": {
    "blob": "d4481094fcac77415b08d3599229845023722372",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 39,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:370ded8e3af24b3166c25df0bec28dc85104cd176621b66e6660eb3b5f491e13",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6459b5a0-622a-4d35-8cc6-93fb34836d39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalThetaGridEnvelope_sublinear_of_PNT
    (hPNT : ThetaPrimeNumberTheorem) :
    SublinearDyadicEnvelope canonicalThetaGridEnvelope := by
  intro ε hε
  let δ : ℝ := ε / 4
  have hδ : 0 < δ := by
    dsimp [δ]
    positivity
  obtain ⟨B, hB⟩ := hPNT δ hδ
  obtain ⟨nB, hnB⟩ := exists_nat_gt B
  obtain ⟨nE, hnE⟩ := exists_nat_gt (4 / ε)
  let j₀ : ℕ := max nB nE
  refine ⟨j₀, ?_⟩
  intro j hj
  let X : ℕ := dyadicScale j
  have hindex : j ≤ X := index_le_dyadicScale j
  have hBn : nB ≤ j := le_trans (le_max_left _ _) hj
  have hEn : nE ≤ j := le_trans (le_max_right _ _) hj
  have hXgtB : B < (X : ℝ) := by
    have hcast : (nB : ℝ) ≤ (X : ℝ) := by
      exact_mod_cast hBn.trans hindex
    exact hnB.trans_le hcast
  have hXgtFour : 4 / ε < (X : ℝ) := by
    have hcast : (nE : ℝ) ≤ (X : ℝ) := by
      exact_mod_cast hEn.trans hindex
    exact hnE.trans_le hcast
  have hεX : 4 ≤ ε * (X : ℝ) := by
    have hp : 4 < (X : ℝ) * ε :=
      (div_lt_iff₀ hε).mp hXgtFour
    nlinarith [hp]
  have htwocost : (2 : ℝ) ≤ (ε / 2) * (X : ℝ) := by
    nlinarith [hεX]
  apply canonicalThetaGridEnvelope_le_of_grid_bound
  intro m hm
  have hbounds :
      X ≤ m ∧ m ≤ 2 * X := by
    simpa [X, canonicalThetaGridWindow] using
      (Finset.mem_Icc.mp hm)
  have hXmr : (X : ℝ) ≤ (m : ℝ) := by
    exact_mod_cast hbounds.1
  have hmupper : (m : ℝ) ≤ 2 * (X : ℝ) := by
    exact_mod_cast hbounds.2
  have hB≤m : B ≤ (m : ℝ) :=
    (le_of_lt hXgtB).trans hXmr
  have htheta :
      |thetaError (m : ℝ)| ≤ δ * (m : ℝ) :=
    hB (m : ℝ) hB≤m
  have htheta2 :
      |thetaError (m : ℝ)| ≤ δ * (2 * (X : ℝ)) :=
    htheta.trans (mul_le_mul_of_nonneg_left hmupper hδ.le)
  have htotal :
      |thetaError (m : ℝ)| + 2 ≤ ε * (X : ℝ) := by
    dsimp [δ] at htheta2
    nlinarith [htwocost]
  simpa [X] using htotal

/-- Instantiate the parent's PNT profile with an ACTUAL finite maximum.
Unlike an arbitrary oversized envelope, this object has a proved
next-octave recurrence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCanonicalThetaGridRecurrenceControls.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4481094fcac77415b08d3599229845023722372` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
