# canonicalIndexValidationExample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1866c6326128b9f0b53a8b4b4adb2b5e1967d48a7202d77d21cd9c8795f172c9",
  "kind": "def",
  "lexical_name": "canonicalIndexValidationExample",
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
  "slug": "canonicalindexvalidationexample--aaccd345bb56e3b175bdaf29",
  "source": {
    "blob": "867f2af36fb7bef99a854589821e479681d13c25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 552,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variantf31f800800fc7f8e74cea9df72ecbe1a9399ea5897f11a21c19bdd5f32506706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaccd345bb56e3b175bdaf295a5004b37b1ebf4a95e4f870b020039a2eed29e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variantf31f800800fc7f8e74cea9df72ecbe1a9399ea5897f11a21c19bdd5f32506706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1866c6326128b9f0b53a8b4b4adb2b5e1967d48a7202d77d21cd9c8795f172c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def canonicalIndexValidationExample :
    CanonicalIndexValidation canonicalIndexSnapshotExample :=
  { identifiersUnique := canonicalIndexSnapshotExample_valid
    referencesResolve :=
      canonicalIndexRecordExample.declaration =
        some ⟨"DAF.Terrain.KnownMaximalState"⟩
    referencesResolve_proof := rfl
    ownershipValid :=
      canonicalIndexRecordExample.metadata.owner = ⟨"daf-terrain"⟩
    ownershipValid_proof := rfl
    importPolicyValid := True
    importPolicyValid_proof := True.intro
    schemaValid := canonicalIndexSnapshotExample.schemaVersion = ⟨1, 0, 0⟩
    schemaValid_proof := rfl
    authorityNonPromotion :=
      canonicalIndexRecordExample.metadata.sourceAuthority ≠ .kernelTrustedBase
    authorityNonPromotion_proof := by decide
    assuranceNonPromotion :=
      canonicalIndexRecordExample.metadata.assuranceLevel = .development
    assuranceNonPromotion_proof := rfl
    openObligations := [⟨"ID-RUNTIME-REFINEMENT"⟩] }

/-- Example normalization/bytes/digest capability; it proves no semantic hash law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variantf31f800800fc7f8e74cea9df72ecbe1a9399ea5897f11a21c19bdd5f32506706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variantf31f800800fc7f8e74cea9df72ecbe1a9399ea5897f11a21c19bdd5f32506706.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `867f2af36fb7bef99a854589821e479681d13c25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
