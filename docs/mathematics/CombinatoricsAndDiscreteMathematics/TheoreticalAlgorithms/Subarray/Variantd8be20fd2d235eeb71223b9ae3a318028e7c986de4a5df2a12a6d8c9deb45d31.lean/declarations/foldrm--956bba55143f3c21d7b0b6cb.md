# foldrM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f92e249ff7501d6c260819f0b0ea336403f9bca1ee6e96877dce95c4ef35ace",
  "kind": "def",
  "lexical_name": "foldrM",
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
  "slug": "foldrm--956bba55143f3c21d7b0b6cb",
  "source": {
    "blob": "e1abdd80d8c6f391d73d2add8c58261e53fa0496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 197,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variantd8be20fd2d235eeb71223b9ae3a318028e7c986de4a5df2a12a6d8c9deb45d31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:956bba55143f3c21d7b0b6cbd026c15ac12e9212e510a066df228eb80e5d1c8f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variantd8be20fd2d235eeb71223b9ae3a318028e7c986de4a5df2a12a6d8c9deb45d31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f92e249ff7501d6c260819f0b0ea336403f9bca1ee6e96877dce95c4ef35ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def foldrM {α : Type u} {β : Type v} {m : Type v → Type w} [Monad m] (f : α → β → m β) (init : β) (as : Subarray α) : m β :=
  as.array.foldrM f (init := init) (start := as.stop) (stop := as.start)

/--
Checks whether any of the elements in a subarray satisfy a monadic Boolean predicate.

The elements are tested starting at the lowest index and moving up. The search terminates as soon as
an element that satisfies the predicate is found.

Example:
```lean example
#eval #["red", "green", "blue", "orange"].toSubarray.popFront.anyM fun x => do
  IO.println x
  pure (x == "blue")
```
```output
green
blue
```
```output
true
```
-/
@[inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variantd8be20fd2d235eeb71223b9ae3a318028e7c986de4a5df2a12a6d8c9deb45d31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variantd8be20fd2d235eeb71223b9ae3a318028e7c986de4a5df2a12a6d8c9deb45d31.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1abdd80d8c6f391d73d2add8c58261e53fa0496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
