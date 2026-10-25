# RelevantArithmeticFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fbe30d1800b54454a25f433d9c3e22935bdef2ab4941c35246ce4b6e092c0da",
  "kind": "structure",
  "lexical_name": "RelevantArithmeticFamily",
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
  "slug": "relevantarithmeticfamily--0fbe55e72b382a12a3f44f67",
  "source": {
    "blob": "f8259d66a3025fbee7d4aba2f268f175cf6b8a31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalIndexNonzero/Variant5fe20eb52beae881eae3baffde72c18d06abc3c6299dc6deceddbebdc6cff27f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fbe55e72b382a12a3f44f670e84d3560dc28eef8bce1eca3c3e172f25de16af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalIndexNonzero/Variant5fe20eb52beae881eae3baffde72c18d06abc3c6299dc6deceddbebdc6cff27f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fbe30d1800b54454a25f433d9c3e22935bdef2ab4941c35246ce4b6e092c0da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RelevantArithmeticFamily
    (M : DerivedSheaf.MellKTheory) where
  Object : Type _
  relevant : Object → Prop
  kIndexAt : Object → DerivedSheaf.KTheoryIndex M
  sourceLabel : String

/--
Uniform nonvanishing of the K-index over the relevant arithmetic family.

This is currently a contract surface: it records the theorem target as a field.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalIndexNonzero/Variant5fe20eb52beae881eae3baffde72c18d06abc3c6299dc6deceddbebdc6cff27f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalIndexNonzero/Variant5fe20eb52beae881eae3baffde72c18d06abc3c6299dc6deceddbebdc6cff27f.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8259d66a3025fbee7d4aba2f268f175cf6b8a31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
