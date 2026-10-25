# registerInitAttr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9d850dd5fc020e5d09ca6500f51e5a7b7b5668883c74a8067e129adb80d0a09",
  "kind": "def",
  "lexical_name": "registerInitAttr",
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
  "slug": "registerinitattr--fbd330dac1d6b7f1d881d3f6",
  "source": {
    "blob": "85e2af84af2515ac600c17ff08f48ad42033b091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbd330dac1d6b7f1d881d3f677a51dfb78f9a2d69cea5f02c95c1e27fb46a66f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9d850dd5fc020e5d09ca6500f51e5a7b7b5668883c74a8067e129adb80d0a09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerInitAttr (attrName : Name) (runAfterImport : Bool) (ref : Name := by exact decl_name%) : IO (ParametricAttribute Name) :=
  registerInitAttrInner attrName runAfterImport ref

/--
Registers an initialization procedure. Initialization procedures are run in files that import the
file they are defined in.

This attribute comes in two kinds: Without arguments, the tagged declaration should have type
`IO Unit` and are simply run during initialization. With a declaration name as a argument, the
tagged declaration should be an opaque constant and the provided declaration name an action in `IO`
that returns a value of the type of the tagged declaration. Such initialization procedures store
the resulting value and make it accessible through the tagged declaration.

The `initialize` command should usually be preferred over using this attribute directly.
-/
@[builtin_doc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e2af84af2515ac600c17ff08f48ad42033b091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
