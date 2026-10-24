# cyclicSharpUnitChangeSupport_subset_boundaries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29a50386-a87a-f1ac-94e1-d15ac1ddfca7",
  "kind": "theorem",
  "lexical_name": "cyclicSharpUnitChangeSupport_subset_boundaries",
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
  "slug": "cyclicsharpunitchangesupport-subset-boundaries--d4b7cfa5a753f223d9d273c5",
  "source": {
    "blob": "2f67ed54be863129d202285ddf6cda797d0cda29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4b7cfa5a753f223d9d273c59f6a2b67987234557a7043a223c42dfebe087715",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29a50386-a87a-f1ac-94e1-d15ac1ddfca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicSharpUnitChangeSupport_subset_boundaries
    {X m : ℕ}
    (hX : 0 < X)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    cyclicSharpUnitChangeSupport X m ⊆
      {(2 * X + 1 : ZMod (fejerOctavePeriod X)),
       (m + 1 : ZMod (fejerOctavePeriod X))} := by
  intro z hz
  rw [cyclicSharpUnitChangeSupport, Finset.mem_filter] at hz
  rcases hz with ⟨hzuniv, hchange⟩
  simp only [Finset.mem_insert, Finset.mem_singleton]
  by_cases hzin : cyclicSharpPrefixMem X m z
  · have hprev :
        ¬ cyclicSharpPrefixMem X m
          (z - (1 : ZMod (fejerOctavePeriod X))) := by
      exact fun hp => hchange (propext ⟨fun _ => hp, fun _ => hzin⟩)
    left
    have hzi := hzin
    unfold cyclicSharpPrefixMem at hzi hprev
    have hrep1 : octaveRepresentative X z ≠ 1 := by
      omega
    have hpred :=
      octaveRepresentative_sub_one hX z
    rw [if_neg hrep1] at hpred
    have hpreLeM :
        octaveRepresentative X z - 1 ≤ m := by
      omega
    have hpreNotLower :
        ¬ 2 * X <
          octaveRepresentative X z - 1 := by
      intro hlo
      apply hprev
      constructor
      · simpa [hpred] using hlo
      · simpa [hpred] using hpreLeM
    have hrepEq :
        octaveRepresentative X z = 2 * X + 1 := by
      omega
    rw [← natCast_octaveRepresentative hX z, hrepEq]
  · have hprevin :
        cyclicSharpPrefixMem X m
          (z - (1 : ZMod (fejerOctavePeriod X))) := by
      by_contra hp
      exact hchange (propext ⟨fun h => (hzin h).elim, fun h => (hp h).elim⟩)
    right
    unfold cyclicSharpPrefixMem at hzin hprevin
    by_cases hrep1 : octaveRepresentative X z = 1
    · have hpred :=
        octaveRepresentative_sub_one hX z
      rw [if_pos hrep1] at hpred
      have hmEq : m = fejerOctavePeriod X := by
        have hle := hprevin.2
        rw [hpred] at hle
        have hm1' : m ≤ fejerOctavePeriod X := by
          simpa [fejerOctavePeriod] using hm1
        omega
      have hzEq :
          z = (1 : ZMod (fejerOctavePeriod X)) := by
        rw [← natCast_octaveRepresentative hX z, hrep1]
      rw [hzEq, hmEq]
      simp [fejerOctavePeriod]
    · have hpred :=
        octaveRepresentative_sub_one hX z
      rw [if_neg hrep1] at hpred
      have hrepLower :
          2 * X < octaveRepresentative X z := by
        omega
      have hrepGtM :
          m < octaveRepresentative X z := by
        by_contra hle
        apply hzin
        exact ⟨hrepLower, Nat.le_of_not_gt hle⟩
      have hrepEq :
          octaveRepresentative X z = m + 1 := by
        have hpreLe := hprevin.2
        rw [hpred] at hpreLe
        omega
      rw [← natCast_octaveRepresentative hX z, hrepEq]

/-- The one-step change support has at most two residues. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicTwoBoundary.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f67ed54be863129d202285ddf6cda797d0cda29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
