# StructuralEnergy.hardVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dcf348314fb9108e8991653d67d672d705c63284f537c34839d75ce43bf141c3",
  "kind": "def",
  "lexical_name": "StructuralEnergy.hardVector",
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
  "slug": "structuralenergy-hardvector--2a10d7c0d7f85d6547c8e1ef",
  "source": {
    "blob": "a3c7352210ae1a5ee1b522f4947c198c0bf37251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 215,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant1949a02dc5d57f99ea3e9123be00c0058398cc8cea02c232784e704bf3174741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a10d7c0d7f85d6547c8e1ef82b09fb7165e828fd8d19b4a9a2be05476ed7ef4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant1949a02dc5d57f99ea3e9123be00c0058398cc8cea02c232784e704bf3174741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dcf348314fb9108e8991653d67d672d705c63284f537c34839d75ce43bf141c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def StructuralEnergy.hardVector (energy : StructuralEnergy) : List Nat :=
  [energy.hardPolicyViolations, energy.staleSnapshotViolations,
    energy.parseErrors, energy.unsupportedRecoveryCount,
    energy.unresolvedReferenceCount, energy.importCycleCount,
    energy.compilerErrorCount, energy.leanUnsolvedGoalCount,
    energy.theoremStatementChangeCount, energy.publicApiChangeCount,
    energy.axiomGrowthCount, energy.exactRoundTripFailureCount]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant1949a02dc5d57f99ea3e9123be00c0058398cc8cea02c232784e704bf3174741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant1949a02dc5d57f99ea3e9123be00c0058398cc8cea02c232784e704bf3174741.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c7352210ae1a5ee1b522f4947c198c0bf37251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
