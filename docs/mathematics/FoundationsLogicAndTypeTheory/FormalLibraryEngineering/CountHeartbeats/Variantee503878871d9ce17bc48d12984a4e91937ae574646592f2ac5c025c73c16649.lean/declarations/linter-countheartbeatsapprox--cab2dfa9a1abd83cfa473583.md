# linter.countHeartbeatsApprox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:638919fc79312a905e68365113d9553c0131e74dfe34a829c902f8087d726835",
  "kind": "register_option",
  "lexical_name": "linter.countHeartbeatsApprox",
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
  "slug": "linter-countheartbeatsapprox--cab2dfa9a1abd83cfa473583",
  "source": {
    "blob": "a04e346c56f80007478c10fef9c5e71739f7bd87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantee503878871d9ce17bc48d12984a4e91937ae574646592f2ac5c025c73c16649.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cab2dfa9a1abd83cfa4735832376f27dedd2fd42642294fc0595e6b395d2527a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantee503878871d9ce17bc48d12984a4e91937ae574646592f2ac5c025c73c16649.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `register_option` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:638919fc79312a905e68365113d9553c0131e74dfe34a829c902f8087d726835`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
register_option linter.countHeartbeatsApprox : Bool := {
  defValue := false
  descr := "if set to `true`, then the countHeartbeats linter rounds down \
            to the nearest 1000 the heartbeat count"
}

namespace CountHeartbeats

@[inherit_doc Mathlib.Linter.linter.countHeartbeats,
deprecated "use `#count_heartbeats in` or `set_option trace.profiler true` with \
  `set_option trace.profiler.useHeartbeats true`" (since := "2026-07-30")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantee503878871d9ce17bc48d12984a4e91937ae574646592f2ac5c025c73c16649.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantee503878871d9ce17bc48d12984a4e91937ae574646592f2ac5c025c73c16649.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a04e346c56f80007478c10fef9c5e71739f7bd87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
