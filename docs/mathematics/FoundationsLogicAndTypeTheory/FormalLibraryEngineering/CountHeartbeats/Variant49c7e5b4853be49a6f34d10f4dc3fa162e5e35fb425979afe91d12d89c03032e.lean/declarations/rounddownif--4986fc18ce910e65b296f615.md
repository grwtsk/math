# roundDownIf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eda33f1079d1b3ad3c899ebaadd91b8030ccd9f12a6f86215b8a6ea5142d3fb2",
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
  "slug": "rounddownif--4986fc18ce910e65b296f615",
  "source": {
    "blob": "bdd59548ea7aee17214e1c5a95e49c1a2c3cd52d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4986fc18ce910e65b296f6153712a2357ba228774d7d3aa9f927bdc1300534a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eda33f1079d1b3ad3c899ebaadd91b8030ccd9f12a6f86215b8a6ea5142d3fb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–139.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant49c7e5b4853be49a6f34d10f4dc3fa162e5e35fb425979afe91d12d89c03032e.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd59548ea7aee17214e1c5a95e49c1a2c3cd52d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
