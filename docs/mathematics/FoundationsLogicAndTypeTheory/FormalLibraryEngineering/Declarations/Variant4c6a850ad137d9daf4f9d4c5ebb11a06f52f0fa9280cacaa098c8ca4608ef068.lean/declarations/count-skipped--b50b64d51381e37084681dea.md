# count_skipped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e66dd35a9f595d63b10953e3c685b6f65d964a8e7a3fa2a2842a3dbd824c506e",
  "kind": "def",
  "lexical_name": "count_skipped",
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
  "slug": "count-skipped--b50b64d51381e37084681dea",
  "source": {
    "blob": "71d6232243cc8248929ed72819235be0cd707e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant4c6a850ad137d9daf4f9d4c5ebb11a06f52f0fa9280cacaa098c8ca4608ef068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b50b64d51381e37084681deac9c3ba1a57b9e08fd67a74ba8e42abfb60e8e1e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant4c6a850ad137d9daf4f9d4c5ebb11a06f52f0fa9280cacaa098c8ca4608ef068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e66dd35a9f595d63b10953e3c685b6f65d964a8e7a3fa2a2842a3dbd824c506e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def count_skipped(filepath: Path, options: list[str], value: str = "false") -> int:
    """Count set_option lines with trailing/preceding comments."""
    commented_pats = [commented_pattern(opt, value) for opt in options]
    removable_pats = [removable_pattern(opt, value) for opt in options]
    lines = filepath.read_text().splitlines()
    count = 0
    for i, line in enumerate(lines):
        if any(p.match(line) for p in commented_pats):
            count += 1
        elif any(p.match(line) for p in removable_pats) and is_annotated(lines, i):
            count += 1
    return count


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant4c6a850ad137d9daf4f9d4c5ebb11a06f52f0fa9280cacaa098c8ca4608ef068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant4c6a850ad137d9daf4f9d4c5ebb11a06f52f0fa9280cacaa098c8ca4608ef068.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71d6232243cc8248929ed72819235be0cd707e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
