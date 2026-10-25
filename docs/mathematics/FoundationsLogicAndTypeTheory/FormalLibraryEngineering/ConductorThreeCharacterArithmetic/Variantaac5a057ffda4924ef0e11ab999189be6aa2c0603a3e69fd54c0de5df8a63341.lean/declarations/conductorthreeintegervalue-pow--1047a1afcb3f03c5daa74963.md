# conductorThreeIntegerValue_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fe76fc9-6cea-e24d-9b1a-b0216a2f9134",
  "kind": "theorem",
  "lexical_name": "conductorThreeIntegerValue_pow",
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
  "slug": "conductorthreeintegervalue-pow--1047a1afcb3f03c5daa74963",
  "source": {
    "blob": "86d2c35e8cac7b34f932898fe9efbca5e67fc1eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variantaac5a057ffda4924ef0e11ab999189be6aa2c0603a3e69fd54c0de5df8a63341.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1047a1afcb3f03c5daa749639ed41480d266a86cf6af3c1a50b5d03690de2afd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variantaac5a057ffda4924ef0e11ab999189be6aa2c0603a3e69fd54c0de5df8a63341.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fe76fc9-6cea-e24d-9b1a-b0216a2f9134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeIntegerValue_pow (n k : ℕ) :
    conductorThreeIntegerValue (n ^ k) = conductorThreeIntegerValue n ^ k := by
  change conductorThreeIntegerCharacter ((n ^ k : ℕ) : ZMod 3) = _
  simpa only [conductorThreeIntegerValue, Nat.cast_pow] using
    (map_pow conductorThreeIntegerCharacter (n : ZMod 3) k)

/-- The existing complex character is literally the integer character followed
by the canonical cast `ℤ → ℂ`. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variantaac5a057ffda4924ef0e11ab999189be6aa2c0603a3e69fd54c0de5df8a63341.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeCharacterArithmetic/Variantaac5a057ffda4924ef0e11ab999189be6aa2c0603a3e69fd54c0de5df8a63341.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86d2c35e8cac7b34f932898fe9efbca5e67fc1eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
