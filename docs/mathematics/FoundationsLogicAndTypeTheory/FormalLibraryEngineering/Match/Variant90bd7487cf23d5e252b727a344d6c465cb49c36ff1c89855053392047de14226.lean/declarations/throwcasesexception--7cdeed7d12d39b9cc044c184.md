# throwCasesException

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c36be5d8364a3ebe36db55e161e1a8a255f9dc3a179ca470d376f0fddaeaa52",
  "kind": "def",
  "lexical_name": "throwCasesException",
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
  "slug": "throwcasesexception--7cdeed7d12d39b9cc044c184",
  "source": {
    "blob": "5db035b1778fff6b7854151067e4d3b3754e15d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 539,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cdeed7d12d39b9cc044c18403ac735b43ad3d28f5445815d94812f0cb783dbf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c36be5d8364a3ebe36db55e161e1a8a255f9dc3a179ca470d376f0fddaeaa52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def throwCasesException (p : Problem) (ex : Exception) : MetaM α := do
  match ex with
  | .error ref msg =>
    let exampleMsg :=
      if hasNonTrivialExample p then m!" after processing{indentD <| examplesToMessageData p.examples}" else ""
    throw <| Exception.error ref <| msg.composePreservingKind <| m!"{exampleMsg}\n" ++
              "the dependent pattern matcher can solve the following kinds of equations\n" ++
              "- <var> = <term> and <term> = <var>\n" ++
              "- <term> = <term> where the terms are definitionally equal\n" ++
              "- <constructor> = <constructor>, examples: List.cons x xs = List.cons y ys, and List.cons x xs = List.nil"
  | _ => throw ex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant90bd7487cf23d5e252b727a344d6c465cb49c36ff1c89855053392047de14226.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5db035b1778fff6b7854151067e4d3b3754e15d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
