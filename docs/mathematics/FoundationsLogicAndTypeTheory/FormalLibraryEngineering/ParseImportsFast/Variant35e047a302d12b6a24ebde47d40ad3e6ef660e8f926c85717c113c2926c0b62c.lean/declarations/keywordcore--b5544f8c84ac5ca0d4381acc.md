# keywordCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:999fffd3475fc02d9c6cdd1dfab9c4a19b37c5a27d5d9cbe02c576bffba68d70",
  "kind": "def",
  "lexical_name": "keywordCore",
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
  "slug": "keywordcore--b5544f8c84ac5ca0d4381acc",
  "source": {
    "blob": "7ef54dfcae1459216929a50bd4317934c9e37c47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5544f8c84ac5ca0d4381acc9ae9978798aa3f6e8abe986d6ea0832cc95441c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:999fffd3475fc02d9c6cdd1dfab9c4a19b37c5a27d5d9cbe02c576bffba68d70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] partial def keywordCore (k : String) (failure : Parser) (success : Parser) : Parser := fun input s =>
  let rec @[specialize] go (i j : String.Pos.Raw) : State :=
    if h₁ : i.atEnd k then
      success input <| whitespace input (s.setPos j)
    else if h₂ : j.atEnd input then
      failure input s
    else
      let curr₁ := i.get' k h₁
      let curr₂ := j.get' input h₂
      if curr₁ != curr₂ then
        failure input s
      else
        go (i.next' k h₁) (j.next' input h₂)
  go 0 s.pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ef54dfcae1459216929a50bd4317934c9e37c47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
