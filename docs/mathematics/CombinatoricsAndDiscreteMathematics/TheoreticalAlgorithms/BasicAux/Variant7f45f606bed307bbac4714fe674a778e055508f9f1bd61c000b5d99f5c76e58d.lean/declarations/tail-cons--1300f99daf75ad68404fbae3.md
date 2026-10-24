# tail!_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7b8b343-73f3-f13d-c003-6326afb5bc76",
  "kind": "theorem",
  "lexical_name": "tail!_cons",
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
  "slug": "tail-cons--1300f99daf75ad68404fbae3",
  "source": {
    "blob": "a1a5cc537528b2bcb46b1333b3a7b9197235d3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 102,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1300f99daf75ad68404fbae39b4ede73e9d9a4e6645411af6f25b7055605c99b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7b8b343-73f3-f13d-c003-6326afb5bc76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[simp] theorem tail!_cons : @tail! α (a::l) = l := rfl

/-! ### partitionM -/

/--
Returns a pair of lists that together contain all the elements of `as`. The first list contains
those elements for which the monadic predicate `p` returns `true`, and the second contains those for
which `p` returns `false`. The list's elements are examined in order, from left to right.

This is a monadic version of `List.partition`.

Example:
```lean example
def posOrNeg (x : Int) : Except String Bool :=
  if x > 0 then pure true
  else if x < 0 then pure false
  else throw "Zero is not positive or negative"
```
```lean example
#eval [-1, 2, 3].partitionM posOrNeg
```
```output
Except.ok ([2, 3], [-1])
```
```lean example
#eval [0, 2, 3].partitionM posOrNeg
```
```output
Except.error "Zero is not positive or negative"
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant7f45f606bed307bbac4714fe674a778e055508f9f1bd61c000b5d99f5c76e58d.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1a5cc537528b2bcb46b1333b3a7b9197235d3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
