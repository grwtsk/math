# ProjectSnapshot.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14a75a3dcdd69c08042bce2196fba1bcd05438941e2dcb261dfcda71723a0209",
  "kind": "def",
  "lexical_name": "ProjectSnapshot.Valid",
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
  "slug": "projectsnapshot-valid--1ecfa023c6dd0d86bb650f7c",
  "source": {
    "blob": "d6cae5036a1ee0a35e6a6df62f6eaebada140cbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 186,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Project/Variantf4a4db27b32b63a698981d38c9ba0abc22609f4d485f0e93543c88408c8c6e24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ecfa023c6dd0d86bb650f7cc5f54f5582cf2c57061ed477e2f7954b0ecdc320",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Project/Variantf4a4db27b32b63a698981d38c9ba0abc22609f4d485f0e93543c88408c8c6e24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14a75a3dcdd69c08042bce2196fba1bcd05438941e2dcb261dfcda71723a0209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def ProjectSnapshot.Valid (snapshot : ProjectSnapshot) : Prop :=
  snapshot.schema = "surface.project-snapshot.v1" ∧
    (snapshot.files.map (fun file => file.path)).Nodup ∧
    (snapshot.modules.map (fun module => module.moduleName)).Nodup ∧
    (snapshot.declarations.map (fun decl => decl.declarationName)).Nodup ∧
    (snapshot.structuralFiles.map (fun file ↦ file.file)).Nodup ∧
    (snapshot.symbolReferences.map (fun reference ↦ reference.identity)).Nodup ∧
    (snapshot.buildTargets.map (fun target ↦ target.identity)).Nodup ∧
    snapshot.files.all (verifyFileSnapshotInPolicy snapshot.policy) = true ∧
    snapshot.declarations.all
      (verifyDeclarationSnapshotInFiles snapshot.files) = true ∧
    (∀ file ∈ snapshot.structuralFiles, file.Valid) ∧
    (∀ reference ∈ snapshot.symbolReferences, reference.Valid) ∧
    (∀ target ∈ snapshot.buildTargets, target.Valid)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Project/Variantf4a4db27b32b63a698981d38c9ba0abc22609f4d485f0e93543c88408c8c6e24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Project/Variantf4a4db27b32b63a698981d38c9ba0abc22609f4d485f0e93543c88408c8c6e24.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6cae5036a1ee0a35e6a6df62f6eaebada140cbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
