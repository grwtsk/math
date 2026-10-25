# computeModuleDiscrTrees

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89530c0573b043b1f57037116cebf524531bc447e2196df249637338ce8ec317",
  "kind": "def",
  "lexical_name": "computeModuleDiscrTrees",
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
  "slug": "computemodulediscrtrees--3406ee2bd1f6b907842ae43c",
  "source": {
    "blob": "39dc82d3a84ed7309efc6d03c94fb11f37b9f208",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 272,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant85e8b1df596a6fb99ac4a32038634577e899164905fbce0ff5f6a59ff5778ad8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3406ee2bd1f6b907842ae43c4990dc7aaff05dfce68b4a365edaa535eec0eaef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant85e8b1df596a6fb99ac4a32038634577e899164905fbce0ff5f6a59ff5778ad8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89530c0573b043b1f57037116cebf524531bc447e2196df249637338ce8ec317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def computeModuleDiscrTrees (choice : Choice) (parentDecl? : Option Name) :
    CoreM PreDiscrTrees := do
  let env ← getEnv
  let (pre, errors) ← foldCurrFileDecls {} librarySearchIndexConfig fun entries name cinfo ↦ do
    if name == parentDecl? then return entries
    entries.addConst choice env name cinfo
  (← errors.get).forM logError
  return .append {} pre

/-- Compute the discrimination trees for the local variables in `lctx`.
We restrict to the variables in `lctx` to avoid using introduced bound variables. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant85e8b1df596a6fb99ac4a32038634577e899164905fbce0ff5f6a59ff5778ad8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant85e8b1df596a6fb99ac4a32038634577e899164905fbce0ff5f6a59ff5778ad8.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39dc82d3a84ed7309efc6d03c94fb11f37b9f208` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
