# mdifferentiableWithinAt_of_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e114405e3e3ef1ec7390e69425e52924716f306c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 536,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d4cb442-1da1-e5ad-2ad0-499b670ffe34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dae4a8e-7cc6-c261-01b0-e4c17f33c49a",
  "kind": "theorem",
  "lexical_name": "mdifferentiableWithinAt_of_subsingleton",
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
  "slug": "mdifferentiablewithinat-of-subsingleton--2a3e251bb503137ae881db8c",
  "source": {
    "blob": "e114405e3e3ef1ec7390e69425e52924716f306c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 536,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a3e251bb503137ae881db8c3cb4bb734f0ecf150ca10cb1fceaed4c6c12de40",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dae4a8e-7cc6-c261-01b0-e4c17f33c49a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mdifferentiableWithinAt_of_subsingleton [Subsingleton E] : MDiffAt[s] f x :=
  (mdifferentiable_of_subsingleton x).mdifferentiableWithinAt

/-- If `f : M → M'` has injective differential at `x` within `s`,
it is `MDifferentiable` at `x` within `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant5f9e0f5c40236f2b7f0ef6c0d8d1f25d4fdfc952de758416866358b814d51b71.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e114405e3e3ef1ec7390e69425e52924716f306c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
