# mkAuxDefinitionFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e610c0aa2ae29ee6134674739d1b610ee7990381a2d3ce0eba1d173f9fce6f06",
  "kind": "def",
  "lexical_name": "mkAuxDefinitionFor",
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
  "slug": "mkauxdefinitionfor--7f6781b578d8ef84da12b4e2",
  "source": {
    "blob": "64230de07a86d88a8fafce6586e8e9b71765ede9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 455,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variantefc42d621ec9fda9f66aac70b142640b42388ded960cbe072389b26ae3469401.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f6781b578d8ef84da12b4e2170cfeda895eaa7c90ddb0d1f524b72778f98999",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variantefc42d621ec9fda9f66aac70b142640b42388ded960cbe072389b26ae3469401.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e610c0aa2ae29ee6134674739d1b610ee7990381a2d3ce0eba1d173f9fce6f06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAuxDefinitionFor (name : Name) (value : Expr) (zetaDelta : Bool := false)
    (compile := true) (logCompileErrors : Bool := true) : MetaM Expr := do
  let type ← inferType value
  let type := type.headBeta
  mkAuxDefinition name type value (zetaDelta := zetaDelta) (compile := compile)
    (logCompileErrors := logCompileErrors)

/--
  Create an auxiliary theorem with the given name, type and value. It is similar to `mkAuxDefinition`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variantefc42d621ec9fda9f66aac70b142640b42388ded960cbe072389b26ae3469401.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variantefc42d621ec9fda9f66aac70b142640b42388ded960cbe072389b26ae3469401.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64230de07a86d88a8fafce6586e8e9b71765ede9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
