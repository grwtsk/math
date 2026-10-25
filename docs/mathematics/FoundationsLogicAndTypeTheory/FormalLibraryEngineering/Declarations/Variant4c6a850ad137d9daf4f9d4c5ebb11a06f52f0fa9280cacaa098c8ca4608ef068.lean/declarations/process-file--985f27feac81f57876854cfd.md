# process_file

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26de72a49a9dde30582117347c974763026e3ce9a6896bd93952703de4cd42f9",
  "kind": "def",
  "lexical_name": "process_file",
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
  "slug": "process-file--985f27feac81f57876854cfd",
  "source": {
    "blob": "71d6232243cc8248929ed72819235be0cd707e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 254,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant4c6a850ad137d9daf4f9d4c5ebb11a06f52f0fa9280cacaa098c8ca4608ef068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:985f27feac81f57876854cfd5c20e2ea2281041d92c9c2ef8a304adc1669a4cf",
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

Occurrence: `declaration:26de72a49a9dde30582117347c974763026e3ce9a6896bd93952703de4cd42f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
    def process_file(module_name: str, filepath: Path) -> FileResult:
        abs_path = filepath
        removable_lines = removable_map.get(module_name, [])
        skipped = count_skipped(abs_path, options, value)

        if not removable_lines:
            save_progress(module_name, file_sha256(abs_path))
            return FileResult(skipped=skipped)

        original_text = abs_path.read_text()
        original = original_text.splitlines(keepends=True)

        traverser.inflight_register(abs_path, original_text)

        try:
            # Phase 1: try removing ALL at once
            removable_set = set(removable_lines)
            new_lines = [line for i, line in enumerate(original) if i not in removable_set]
            abs_path.write_text("".join(new_lines))

            ok, _ = traverser.lake_build(module_name, PROJECT_DIR, timeout)
            if ok:
                save_progress(module_name, file_sha256(abs_path))
                return FileResult(
                    removable=len(removable_lines),
                    removed=len(removable_lines),
                    skipped=skipped,
                )

            # Phase 2: revert, then one-at-a-time bottom-to-top
            abs_path.write_text(original_text)
            current = list(original)
            removed = 0
            kept = 0

            for line_idx in reversed(removable_lines):
                test = current[:line_idx] + current[line_idx + 1 :]
                abs_path.write_text("".join(test))

                ok, _ = traverser.lake_build(module_name, PROJECT_DIR, timeout)
                if ok:
                    current = test
                    removed += 1
                else:
                    abs_path.write_text("".join(current))
                    kept += 1

            save_progress(module_name, file_sha256(abs_path))
            return FileResult(
                removable=len(removable_lines),
                removed=removed,
                kept=kept,
                skipped=skipped,
            )
        except BaseException:
            abs_path.write_text(original_text)
            raise
        finally:
            traverser.inflight_unregister(abs_path)

    return process_file


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant4c6a850ad137d9daf4f9d4c5ebb11a06f52f0fa9280cacaa098c8ca4608ef068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant4c6a850ad137d9daf4f9d4c5ebb11a06f52f0fa9280cacaa098c8ca4608ef068.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71d6232243cc8248929ed72819235be0cd707e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
