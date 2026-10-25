# roundDownIf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adfeed74cd82cfcfb67333cb889586278e5cb7848e4e43942002b9b5f7f268f3",
  "kind": "def",
  "lexical_name": "roundDownIf",
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
  "slug": "rounddownif--e9bf023a6a185098cc608d31",
  "source": {
    "blob": "a04e346c56f80007478c10fef9c5e71739f7bd87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantee503878871d9ce17bc48d12984a4e91937ae574646592f2ac5c025c73c16649.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9bf023a6a185098cc608d31d31424d857900feac475334883799b695f5b7f11",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantee503878871d9ce17bc48d12984a4e91937ae574646592f2ac5c025c73c16649.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adfeed74cd82cfcfb67333cb889586278e5cb7848e4e43942002b9b5f7f268f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def roundDownIf (n : Nat) (approx : Bool) : String :=
  if approx then s!"approximately {(n / 1000) * 1000}" else s!"{n}"

set_option linter.style.maxHeartbeats false in
/--
`#count_heartbeats in cmd` counts the heartbeats used in the enclosed command `cmd`.
Use `#count_heartbeats` to count the heartbeats in *all* the following declarations.

This is most useful for setting sufficient but reasonable limits via `set_option maxHeartbeats`
for long-running declarations.

If you do so, please resist the temptation to set the limit as low as possible.
As the `simp` set and other features of the library evolve,
other contributors will find that their (likely unrelated) changes
have pushed the declaration over the limit.
`count_heartbeats in` will automatically suggest a `set_option maxHeartbeats` via "Try this:"
using the least number of the form `2^k * 200000` that suffices.

Note that the internal heartbeat counter accessible via `IO.getNumHeartbeats`
has granularity 1000 times finer than the limits set by `set_option maxHeartbeats`.
As this is intended as a user command, we divide by 1000.

The optional `approximately` keyword rounds down the heartbeats to the nearest thousand.
This helps make the tests more stable to small changes in heartbeats.
To use this functionality, use `#count_heartbeats approximately in cmd`.

`cmd` is elaborated with `Elab.async` disabled: with async elaboration, theorem bodies are
elaborated in a separate task, whose heartbeats would otherwise not be counted.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantee503878871d9ce17bc48d12984a4e91937ae574646592f2ac5c025c73c16649.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantee503878871d9ce17bc48d12984a4e91937ae574646592f2ac5c025c73c16649.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a04e346c56f80007478c10fef9c5e71739f7bd87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
