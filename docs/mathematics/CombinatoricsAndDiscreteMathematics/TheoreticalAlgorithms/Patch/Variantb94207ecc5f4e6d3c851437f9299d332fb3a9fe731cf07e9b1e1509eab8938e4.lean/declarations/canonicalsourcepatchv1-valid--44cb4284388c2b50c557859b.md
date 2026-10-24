# CanonicalSourcePatchV1.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ec260cfdf4c8f74586d62075d6b872519ca464e37f494cf7b5ead2df8ae10a1",
  "kind": "def",
  "lexical_name": "CanonicalSourcePatchV1.Valid",
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
  "slug": "canonicalsourcepatchv1-valid--44cb4284388c2b50c557859b",
  "source": {
    "blob": "e39886c677631c2169528896db4acad8b5134592",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variantb94207ecc5f4e6d3c851437f9299d332fb3a9fe731cf07e9b1e1509eab8938e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44cb4284388c2b50c557859b9cfbbb10ebda2f9f3ead06b68e8318873e9cd776",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variantb94207ecc5f4e6d3c851437f9299d332fb3a9fe731cf07e9b1e1509eab8938e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ec260cfdf4c8f74586d62075d6b872519ca464e37f494cf7b5ead2df8ae10a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def CanonicalSourcePatchV1.Valid
    (patch : CanonicalSourcePatchV1) : Prop :=
  patch.schema = sourcePatchSchemaV1 ∧
    patch.rendererVersion = sourcePatchRendererV1 ∧
    patch.contextLineCount = 3 ∧
    patch.baseRepositorySnapshotHash.Valid ∧
    patch.afterRepositorySnapshotHash.Valid ∧
    patch.operationBundleHash.Valid ∧ patch.inverseBundleHash.Valid ∧
    patch.unifiedDiffBytesHash.Valid ∧
    (∀ change ∈ patch.orderedFileChanges, change.Valid) ∧
    (patch.orderedFileChanges.map
      (fun change => pathCode change.normalizedPathUtf8)).Pairwise (· < ·)

/-- Evidence that one deterministic renderer invocation was bound to the exact
admitted bundle.  Hash observations are inputs, not Lean SHA-256 computations. -/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variantb94207ecc5f4e6d3c851437f9299d332fb3a9fe731cf07e9b1e1509eab8938e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variantb94207ecc5f4e6d3c851437f9299d332fb3a9fe731cf07e9b1e1509eab8938e4.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39886c677631c2169528896db4acad8b5134592` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
