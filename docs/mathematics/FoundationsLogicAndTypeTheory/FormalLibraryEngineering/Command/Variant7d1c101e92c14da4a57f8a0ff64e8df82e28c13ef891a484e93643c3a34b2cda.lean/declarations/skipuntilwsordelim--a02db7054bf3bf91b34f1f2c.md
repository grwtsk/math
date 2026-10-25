# skipUntilWsOrDelim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a287677505da210d9fb6dedc8f5baa3e1132fe19bdc4ee9f5a93f0c947565b1b",
  "kind": "def",
  "lexical_name": "skipUntilWsOrDelim",
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
  "slug": "skipuntilwsordelim--a02db7054bf3bf91b34f1f2c",
  "source": {
    "blob": "593b92e505e09d437e0070bfd2af864709787de8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant7d1c101e92c14da4a57f8a0ff64e8df82e28c13ef891a484e93643c3a34b2cda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a02db7054bf3bf91b34f1f2c7d65780e5ddaf97327b39acb64776361e0db1dd6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant7d1c101e92c14da4a57f8a0ff64e8df82e28c13ef891a484e93643c3a34b2cda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a287677505da210d9fb6dedc8f5baa3e1132fe19bdc4ee9f5a93f0c947565b1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def skipUntilWsOrDelim : Parser := skipUntil fun c =>
  c.isWhitespace || c == '(' || c == ')' || c == ':' || c == '{' || c == '}' || c == '|'

/--
Syntax quotation for (sequences of) commands.
The identical syntax for term quotations takes priority,
so ambiguous quotations like `` `($x $y) `` will be parsed as an application,
not two commands. Use `` `($x:command $y:command) `` instead.
Multiple commands will be put in a `` `null `` node,
but a single command will not (so that you can directly
match against a quotation in a command kind's elaborator). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant7d1c101e92c14da4a57f8a0ff64e8df82e28c13ef891a484e93643c3a34b2cda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant7d1c101e92c14da4a57f8a0ff64e8df82e28c13ef891a484e93643c3a34b2cda.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `593b92e505e09d437e0070bfd2af864709787de8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
