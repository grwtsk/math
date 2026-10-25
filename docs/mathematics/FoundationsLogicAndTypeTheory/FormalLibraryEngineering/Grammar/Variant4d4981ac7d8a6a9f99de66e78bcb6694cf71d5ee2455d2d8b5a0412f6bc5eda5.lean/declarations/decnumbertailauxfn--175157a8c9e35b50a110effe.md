# decNumberTailAuxFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01c1b5f1f55e95e27aee5849ccce9eb6c776db410bea2cfd7b0cc87705fc5468",
  "kind": "def",
  "lexical_name": "decNumberTailAuxFn",
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
  "slug": "decnumbertailauxfn--175157a8c9e35b50a110effe",
  "source": {
    "blob": "c4b0dbba105840ba74ca49718e30d8819f89c667",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 324,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant4d4981ac7d8a6a9f99de66e78bcb6694cf71d5ee2455d2d8b5a0412f6bc5eda5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:175157a8c9e35b50a110effee7bc46e0b01a34e5a4ab631796b875060aaf0fb3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant4d4981ac7d8a6a9f99de66e78bcb6694cf71d5ee2455d2d8b5a0412f6bc5eda5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01c1b5f1f55e95e27aee5849ccce9eb6c776db410bea2cfd7b0cc87705fc5468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decNumberTailAuxFn (startPos : String.Pos.Raw) (curr : Char) (nextPos : String.Pos.Raw) : ParserFn := fun c s =>
  if curr == '.' then
    let s := s.setPos nextPos
    let s := sepByChar1Fn (·.isDigit) '_' ["decimal fraction"] c s
    if s.hasError then s else
    let s := optDecExpFn c s
    if s.hasError then s else
    pushLit `Lake.Toml.float startPos skipFn c s
  else if curr == 'e' || curr == 'E' then
    let s := s.setPos nextPos
    let s := decExpFn c s
    if s.hasError then s else
    pushLit `Lake.Toml.float startPos skipFn c s
  else
    pushLit `Lake.Toml.decInt startPos skipFn c s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant4d4981ac7d8a6a9f99de66e78bcb6694cf71d5ee2455d2d8b5a0412f6bc5eda5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variant4d4981ac7d8a6a9f99de66e78bcb6694cf71d5ee2455d2d8b5a0412f6bc5eda5.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4b0dbba105840ba74ca49718e30d8819f89c667` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
