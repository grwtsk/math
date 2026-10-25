# conversionFuel_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff11edfc-2cf3-0065-8461-61731fc9d75f",
  "kind": "theorem",
  "lexical_name": "conversionFuel_correct",
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
  "slug": "conversionfuel-correct--3259ef87d5dfb2e2deb02b48",
  "source": {
    "blob": "64e134c912d7f96a40e9d96b612878ab56d60b90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3259ef87d5dfb2e2deb02b48b338422e43101b0f4ccffe073d1cf291648faa7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff11edfc-2cf3-0065-8461-61731fc9d75f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conversionFuel_correct [DecidableEq S] {firstFuel secondFuel : ℕ}
    {first second : Expr S} {result : Bool}
    (success : conversionFuel firstFuel secondFuel first second = some result) :
    result = true ↔ Converts first second := by
  cases firstRun : normalizeFuel firstFuel first with
  | none => simp [conversionFuel, firstRun] at success
  | some firstNormal =>
      cases secondRun : normalizeFuel secondFuel second with
      | none => simp [conversionFuel, firstRun, secondRun] at success
      | some secondNormal =>
          have equality : decide (firstNormal = secondNormal) = result := by
            simpa [conversionFuel, firstRun, secondRun] using success
          obtain ⟨firstPath, normalFirst⟩ := normalizeFuel_sound firstRun
          obtain ⟨secondPath, normalSecond⟩ := normalizeFuel_sound secondRun
          rw [← equality, decide_eq_true_eq]
          exact (conversion_iff_normal_eq firstPath secondPath normalFirst normalSecond).symm

/-- Certified heights decide conversion without restricting the actual source transitions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant3d592615eeeb7c831d556d5d9e63d5a754ace8a84cd4248c56ab4a1e075a754a.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e134c912d7f96a40e9d96b612878ab56d60b90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
