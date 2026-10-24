# modFourUnitResidueEnergy_of_odd_and_discrepancy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94de0dc6-d49a-15ef-ad40-f70ac3964dea",
  "kind": "theorem",
  "lexical_name": "modFourUnitResidueEnergy_of_odd_and_discrepancy",
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
  "slug": "modfourunitresidueenergy-of-odd-and-discrepancy--ea8179201eeb11afadac36f7",
  "source": {
    "blob": "5f4fd6387300544531090b83a6d529798e538efc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Moebius/ModFourCharacterMertensEnergyEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea8179201eeb11afadac36f7e20dc685dfac196b809679bae640e93bbdcfee18",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ModFourCharacterMertensEnergyEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94de0dc6-d49a-15ef-ad40-f70ac3964dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modFourUnitResidueEnergy_of_odd_and_discrepancy
    (hOdd : DyadicOddMertensSquareRootEnergy)
    (hDisc : DyadicModFourMertensDiscrepancySquareRootEnergy) :
    DyadicModFourUnitResidueMertensSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C₀, hC₀, hOddScale⟩ := hOdd δ hδ
  obtain ⟨C₁, hC₁, hDiscScale⟩ := hDisc δ hδ
  refine ⟨C₀ + C₁, add_nonneg hC₀ hC₁, ?_⟩
  intro j b a hb ha
  have hO := hOddScale j b hb
  have hD := hDiscScale j b hb
  let T : ℝ :=
    (((2 ^ j : ℕ) : ℝ)) * (((2 ^ j : ℕ) : ℝ) ^ δ)
  have hT : 0 ≤ T := by
    dsimp [T]
    positivity
  rcases ha with rfl | rfl
  · have hEqSq := congrArg (fun x : ℝ => x ^ 2)
      (two_mul_modFourMertensPrefix_one b)
    have hSum :
        (parityMertensPrefix b 1 +
          modFourUnitMertensDiscrepancy b) ^ 2 ≤
        2 * parityMertensPrefix b 1 ^ 2 +
          2 * modFourUnitMertensDiscrepancy b ^ 2 := by
      nlinarith [sq_nonneg
        (parityMertensPrefix b 1 -
          modFourUnitMertensDiscrepancy b)]
    dsimp [T] at hT
    nlinarith
  · have hEqSq := congrArg (fun x : ℝ => x ^ 2)
      (two_mul_modFourMertensPrefix_three b)
    have hDiff :
        (parityMertensPrefix b 1 -
          modFourUnitMertensDiscrepancy b) ^ 2 ≤
        2 * parityMertensPrefix b 1 ^ 2 +
          2 * modFourUnitMertensDiscrepancy b ^ 2 := by
      nlinarith [sq_nonneg
        (parityMertensPrefix b 1 +
          modFourUnitMertensDiscrepancy b)]
    dsimp [T] at hT
    nlinarith

/-- The character-coordinate proposition supplies the common unit-residue
energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ModFourCharacterMertensEnergyEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ModFourCharacterMertensEnergyEquivalence.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4fd6387300544531090b83a6d529798e538efc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
