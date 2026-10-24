# projectShell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd4aa9ccd45052e4c517536225d6655d65d6f3ed05607a7d34a2fa9083c9a718",
  "kind": "def",
  "lexical_name": "projectShell",
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
  "slug": "projectshell--9e1bdb5102098c4ef04124d7",
  "source": {
    "blob": "fde2f19cbfce0b804ddf0bb5c9ba5a3958b2754d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 395,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variant7190ea30ad8dd941cd59428719ef18232328a80739e3ea7b66fbac80ed7a6fbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e1bdb5102098c4ef04124d7f04100a89aaabdd7d21d2831b7cdebc8941dd4a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Envelope/Variant7190ea30ad8dd941cd59428719ef18232328a80739e3ea7b66fbac80ed7a6fbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd4aa9ccd45052e4c517536225d6655d65d6f3ed05607a7d34a2fa9083c9a718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def projectShell (packet : Packet) : Option Shell :=
  if packet.envelope.shell = reference packet.shell.header then some packet.shell else none

/-- Wrapping retains both whole original records and adds two exact ordered references. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Envelope/Variant7190ea30ad8dd941cd59428719ef18232328a80739e3ea7b66fbac80ed7a6fbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variant7190ea30ad8dd941cd59428719ef18232328a80739e3ea7b66fbac80ed7a6fbc.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fde2f19cbfce0b804ddf0bb5c9ba5a3958b2754d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
