# cast_sub_max_succ_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20276873-75dc-7709-eb8f-5ca15ac6b43d",
  "kind": "theorem",
  "lexical_name": "cast_sub_max_succ_eq_indicator",
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
  "slug": "cast-sub-max-succ-eq-indicator--207de6562c5abb420520b3e4",
  "source": {
    "blob": "49646020d08e2797d7762f0d1b7b14c4e1bd01ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 53,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:207de6562c5abb420520b3e4fa9a9b352959e3103cc982e92eb110d05b580268",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20276873-75dc-7709-eb8f-5ca15ac6b43d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cast_sub_max_succ_eq_indicator
    (L U b : ℕ) :
    (((U - max L b : ℕ) : ℝ) -
      (((U - max L (b + 1) : ℕ) : ℝ))) =
        if b ∈ Finset.Ico L U then 1 else 0 := by
  by_cases hLb : L ≤ b
  · by_cases hbU : b < U
    · have hmem : b ∈ Finset.Ico L U :=
        Finset.mem_Ico.mpr ⟨hLb, hbU⟩
      rw [if_pos hmem,
        max_eq_right hLb,
        max_eq_right (le_trans hLb (Nat.le_succ b))]
      have hNat : U - b = U - (b + 1) + 1 := by omega
      rw [hNat]
      norm_num
    · have hnot : b ∉ Finset.Ico L U := by
        simp [Finset.mem_Ico, hLb, hbU]
      have hUb : U ≤ b := Nat.le_of_not_gt hbU
      rw [if_neg hnot,
        max_eq_right hLb,
        max_eq_right (le_trans hLb (Nat.le_succ b)),
        Nat.sub_eq_zero_of_le hUb,
        Nat.sub_eq_zero_of_le (le_trans hUb (Nat.le_succ b))]
      norm_num
  · have hbL : b < L := Nat.lt_of_not_ge hLb
    have hb1L : b + 1 ≤ L := by omega
    have hnot : b ∉ Finset.Ico L U := by
      simp [Finset.mem_Ico, hLb]
    rw [if_neg hnot,
      max_eq_left (Nat.le_of_lt hbL),
      max_eq_left hb1L]
    norm_num

/-- The first drop of the exact endpoint-depth multiplicity is literally the
indicator of one integer interval.  In particular, the Stieltjes measure has
no fractional weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49646020d08e2797d7762f0d1b7b14c4e1bd01ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
