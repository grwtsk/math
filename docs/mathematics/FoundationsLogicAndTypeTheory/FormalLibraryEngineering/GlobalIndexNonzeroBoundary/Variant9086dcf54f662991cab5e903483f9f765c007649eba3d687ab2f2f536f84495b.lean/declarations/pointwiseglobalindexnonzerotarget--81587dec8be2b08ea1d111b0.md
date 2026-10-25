# PointwiseGlobalIndexNonzeroTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c16a5a3959bcc8db2c8b8cc93d83f781d0c7a1f515d7f14c33abdf9bcd1a4b04",
  "kind": "structure",
  "lexical_name": "PointwiseGlobalIndexNonzeroTarget",
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
  "slug": "pointwiseglobalindexnonzerotarget--81587dec8be2b08ea1d111b0",
  "source": {
    "blob": "855f02c6fa7f749d4e1d8953506c57bfbf82bf89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalIndexNonzeroBoundary/Variant9086dcf54f662991cab5e903483f9f765c007649eba3d687ab2f2f536f84495b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81587dec8be2b08ea1d111b0126768dacd9dcc6f2bcd6bb470a608ebf327ad0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalIndexNonzeroBoundary/Variant9086dcf54f662991cab5e903483f9f765c007649eba3d687ab2f2f536f84495b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c16a5a3959bcc8db2c8b8cc93d83f781d0c7a1f515d7f14c33abdf9bcd1a4b04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PointwiseGlobalIndexNonzeroTarget
    (M : DerivedSheaf.MellKTheory)
    (F : ArithmeticFamily) where
  indexFamily : FamiliesIndexClass M F
  pointwiseNonzero : Prop
  knownAsTheorem : Bool := false
  warning :
    String :=
      "Pointwise global nonvanishing is a theorem target, not a current theorem."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalIndexNonzeroBoundary/Variant9086dcf54f662991cab5e903483f9f765c007649eba3d687ab2f2f536f84495b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalIndexNonzeroBoundary/Variant9086dcf54f662991cab5e903483f9f765c007649eba3d687ab2f2f536f84495b.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `855f02c6fa7f749d4e1d8953506c57bfbf82bf89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
