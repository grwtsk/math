# ProjectionFailure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73efea80348efdcddbc4fe9b99a4fff492ec8710a9aba4b3132c2504ca30e37d",
  "kind": "inductive",
  "lexical_name": "ProjectionFailure",
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
  "slug": "projectionfailure--95178825c864a4cd70c3cc3a",
  "source": {
    "blob": "cbc6aed7b7280fd6e693f21040951600e574939b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A79d5ae2695b65ab1/Variant2367ca6936c7f91a2b9ff05b05e065d9e7990511950b9af2f64ed2cbb0e30c94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95178825c864a4cd70c3cc3afc499ef2a60ab9a2812b819a42d90a5e6107dcc4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A79d5ae2695b65ab1/Variant2367ca6936c7f91a2b9ff05b05e065d9e7990511950b9af2f64ed2cbb0e30c94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73efea80348efdcddbc4fe9b99a4fff492ec8710a9aba4b3132c2504ca30e37d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ProjectionFailure
  | uncertifiedExternalLabel
  | labelCollision
  | incompleteLabelCoverage
  | ambiguousLabelDenotation
  | unresolvedDerivedNode
  | nonfunctionalProjectionLaw
  | projectionCertificateFailure
  deriving DecidableEq, Repr, Inhabited

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A79d5ae2695b65ab1/Variant2367ca6936c7f91a2b9ff05b05e065d9e7990511950b9af2f64ed2cbb0e30c94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A79d5ae2695b65ab1/Variant2367ca6936c7f91a2b9ff05b05e065d9e7990511950b9af2f64ed2cbb0e30c94.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbc6aed7b7280fd6e693f21040951600e574939b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
