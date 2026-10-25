# on_module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c29395300d83400090d7335ee3ba6f1707075de94838749327de74c86b65f8f3",
  "kind": "def",
  "lexical_name": "on_module",
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
  "slug": "on-module--c1dd07832fc88e02ce0cf4ee",
  "source": {
    "blob": "71d6232243cc8248929ed72819235be0cd707e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant4c6a850ad137d9daf4f9d4c5ebb11a06f52f0fa9280cacaa098c8ca4608ef068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1dd07832fc88e02ce0cf4eecf94129df1f6cf05dee97d5eccecbe9242d41e94",
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

Occurrence: `declaration:c29395300d83400090d7335ee3ba6f1707075de94838749327de74c86b65f8f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
    def on_module(self, module_name: str, result: FileResult | None, error: Exception | None):
        with self.lock:
            if result:
                self.total_removed += result.removed
                self.total_kept += result.kept
                if result.removed > 0 and result.kept == 0:
                    sym = "\u2713"
                elif result.removed > 0:
                    sym = "~"
                else:
                    sym = "\u00b7"
                parts = []
                if result.removed:
                    parts.append(f"-{result.removed}")
                if result.kept:
                    parts.append(f"kept {result.kept}")
                if result.skipped:
                    parts.append(f"skipped {result.skipped}")
                detail = " ".join(parts)
                self.messages.append(f"  {sym} {module_name} {detail}")
            elif error:
                self.messages.append(f"  ! {module_name}: {error}")
            self._redraw()


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant4c6a850ad137d9daf4f9d4c5ebb11a06f52f0fa9280cacaa098c8ca4608ef068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant4c6a850ad137d9daf4f9d4c5ebb11a06f52f0fa9280cacaa098c8ca4608ef068.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71d6232243cc8248929ed72819235be0cd707e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
