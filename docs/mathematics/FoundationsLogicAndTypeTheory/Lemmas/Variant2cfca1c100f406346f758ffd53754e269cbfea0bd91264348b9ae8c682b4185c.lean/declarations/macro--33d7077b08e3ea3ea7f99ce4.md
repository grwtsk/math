# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf4747c5274e9fa0a249ba9feffe1c95b6be80755893ed2271d744abfd458280",
  "kind": "macro",
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
  "slug": "macro--33d7077b08e3ea3ea7f99ce4",
  "source": {
    "blob": "61ad26ebe0834d0e578e73d6eb5fb5534bc245bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 511,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant2cfca1c100f406346f758ffd53754e269cbfea0bd91264348b9ae8c682b4185c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33d7077b08e3ea3ea7f99ce4530f9133e0c079961918b0faa80d67f4f309526e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Lemmas/Variant2cfca1c100f406346f758ffd53754e269cbfea0bd91264348b9ae8c682b4185c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf4747c5274e9fa0a249ba9feffe1c95b6be80755893ed2271d744abfd458280`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
scoped macro (name := transfer_rw) "transfer_rw" : tactic => `(tactic|
    (repeat first | rw [← to_nat_inj] | rw [← lt_to_nat] | rw [← le_to_nat]
     repeat first | rw [add_to_nat] | rw [mul_to_nat] | rw [cast_one] | rw [cast_zero]))

/--
This tactic tries to prove (in)equalities about `PosNum`s by transferring them to the `Nat` world
and then trying to call `grind`.
```lean
example (n : PosNum) (m : PosNum) : n ≤ n + m := by transfer
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Lemmas/Variant2cfca1c100f406346f758ffd53754e269cbfea0bd91264348b9ae8c682b4185c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant2cfca1c100f406346f758ffd53754e269cbfea0bd91264348b9ae8c682b4185c.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61ad26ebe0834d0e578e73d6eb5fb5534bc245bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
