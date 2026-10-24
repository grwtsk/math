# positiveCongruentCenterDifference_has_windingLag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6b394eb-b73a-5c8e-58c2-43814d63026d",
  "kind": "theorem",
  "lexical_name": "positiveCongruentCenterDifference_has_windingLag",
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
  "slug": "positivecongruentcenterdifference-has-windinglag--e3eb871a6cc572b58016cbb6",
  "source": {
    "blob": "eb144670f6e44e124345cb33ae420b2d948377fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 142,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3eb871a6cc572b58016cbb6e7012f7e16bb371268ac85acfe482aff517a8ae1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6b394eb-b73a-5c8e-58c2-43814d63026d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveCongruentCenterDifference_has_windingLag
    (b d c₁ c₂ : ℕ) [NeZero d]
    (_hc₁ : c₁ < b + 1)
    (hc₂ : c₂ < b + 1)
    (hlt : c₁ < c₂)
    (hmod : c₁ ≡ c₂ [MOD d * d]) :
    ∃ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
      c₂ = c₁ + z * (d * d) := by
  have hqpos : 0 < d * d := Nat.mul_pos (Nat.pos_of_ne_zero (NeZero.ne d))
    (Nat.pos_of_ne_zero (NeZero.ne d))
  have hdiv : d * d ∣ c₂ - c₁ := by
    exact (Nat.modEq_iff_dvd' hlt.le).mp hmod
  obtain ⟨z, hz⟩ := hdiv
  have hdiffpos : 0 < c₂ - c₁ := Nat.sub_pos_of_lt hlt
  have hzpos : 0 < z := by
    by_contra hz0
    have : z = 0 := Nat.eq_zero_of_not_pos hz0
    simp [this] at hz
    omega
  have hdiffle : c₂ - c₁ ≤ b := by omega
  have hzmul : z * (d * d) ≤ b := by simpa [hz, mul_comm] using hdiffle
  have hzrad : z ≤ centeredWindingRadius b d := by
    unfold centeredWindingRadius
    exact (Nat.le_div_iff_mul_le hqpos).2 hzmul
  refine ⟨z, Finset.mem_Icc.mpr ⟨hzpos, hzrad⟩, ?_⟩
  have hz' : c₂ - c₁ = z * (d * d) := by simpa only [mul_comm] using hz
  omega

/-- Conversely, every positive winding lag that stays inside the endpoint
range gives a distinct congruent center pair. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb144670f6e44e124345cb33ae420b2d948377fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
