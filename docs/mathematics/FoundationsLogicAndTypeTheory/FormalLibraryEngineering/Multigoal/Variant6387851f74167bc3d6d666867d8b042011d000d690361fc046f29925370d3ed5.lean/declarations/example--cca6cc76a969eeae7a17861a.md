# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00aa1243e1d24103c1c093b164e8eaa1e7237058675b5911af5c4014ad199472",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--cca6cc76a969eeae7a17861a",
  "source": {
    "blob": "94abb7cd4063519f923f193473d49a9c44256d2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant6387851f74167bc3d6d666867d8b042011d000d690361fc046f29925370d3ed5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cca6cc76a969eeae7a17861a227ea90a16eddca7e54aa70ba6ddbcb50490092c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant6387851f74167bc3d6d666867d8b042011d000d690361fc046f29925370d3ed5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00aa1243e1d24103c1c093b164e8eaa1e7237058675b5911af5c4014ad199472`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {n : Nat} (hn : n = 0) : n + 0 = 0 := by
  conv =>
    congr
    rw [← Nat.add_zero 0]
  conv_lhs =>
    congr
    rw [← Nat.add_zero n]
    rfl
  conv_rhs =>
    rw [← Nat.add_zero 0]
    congr
    rfl
    rfl
  by_cases 0 = 0
  assumption
  assumption

set_option linter.unusedTactic false in
#guard_msgs(drop warning) in
/--
warning: The following tactic starts with 2 goals and ends with 1 goal, 1 of which is not operated on.
  rfl
Please focus on the current goal, for instance using `·` (typed as "\.").
note: this linter can be disabled with `set_option linter.style.multiGoal false`
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant6387851f74167bc3d6d666867d8b042011d000d690361fc046f29925370d3ed5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant6387851f74167bc3d6d666867d8b042011d000d690361fc046f29925370d3ed5.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94abb7cd4063519f923f193473d49a9c44256d2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
