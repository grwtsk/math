# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4565c772e7d88d6d445fc484d99478a97b5fdd69cda2eb8b29aa6173780a46be",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--fa62f6e7c77f86aa892f0d55",
  "source": {
    "blob": "9f9f761901f9691805ec9b93186d84c435d3e31b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtendedBinder/Variant550cb13259af614056393c96b9c14cd33747faf21adc01d2b20547439b24701f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa62f6e7c77f86aa892f0d55c0bdbf91295478c259b475a1fe2a405525406e60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtendedBinder/Variant550cb13259af614056393c96b9c14cd33747faf21adc01d2b20547439b24701f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4565c772e7d88d6d445fc484d99478a97b5fdd69cda2eb8b29aa6173780a46be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
macro_rules -- TODO: merging the two macro_rules breaks expansion
  | `(∀ᵉ _, $b) => `(∀ _, $b)
  | `(∀ᵉ $x:ident, $b) => `(∀ $x:ident, $b)
  | `(∀ᵉ _ : $ty:term, $b) => `(∀ _ : $ty:term, $b)
  | `(∀ᵉ $x:ident : $ty:term, $b) => `(∀ $x:ident : $ty:term, $b)
  | `(∀ᵉ $x:binderIdent $p:binderPred, $b) => `(∀ $x:binderIdent $p:binderPred, $b)

open Parser.Command in
/--
Declares a binder predicate.  For example:
```
binder_predicate x " > " y:term => `($x > $y)
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtendedBinder/Variant550cb13259af614056393c96b9c14cd33747faf21adc01d2b20547439b24701f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtendedBinder/Variant550cb13259af614056393c96b9c14cd33747faf21adc01d2b20547439b24701f.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f9f761901f9691805ec9b93186d84c435d3e31b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
