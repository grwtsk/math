# centeredLowGCDBilinear_eq_mass_sq_add_highCutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d37128d-8a7d-e360-329a-4ad4e2225f6b",
  "kind": "theorem",
  "lexical_name": "centeredLowGCDBilinear_eq_mass_sq_add_highCutoff",
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
  "slug": "centeredlowgcdbilinear-eq-mass-sq-add-highcutoff--dfcb0eaa89a1522c516b98cb",
  "source": {
    "blob": "c3f545d399326589f9a8e0848dbf33ea1be7dcc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 321,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfcb0eaa89a1522c516b98cb4c05568b5ca7faeb45476b618d88af7ca120bfa8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d37128d-8a7d-e360-329a-4ad4e2225f6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredLowGCDBilinear_eq_mass_sq_add_highCutoff
    {X Y : ℕ}
    (hX : 0 < X)
    (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    centeredLowGCDBilinear X Y w =
      (centeredCoefficientMass X w)^2 +
        highGCDCutoffMobiusSquareExpansion X Y w := by
  rw [centeredLowGCDBilinear_eq_gcdCutoffMobiusSquareExpansion]
  unfold gcdCutoffMobiusSquareExpansion
    highGCDCutoffMobiusSquareExpansion
  let low : Finset ℕ :=
    (modulusIndexSet X).filter fun r => r ≤ Y
  have hsplit :
      modulusIndexSet X =
        low ∪ highGCDCutoffIndexSet X Y := by
    ext r
    by_cases hr : r ≤ Y
    · simp [low, highGCDCutoffIndexSet, hr,
        not_lt_of_ge hr]
    · have hlt : Y < r := Nat.lt_of_not_ge hr
      simp [low, highGCDCutoffIndexSet, hr, hlt]
  have hdisj :
      Disjoint low (highGCDCutoffIndexSet X Y) := by
    rw [Finset.disjoint_left]
    intro r hrlo hrhi
    have hlo := (Finset.mem_filter.mp hrlo).2
    have hhi := (mem_highGCDCutoffIndexSet_iff.mp hrhi).2
    omega
  rw [hsplit, Finset.sum_union hdisj]
  have hlow :
      (∑ r ∈ low,
        gcdCutoffMobiusCoefficient Y r *
          (centeredDivisibilityTail X w r)^2) =
        (centeredCoefficientMass X w)^2 := by
    rw [Finset.sum_eq_single 1]
    · rw [gcdCutoffMobiusCoefficient_one hY,
        centeredDivisibilityTail_one]
      ring
    · intro r hr rne
      have hrmem := (Finset.mem_filter.mp hr).1
      have hrle := (Finset.mem_filter.mp hr).2
      have hrI := Finset.mem_Icc.mp hrmem
      have hrgt : 1 < r := by omega
      rw [gcdCutoffMobiusCoefficient_eq_zero_of_one_lt_le
        hrgt hrle, zero_mul]
    · intro hnot
      exact (hnot (Finset.mem_filter.mpr
        ⟨one_mem_modulusIndexSet hX, hY⟩)).elim
  rw [hlow]

/-- Difference between the cutoff coefficient and the ordinary Möbius
coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f545d399326589f9a8e0848dbf33ea1be7dcc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
