# conversionFuel_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:608c0a4f-91ec-970c-8612-688d7abc0ba7",
  "kind": "theorem",
  "lexical_name": "conversionFuel_complete",
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
  "slug": "conversionfuel-complete--e163929f3a33347ea5496825",
  "source": {
    "blob": "cd45c6d0ffb90ff613efc339859c893cebb61ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant73a54c933458f951c98dd051e7698b3718435243e69809a8c714df14d1583eb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e163929f3a33347ea5496825254252a9638157d85aacc6f888c3577434c09d66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant73a54c933458f951c98dd051e7698b3718435243e69809a8c714df14d1583eb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:608c0a4f-91ec-970c-8612-688d7abc0ba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conversionFuel_complete [DecidableEq S] (first second : AccessibleState S)
    (firstFuel secondFuel : ℕ) (firstSufficient : height first ≤ firstFuel)
    (secondSufficient : height second ≤ secondFuel) :
    ∃ result, conversionFuel firstFuel secondFuel first.val second.val = some result ∧
      (result = true ↔ Converts first.val second.val) := by
  obtain ⟨firstNormal, firstRun⟩ := normalizeFuel_complete first firstFuel firstSufficient
  obtain ⟨secondNormal, secondRun⟩ := normalizeFuel_complete second secondFuel secondSufficient
  have success : conversionFuel firstFuel secondFuel first.val second.val =
      some (decide (firstNormal = secondNormal)) := by
    simp [conversionFuel, firstRun, secondRun]
  exact ⟨_, success, conversionFuel_correct success⟩

end FormalResearch.TypeTheory.BetaReduction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant73a54c933458f951c98dd051e7698b3718435243e69809a8c714df14d1583eb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant73a54c933458f951c98dd051e7698b3718435243e69809a8c714df14d1583eb3.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd45c6d0ffb90ff613efc339859c893cebb61ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
