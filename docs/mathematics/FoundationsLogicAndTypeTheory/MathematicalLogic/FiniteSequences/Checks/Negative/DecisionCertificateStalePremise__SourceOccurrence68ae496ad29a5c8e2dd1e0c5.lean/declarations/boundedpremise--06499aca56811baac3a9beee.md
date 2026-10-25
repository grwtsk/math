# boundedPremise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fde05ea8e1974ce423e6149d69e9ac7f6b31f9a159207a86a1737ecff5c4e90a",
  "kind": "def",
  "lexical_name": "boundedPremise",
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
  "slug": "boundedpremise--06499aca56811baac3a9beee",
  "source": {
    "blob": "7ea9efd7c705a8c500e3d22cc21c27a87b68f844",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10,
    "line": 6,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/DecisionCertificateStalePremise.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06499aca56811baac3a9beee349f91c1f8eddc4ccc357ae6a4c1793e341b61af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/DecisionCertificateStalePremise__SourceOccurrence68ae496ad29a5c8e2dd1e0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fde05ea8e1974ce423e6149d69e9ac7f6b31f9a159207a86a1737ecff5c4e90a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6–10.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def boundedPremise : Certificate Nat Nat :=
  ⟨[(11, 7)], (fun entries => ∀ entry ∈ entries, entry.2 ≤ 7), by simp⟩

-- Expected type mismatch: the actual revised payload eight violates the old bound seven.
-- Identical keys, dictionary lengths, occurrence counts and valid bounds do not repair it.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/DecisionCertificateStalePremise__SourceOccurrence68ae496ad29a5c8e2dd1e0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/DecisionCertificateStalePremise.lean#L6).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ea9efd7c705a8c500e3d22cc21c27a87b68f844` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
