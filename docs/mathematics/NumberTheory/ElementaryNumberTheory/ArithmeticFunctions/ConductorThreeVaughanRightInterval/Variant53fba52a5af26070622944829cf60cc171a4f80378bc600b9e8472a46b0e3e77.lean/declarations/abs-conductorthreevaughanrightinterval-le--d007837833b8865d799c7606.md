# abs_conductorThreeVaughanRightInterval_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16a8f508-4455-875a-ba1b-1805daaab468",
  "kind": "theorem",
  "lexical_name": "abs_conductorThreeVaughanRightInterval_le",
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
  "slug": "abs-conductorthreevaughanrightinterval-le--d007837833b8865d799c7606",
  "source": {
    "blob": "8482ffe7663fa2cc0e6bdd8498ff64234a23b704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 266,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant53fba52a5af26070622944829cf60cc171a4f80378bc600b9e8472a46b0e3e77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d007837833b8865d799c76060aec122f01fbd7b44a11a43836d1e93404f3dd33",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant53fba52a5af26070622944829cf60cc171a4f80378bc600b9e8472a46b0e3e77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16a8f508-4455-875a-ba1b-1805daaab468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_conductorThreeVaughanRightInterval_le
    (V a b : ℕ) :
    |conductorThreeVaughanRightInterval V a b| ≤ V := by
  by_cases hab : a ≤ b
  · rw [conductorThreeVaughanRightInterval_eq_factorized hab]
    calc
      |∑ d ∈ Finset.Ioc 0 b,
          conductorThreeTwistedMoebiusBelow V d *
            conductorThreeCharacterIntervalSum (a / d) (b / d)| ≤
          ∑ d ∈ Finset.Ioc 0 b,
            |conductorThreeTwistedMoebiusBelow V d *
              conductorThreeCharacterIntervalSum (a / d) (b / d)| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ d ∈ Finset.Ioc 0 b,
          if d ≤ V then (1 : ℝ) else 0 := by
        apply Finset.sum_le_sum
        intro d hd
        rw [abs_mul]
        have hleft := abs_twistedMoebiusBelow_le_one V d
        have hright := abs_conductorThreeCharacterIntervalSum_le_one
          (a / d) (b / d)
        by_cases hdV : d ≤ V
        · rw [if_pos hdV] at hleft ⊢
          nlinarith [abs_nonneg (conductorThreeTwistedMoebiusBelow V d),
            abs_nonneg (conductorThreeCharacterIntervalSum (a / d) (b / d))]
        · rw [if_neg hdV] at hleft ⊢
          have hz : |conductorThreeTwistedMoebiusBelow V d| = 0 :=
            le_antisymm hleft (abs_nonneg _)
          rw [hz, zero_mul]
      _ ≤ V := sum_active_truncation_indicator_le V b
  · have hempty : Finset.Ioc a b = ∅ :=
      Finset.Ioc_eq_empty_of_le (Nat.le_of_not_ge hab)
    simp [conductorThreeVaughanRightInterval, hempty]

/-- The fixed conductor-three truncation requested by the Vaughan route. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant53fba52a5af26070622944829cf60cc171a4f80378bc600b9e8472a46b0e3e77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVaughanRightInterval/Variant53fba52a5af26070622944829cf60cc171a4f80378bc600b9e8472a46b0e3e77.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8482ffe7663fa2cc0e6bdd8498ff64234a23b704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
