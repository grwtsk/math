# ofPosition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a28b17e1c35aff64a38ace64641329cf2dc5c0e6ff5a9b2e2abf341230c730ac",
  "kind": "def",
  "lexical_name": "ofPosition",
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
  "slug": "ofposition--c1808e0bc2dea64ae1464a0e",
  "source": {
    "blob": "daaacce52ab4320b949e8e1b1d4c63d7c975c11b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantce3b9db3222e76df137ceba703ed6f93106ad3e64b14fbc983e3a7d8765afaae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1808e0bc2dea64ae1464a0eab4d9922dca8b3f1239c6fa2eb9b6d8a7ecd0d42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantce3b9db3222e76df137ceba703ed6f93106ad3e64b14fbc983e3a7d8765afaae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a28b17e1c35aff64a38ace64641329cf2dc5c0e6ff5a9b2e2abf341230c730ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofPosition (text : FileMap) (pos : Position) : String.Pos.Raw :=
  let colPos :=
    if h : pos.line - 1 < text.positions.size then
      text.positions[pos.line - 1]
    else if text.positions.isEmpty then
      0
    else
      text.positions.back!
  (text.source.pos! colPos).nextn pos.column |>.offset

/--
Returns the position of the start of (1-based) line `line`.
This gives the same result as `map.ofPosition ⟨line, 0⟩`, but is more efficient.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantce3b9db3222e76df137ceba703ed6f93106ad3e64b14fbc983e3a7d8765afaae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Position/Variantce3b9db3222e76df137ceba703ed6f93106ad3e64b14fbc983e3a7d8765afaae.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daaacce52ab4320b949e8e1b1d4c63d7c975c11b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
