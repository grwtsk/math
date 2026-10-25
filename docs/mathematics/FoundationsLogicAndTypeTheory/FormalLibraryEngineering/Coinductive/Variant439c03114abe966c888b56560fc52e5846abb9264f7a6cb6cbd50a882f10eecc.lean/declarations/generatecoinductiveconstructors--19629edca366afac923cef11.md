# generateCoinductiveConstructors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb2b19a09a79708c412da21cb18c7870bffc853bd0c81989aa0208e814a574e1",
  "kind": "def",
  "lexical_name": "generateCoinductiveConstructors",
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
  "slug": "generatecoinductiveconstructors--19629edca366afac923cef11",
  "source": {
    "blob": "c6f982dfdbe8177063e6b8a99757555d1647caeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 292,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant439c03114abe966c888b56560fc52e5846abb9264f7a6cb6cbd50a882f10eecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19629edca366afac923cef11c29311563592021f0d82643a140596f1e4a44b10",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant439c03114abe966c888b56560fc52e5846abb9264f7a6cb6cbd50a882f10eecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb2b19a09a79708c412da21cb18c7870bffc853bd0c81989aa0208e814a574e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def generateCoinductiveConstructors (numParams : Nat) (infos : Array InductiveVal)
    (coinductiveElabData : Array CoinductiveElabData) : TermElabM Unit := do
  for indType in infos, e in coinductiveElabData do
    for ctor in indType.ctors, ctorSyntax in e.ctorSyntax do
      generateCoinductiveConstructor infos ctorSyntax numParams indType.name
        <| ←getConstInfoCtor ctor

/--
  Generates `casesOn` eliminators for coinductive predicates.
  These eliminators allow pattern matching on coinductive predicates,
  enabling case analysis in proofs.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant439c03114abe966c888b56560fc52e5846abb9264f7a6cb6cbd50a882f10eecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coinductive/Variant439c03114abe966c888b56560fc52e5846abb9264f7a6cb6cbd50a882f10eecc.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6f982dfdbe8177063e6b8a99757555d1647caeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
