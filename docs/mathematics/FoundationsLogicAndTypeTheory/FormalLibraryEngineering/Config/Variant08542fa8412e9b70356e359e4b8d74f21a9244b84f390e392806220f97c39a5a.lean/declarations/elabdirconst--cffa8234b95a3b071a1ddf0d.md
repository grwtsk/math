# elabDirConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25ee4a6a9a01c1f855e170c79a2ce679cb977363fb644fa7ce077b39a0703df3",
  "kind": "def",
  "lexical_name": "elabDirConst",
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
  "slug": "elabdirconst--cffa8234b95a3b071a1ddf0d",
  "source": {
    "blob": "51b685d7bf84354f67028d4d23e437854905e491",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant08542fa8412e9b70356e359e4b8d74f21a9244b84f390e392806220f97c39a5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cffa8234b95a3b071a1ddf0d91d40dd72c69b5920f14d51685b24785a71f34bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant08542fa8412e9b70356e359e4b8d74f21a9244b84f390e392806220f97c39a5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25ee4a6a9a01c1f855e170c79a2ce679cb977363fb644fa7ce077b39a0703df3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabDirConst : TermElab := fun stx expectedType? => do
  let exp :=
    if let some dir := dirExt.getState (← getEnv) then
      let str := Syntax.mkStrLit dir.toString (SourceInfo.fromRef stx)
      Syntax.mkApp (mkCIdentFrom stx ``System.FilePath.mk) #[str]
    else
      -- `id` app forces Lean to show macro's doc rather than the constant's
      Syntax.mkApp (mkCIdentFrom stx ``id) #[mkCIdentFrom stx ``dummyDir]
  withMacroExpansion stx exp <| elabTerm exp expectedType?

/--
A dummy default constant for `get_config` to make it type check
outside Lakefile elaboration (e.g., when editing).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant08542fa8412e9b70356e359e4b8d74f21a9244b84f390e392806220f97c39a5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant08542fa8412e9b70356e359e4b8d74f21a9244b84f390e392806220f97c39a5a.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51b685d7bf84354f67028d4d23e437854905e491` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
