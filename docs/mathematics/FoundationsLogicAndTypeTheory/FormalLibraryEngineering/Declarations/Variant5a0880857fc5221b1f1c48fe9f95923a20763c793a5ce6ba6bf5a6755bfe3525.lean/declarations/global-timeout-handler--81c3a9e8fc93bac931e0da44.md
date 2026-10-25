# _global_timeout_handler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f386d5025ef5b576c05c0cbf2a11be5bfd5eee94fc92331afbf1c4d0e246e74b",
  "kind": "def",
  "lexical_name": "_global_timeout_handler",
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
  "slug": "global-timeout-handler--81c3a9e8fc93bac931e0da44",
  "source": {
    "blob": "3f8adb8219fa218696e6e17fd102253b08b5bde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 504,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant5a0880857fc5221b1f1c48fe9f95923a20763c793a5ce6ba6bf5a6755bfe3525.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81c3a9e8fc93bac931e0da44e6503bac8324a7bd97935d4f839566d28035de51",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant5a0880857fc5221b1f1c48fe9f95923a20763c793a5ce6ba6bf5a6755bfe3525.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f386d5025ef5b576c05c0cbf2a11be5bfd5eee94fc92331afbf1c4d0e246e74b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
        def _global_timeout_handler():
            print(
                f"\nGlobal timeout ({args.global_timeout}s) reached — "
                "stopping gracefully and preserving progress for next run...",
                flush=True,
            )
            traverser.shutdown_event.set()

        _timer = threading.Timer(args.global_timeout, _global_timeout_handler)
        _timer.daemon = True
        _timer.start()

    display = _RemoveDisplay()
    action = make_process_file(removable_map, options, args.timeout, traverser, args.value)

    display.start(len(full_dag.modules))
    try:
        results = traverser.traverse(
            full_dag,
            action,
            direction="backward",
            max_workers=args.max_workers,
            progress_callback=display.on_progress,
            module_callback=display.on_module,
            skip=skip_modules,
            weights=weights,
        )
    except KeyboardInterrupt:
        display.stop()
        print("\nInterrupted. Press Ctrl-C again if the process doesn't exit.", flush=True)
        traverser.force_exit(1)
    finally:
        display.stop()
        if _timer is not None:
            _timer.cancel()

    # Step 6: summarize (only count target modules, not skipped ones)
    target_results = [tr for tr in results if tr.module_name in target_modules]
    summary = Summary(total_files=len(target_results), duration=time.time() - start_time)

    for tr in target_results:
        r: FileResult | None = tr.result
        if tr.error:
            if isinstance(tr.error, ShutdownError):
                summary.files_timed_out += 1
            else:
                summary.files_errored += 1
            continue
        if r is None:
            continue
        summary.total_removed += r.removed
        summary.total_kept += r.kept
        summary.total_skipped += r.skipped
        if r.removed > 0 and r.kept == 0:
            summary.files_fully_cleaned += 1
        elif r.removed > 0:
            summary.files_partially_cleaned += 1
        else:
            summary.files_unchanged += 1

    print_summary(summary)
    write_github_outputs(summary)

    # Clean up progress file only when the run fully completed without errors.
    # If a global timeout fired or there were errors, keep it for the next run.
    if summary.files_errored == 0 and summary.files_timed_out == 0 and PROGRESS_FILE.exists():
        PROGRESS_FILE.unlink()
        print("  (progress file cleaned up)")
    elif summary.files_timed_out > 0:
        print("  (progress file kept — resume on next run)")


if __name__ == "__main__":
    main()
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant5a0880857fc5221b1f1c48fe9f95923a20763c793a5ce6ba6bf5a6755bfe3525.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant5a0880857fc5221b1f1c48fe9f95923a20763c793a5ce6ba6bf5a6755bfe3525.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f8adb8219fa218696e6e17fd102253b08b5bde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
