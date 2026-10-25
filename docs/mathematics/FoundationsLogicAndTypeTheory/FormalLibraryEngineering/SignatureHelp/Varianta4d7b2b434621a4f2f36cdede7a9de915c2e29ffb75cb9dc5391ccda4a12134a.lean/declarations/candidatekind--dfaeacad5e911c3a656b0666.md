# CandidateKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf2b51d85cb49acd991e1790c45462f24c905a35120b2c93626f2e00c9767413",
  "kind": "inductive",
  "lexical_name": "CandidateKind",
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
  "slug": "candidatekind--dfaeacad5e911c3a656b0666",
  "source": {
    "blob": "9fac5c6ba9ebc6409b5a481b9f75eb5a71778de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfaeacad5e911c3a656b06661029eea28dc35170060441b4427c97cfcea24551",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf2b51d85cb49acd991e1790c45462f24c905a35120b2c93626f2e00c9767413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive CandidateKind where
  /--
  Cursor is in the position of the argument to a pipe, like `<|` or `$`. Low precedence.
  Ensures that `fun <| otherFun <cursor>` yields the signature help of `otherFun`, not `fun`.
  -/
  | pipeArg
  /--
  Cursor is in the position of the trailing whitespace of some term. Medium precedence.
  Ensures that `fun otherFun <cursor>` yields the signature help of `fun`, not `otherFun`.
  -/
  | termArg
  /--
  Cursor is in the position of the argument to a function that already has other arguments applied
  to it. High precedence.
  -/
  | appArg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Varianta4d7b2b434621a4f2f36cdede7a9de915c2e29ffb75cb9dc5391ccda4a12134a.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fac5c6ba9ebc6409b5a481b9f75eb5a71778de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
