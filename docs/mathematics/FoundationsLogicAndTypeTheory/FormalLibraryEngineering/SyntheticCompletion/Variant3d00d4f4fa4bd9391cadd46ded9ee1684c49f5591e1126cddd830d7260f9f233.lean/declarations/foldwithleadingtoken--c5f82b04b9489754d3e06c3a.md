# foldWithLeadingToken

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11a06f24aad5a50af62e6b39747b6173b2eed59010e815276aaeccf6c250e47a",
  "kind": "def",
  "lexical_name": "foldWithLeadingToken",
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
  "slug": "foldwithleadingtoken--c5f82b04b9489754d3e06c3a",
  "source": {
    "blob": "9714c7a7a11cb4df44efc50d0811e40487049aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5f82b04b9489754d3e06c3aef9aae4ba08e0c63842be1b6bd14481c7611655a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11a06f24aad5a50af62e6b39747b6173b2eed59010e815276aaeccf6c250e47a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def foldWithLeadingToken [Inhabited α]
    (f    : α → Option Syntax → Syntax → α)
    (init : α)
    (stx  : Syntax)
    : α :=
  let (_, r) := go none init stx
  r
where
  go [Inhabited α] (leadingToken? : Option Syntax) (acc : α) (stx : Syntax) : Option Syntax × α :=
    let acc := f acc leadingToken? stx
    match stx with
    | .missing  => (none, acc)
    | .atom ..  => (stx, acc)
    | .ident .. => (stx, acc)
    | .node _ _ args => Id.run do
      let mut acc := acc
      let mut lastToken? := none
      for arg in args do
        let (lastToken'?, acc') := go (lastToken? <|> leadingToken?) acc arg
        lastToken? := lastToken'? <|> lastToken?
        acc := acc'
      return (lastToken?, acc)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticCompletion/Variant3d00d4f4fa4bd9391cadd46ded9ee1684c49f5591e1126cddd830d7260f9f233.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9714c7a7a11cb4df44efc50d0811e40487049aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
