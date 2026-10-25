# elabNameConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecd4884360d16c846dd6dac7dd11a4dd8700802050caa45f55e2c067d87bdbf6",
  "kind": "def",
  "lexical_name": "elabNameConst",
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
  "slug": "elabnameconst--9798839c7356c51d5f0ddbba",
  "source": {
    "blob": "6117c673ceabaf06da02ab4914f0f4fbd2f23f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant1f7721534d9968ecc7f9673ecd7c1e8fccc4fd25ea37073c772a4df4e8ce34be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9798839c7356c51d5f0ddbbab2a638dc0cece795d12ab0eb39a449160ff5569a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant1f7721534d9968ecc7f9673ecd7c1e8fccc4fd25ea37073c772a4df4e8ce34be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecd4884360d16c846dd6dac7dd11a4dd8700802050caa45f55e2c067d87bdbf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabNameConst : TermElab := fun stx expectedType? => do
  let env ← getEnv
  unless env.contains packageDeclName do
    throwError "`__name__` can only be used after the `package` declaration"
  let ⟨idx, name⟩ := nameExt.getState env
  let name := match name with
    | .anonymous => (mkIdent <| packageDeclName.str "origName")
    | name => Name.quoteFrom stx name
  let exp := Syntax.mkCApp ``Name.num #[name, quote idx]
  withMacroExpansion stx exp <| elabTerm exp expectedType?

/--
A dummy default constant for `__dir__` to make it type check
outside Lakefile elaboration (e.g., when editing).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant1f7721534d9968ecc7f9673ecd7c1e8fccc4fd25ea37073c772a4df4e8ce34be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant1f7721534d9968ecc7f9673ecd7c1e8fccc4fd25ea37073c772a4df4e8ce34be.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6117c673ceabaf06da02ab4914f0f4fbd2f23f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
