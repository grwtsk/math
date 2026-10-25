# AutoBoundImplicitContext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d21746f5cd7b7685c3dcbc5dcc3e2991506c938dd529e4167bd6c61dee7e7ab",
  "kind": "structure",
  "lexical_name": "AutoBoundImplicitContext",
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
  "slug": "autoboundimplicitcontext--6bf56191e48e990ff5079967",
  "source": {
    "blob": "19cf7da3dc2279ac911d174b9dc3a88db1b51853",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoBound/Variantfa4be880ceeb05ea6d60626efdabce729b57e8dbd6b455f4b6a3ec42615ca1c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bf56191e48e990ff5079967f3e771a6f3d7e1378d3d6eb4c5ab7c06ac487c20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoBound/Variantfa4be880ceeb05ea6d60626efdabce729b57e8dbd6b455f4b6a3ec42615ca1c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d21746f5cd7b7685c3dcbc5dcc3e2991506c938dd529e4167bd6c61dee7e7ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AutoBoundImplicitContext where
  /--
  This always matches the `autoImplicit` option; it is duplicated here in
  order to support the behavior of the deprecated `Lean.Elab.Term.Context.autoImplicit`
  method.
  -/
  autoImplicitEnabled : Bool
  /--
  Tracks a working set of variables that the auto-binding process currently
  anticipates adding implicit binding for.
  -/
  boundVariables : PArray Expr := {}
deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoBound/Variantfa4be880ceeb05ea6d60626efdabce729b57e8dbd6b455f4b6a3ec42615ca1c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoBound/Variantfa4be880ceeb05ea6d60626efdabce729b57e8dbd6b455f4b6a3ec42615ca1c2.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19cf7da3dc2279ac911d174b9dc3a88db1b51853` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
