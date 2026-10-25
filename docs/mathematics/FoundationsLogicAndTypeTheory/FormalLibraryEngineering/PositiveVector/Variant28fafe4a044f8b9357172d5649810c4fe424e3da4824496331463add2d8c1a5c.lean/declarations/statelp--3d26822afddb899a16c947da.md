# stateLP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5869eb446068d6710d12cf9ca7787d58e914a4d72fbe56149aa28ffc30a3b3c7",
  "kind": "def",
  "lexical_name": "stateLP",
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
  "slug": "statelp--3d26822afddb899a16c947da",
  "source": {
    "blob": "006f3b1698c71cc5d9b7df3372971ded557c4784",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PositiveVector/Variant28fafe4a044f8b9357172d5649810c4fe424e3da4824496331463add2d8c1a5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d26822afddb899a16c947da98e08ab1aa5de72290a7850c5242c966a8e83cde",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PositiveVector/Variant28fafe4a044f8b9357172d5649810c4fe424e3da4824496331463add2d8c1a5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5869eb446068d6710d12cf9ca7787d58e914a4d72fbe56149aa28ffc30a3b3c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stateLP {n m : Nat} (A : matType n m) (strictIndexes : List Nat) : matType (n + 2) (m + 3) :=
  /- +2 due to shifting by `f` and `z` -/
  let objectiveRow : List (Nat × Nat × Rat) :=
    (0, 0, -1) :: strictIndexes.map fun idx => (0, idx + 2, 1)
  let constraintRow : List (Nat × Nat × Rat) :=
    [(1, 1, 1), (1, m + 2, -1)] ++ (List.range m).map (fun i => (1, i + 2, 1))

  let valuesA := getValues A |>.map fun (i, j, v) => (i + 2, j + 2, v)

  ofValues (objectiveRow ++ constraintRow ++ valuesA)

/-- Extracts target vector from the tableau, putting auxiliary variables aside (see `stateLP`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PositiveVector/Variant28fafe4a044f8b9357172d5649810c4fe424e3da4824496331463add2d8c1a5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PositiveVector/Variant28fafe4a044f8b9357172d5649810c4fe424e3da4824496331463add2d8c1a5c.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `006f3b1698c71cc5d9b7df3372971ded557c4784` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
