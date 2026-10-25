# isAllowedCharacter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ef0f5086d26ed3d57fe4f5026db561b933832c340102aabe53896feaa70802b",
  "kind": "def",
  "lexical_name": "isAllowedCharacter",
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
  "slug": "isallowedcharacter--0749d812c49b6fec617bbcc6",
  "source": {
    "blob": "d973e241ec25888f7f0dc75bfcf83df63f05fc97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Varianta03698ebf9730e036891781072bd1cb84aa270456cbafcf09a05527441e89109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0749d812c49b6fec617bbcc63de7c7a24ad6e372ef081c2099d5e536920b4d6f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Varianta03698ebf9730e036891781072bd1cb84aa270456cbafcf09a05527441e89109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ef0f5086d26ed3d57fe4f5026db561b933832c340102aabe53896feaa70802b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def isAllowedCharacter (c : Char) : Bool :=
  ASCII.allowed c
  || withVSCodeAbbrev.contains c
  || othersInMathlib.contains c
  || emojis.contains c
  || nonEmojis.contains c
  || unrestricted.contains c
  || c == UnicodeVariant.emoji
  || c == UnicodeVariant.text

/-- Provide default replacement (`String`) for a disallowed character, or `none` if none defined -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Varianta03698ebf9730e036891781072bd1cb84aa270456cbafcf09a05527441e89109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnicodeLinter/Varianta03698ebf9730e036891781072bd1cb84aa270456cbafcf09a05527441e89109.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d973e241ec25888f7f0dc75bfcf83df63f05fc97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
