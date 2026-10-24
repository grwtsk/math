# y

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:838fc202d7b5372a00306712e2ed8767139eb4513231660a8413c2f28f3af1e5",
  "kind": "def",
  "lexical_name": "y",
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
  "slug": "y--8a161f42eefc2e51efe630cd",
  "source": {
    "blob": "0c3d239616c3b8f95ad31260b8a6b5a81d8229a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nondet/Varianteba8fc1199db4aa11766a0294273caf2db9275e121e249ba4946a6818a0789f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a161f42eefc2e51efe630cd9b14abfc44c9084710bd2e23357fab693af0d922",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nondet/Varianteba8fc1199db4aa11766a0294273caf2db9275e121e249ba4946a6818a0789f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:838fc202d7b5372a00306712e2ed8767139eb4513231660a8413c2f28f3af1e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def y : Nondet M Nat :=
  (iotaM 32)
  |>.bind fun x => do
    record x
    divisorsM x
  |>.bind fun x => do
    record x
    divisorsM x

/-- info: [8, 4, 2, 1, 4, 2, 1, 2, 1, 1, 5, 3, 1, 5, 2, 1, 3, 2, 1, 1, 1, 1, 7] -/
#guard_msgs in
#eval show MetaM (List Nat) from StateT.run' (y.toMLList'.takeAsList 23) []

-- All ways to find `4 ∣ a ∣ b`, with `b = 32, ..., 1`.
/-- info: ([(4, [16, 32]), (4, [8, 32]), (4, [12, 24]), (4, [8, 24]), (4, [8, 16])], [1]) -/
#guard_msgs in
#eval show MetaM (List (Nat × List Nat) × List Nat) from
  StateT.run (y.filter (· = 4)).toMLList.force []

/-- info: [15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1] -/
#guard_msgs in
#eval (iotaM 15 : Nondet MetaM Nat).toList'

-- Depth first search of the divisors of 255.
/-- info: [255, 85, 17, 1, 5, 1, 1, 51, 17, 1, 3, 1, 1, 17, 1, 15, 5, 1, 3, 1, 1, 5, 1, 3, 1, 1] -/
#guard_msgs in
#eval (Nondet.iterate divisorsM 255 : Nondet Id Nat).toList'
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nondet/Varianteba8fc1199db4aa11766a0294273caf2db9275e121e249ba4946a6818a0789f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nondet/Varianteba8fc1199db4aa11766a0294273caf2db9275e121e249ba4946a6818a0789f2.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c3d239616c3b8f95ad31260b8a6b5a81d8229a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
