# expandOptDocComment?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e56ef64373441c5abfda8193f247de96592e148b9eea70c65612291175f388e4",
  "kind": "def",
  "lexical_name": "expandOptDocComment?",
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
  "slug": "expandoptdoccomment--32e4f85263c683408fc8b331",
  "source": {
    "blob": "5fd3b8b258ccaf0bc21b1d29d0dc586b1076b8da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32e4f85263c683408fc8b331b98888eaafb4b4561c40450293638a0f229abd5a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e56ef64373441c5abfda8193f247de96592e148b9eea70c65612291175f388e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandOptDocComment? [Monad m] [MonadError m] (optDocComment : Syntax) : m (Option String) :=
  match optDocComment.getOptional? with
  | none   => return none
  | some s => match s[1] with
    | .atom _ val => return some (String.Pos.Raw.extract val 0 (val.rawEndPos.unoffsetBy ⟨2⟩))
    | _           => throwErrorAt s "unexpected doc string{indentD s[1]}"

section Methods

variable [Monad m] [MonadEnv m] [MonadResolveName m] [MonadError m] [MonadFinally m] [MonadMacroAdapter m] [MonadRecDepth m] [MonadTrace m] [MonadOptions m] [AddMessageContext m] [MonadLog m] [MonadInfoTree m] [MonadLiftT IO m]

/-- Elaborate declaration modifiers (i.e., attributes, `partial`, `private`, `protected`, `unsafe`, `meta`, `noncomputable`, doc string)-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd3b8b258ccaf0bc21b1d29d0dc586b1076b8da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
