# delabMFDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:514089f1a4dd5d8ddb831d61d5782be2c63e9a93516cec29113b7889f40d7bcc",
  "kind": "def",
  "lexical_name": "delabMFDeriv",
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
  "slug": "delabmfderiv--ba11d0555f32a28d0611deae",
  "source": {
    "blob": "82bafcdb5b5220b506995e1568afb2cfeb7853c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1094,
    "line": 1088,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba11d0555f32a28d0611deaea2b351cd3d8db62380ce9b9f0ffcfa4c47066c66",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:514089f1a4dd5d8ddb831d61d5782be2c63e9a93516cec29113b7889f40d7bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1088–1094.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[app_delab mfderiv] meta def delabMFDeriv : Delab := do
  whenPPOption getPPNotation do
  withOverApp 21 do
  let fs ← withAppArg delab
  `(mfderiv% $fs) >>= annotateGoToSyntaxDef

/-- Delaborator for `mfderivWithin` using the custom elaborator -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean#L1088).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82bafcdb5b5220b506995e1568afb2cfeb7853c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
