# canonical_high_positive_quotient_parameterization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2060c1e0-cc77-8ec9-704d-fa00cf429559",
  "kind": "theorem",
  "lexical_name": "canonical_high_positive_quotient_parameterization",
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
  "slug": "canonical-high-positive-quotient-parameterization--95659746c7e76f53ece1d06b",
  "source": {
    "blob": "cd73b3780e35f13c7bdf4d03c8a7d8306a552e21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 84,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95659746c7e76f53ece1d06b377fcbafec63248102cfefd5272283dd505fb8ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2060c1e0-cc77-8ec9-704d-fa00cf429559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonical_high_positive_quotient_parameterization
    {X : ℕ} (hX : 1 ≤ X) {k : ℤ}
    (hq : 0 < greenCanonicalQuotient X k)
    (hr : greenCanonicalResidue X k ≠ 0) :
    ∃ q r : ℕ, 1 ≤ q ∧ 1 ≤ r ∧ r ≤ X / 2 ∧
      (k = ((q * X + r : ℕ) : ℤ) ∨
       k = ((q * X - r : ℕ) : ℤ)) := by
  let qz := greenCanonicalQuotient X k
  let rz := greenCanonicalResidue X k
  have hrange := greenCanonicalResidue_range hX k
  have hd := greenCanonical_decomposition hX k
  let q : ℕ := qz.toNat
  let r : ℕ := Int.natAbs rz
  refine ⟨q, r, ?_, ?_, ?_, ?_⟩
  · exact_mod_cast hq
  · exact Int.natAbs_pos.mpr hr
  · unfold GreenCanonicalResidueCondition greenCenteredResidueLower
      greenCenteredResidueUpper at hrange
    dsimp [r, rz]
    omega
  · by_cases hrz : 0 < rz
    · left
      have hqcast : (q : ℤ) = qz := by
        exact Int.toNat_of_nonneg hq.le
      have hrcast : (r : ℤ) = rz := by
        simp [r, Int.natAbs_of_nonneg hrz.le]
      push_cast
      rw [hqcast, hrcast]
      exact hd
    · right
      have hrzneg : rz < 0 := lt_of_le_of_ne (le_of_not_gt hrz) (Ne.symm hr)
      have hqcast : (q : ℤ) = qz := Int.toNat_of_nonneg hq.le
      have hrcast : (r : ℤ) = -rz := by
        simp [r, Int.natAbs_of_nonpos hrzneg.le]
      have hnonneg : r ≤ q * X := by
        have hkpos : 0 < k := by
          rw [hd]
          dsimp [qz, rz] at *
          nlinarith
        push_cast
        rw [hqcast, hrcast]
        nlinarith
      push_cast
      rw [hqcast, hrcast]
      nlinarith [hd]

/-- Negative quotient frequencies are parameterized after negation. No norm
symmetry is asserted here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFrequencyClassification.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd73b3780e35f13c7bdf4d03c8a7d8306a552e21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
