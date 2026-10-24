# CanonicalSourcePatchV1.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:421df45080cb8398ee1c4b23ebf5af7b9f955a62bc5a0eb0366969179fb65ee6",
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
  "slug": "canonicalsourcepatchv1-valid--8d9483de8251517e4c973e95",
  "source": {
    "blob": "3323ffda2f435a0c89aea050d4418dba0a11bb5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant84b857edeeb4d8003d4268e00ec648c8eccc3dab392d89838b7e838556bdd33d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d9483de8251517e4c973e955a72fe0306bd3df2163444eb7c041de909fce1ac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant84b857edeeb4d8003d4268e00ec648c8eccc3dab392d89838b7e838556bdd33d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:421df45080cb8398ee1c4b23ebf5af7b9f955a62bc5a0eb0366969179fb65ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–81.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant84b857edeeb4d8003d4268e00ec648c8eccc3dab392d89838b7e838556bdd33d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant84b857edeeb4d8003d4268e00ec648c8eccc3dab392d89838b7e838556bdd33d.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3323ffda2f435a0c89aea050d4418dba0a11bb5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
