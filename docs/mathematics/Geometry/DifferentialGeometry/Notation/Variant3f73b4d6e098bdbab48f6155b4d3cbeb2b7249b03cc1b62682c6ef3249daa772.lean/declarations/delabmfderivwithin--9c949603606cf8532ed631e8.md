# delabMFDerivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4be34b8c036b1596107d1b23010932d8243bc69d5976709620a06188b17be9a",
  "kind": "def",
  "lexical_name": "delabMFDerivWithin",
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
  "slug": "delabmfderivwithin--9c949603606cf8532ed631e8",
  "source": {
    "blob": "82bafcdb5b5220b506995e1568afb2cfeb7853c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1102,
    "line": 1095,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c949603606cf8532ed631e8e8da34e5d4d0b0411a5493896fbd596d4453549d",
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

Occurrence: `declaration:d4be34b8c036b1596107d1b23010932d8243bc69d5976709620a06188b17be9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1095–1102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[app_delab mfderivWithin] meta def delabMFDerivWithin : Delab := do
  whenPPOption getPPNotation do
  withOverApp 22 do
  let ss ← withAppArg delab
  let fs ← withNaryArg 20 delab
  `(mfderiv[$ss] $fs) >>= annotateGoToSyntaxDef

/-- Delaborator for `MDifferentiable` using the custom elaborator -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean#L1095).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82bafcdb5b5220b506995e1568afb2cfeb7853c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
