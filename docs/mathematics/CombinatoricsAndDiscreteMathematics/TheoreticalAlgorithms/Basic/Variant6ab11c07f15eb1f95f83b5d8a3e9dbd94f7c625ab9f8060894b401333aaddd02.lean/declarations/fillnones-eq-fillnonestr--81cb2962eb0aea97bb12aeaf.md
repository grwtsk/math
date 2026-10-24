# fillNones_eq_fillNonesTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93deb801-e047-2623-cc10-d9b0a0b86a6a",
  "kind": "theorem",
  "lexical_name": "fillNones_eq_fillNonesTR",
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
  "slug": "fillnones-eq-fillnonestr--81cb2962eb0aea97bb12aeaf",
  "source": {
    "blob": "259c26784826ee775872f1aeb666dee30565a411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1521,
    "line": 1502,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81cb2962eb0aea97bb12aeaf4c2812a1b6d533807c789a47efb63d5e08d588ce",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93deb801-e047-2623-cc10-d9b0a0b86a6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1502–1521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[csimp] theorem fillNones_eq_fillNonesTR : @fillNones = @fillNonesTR := by
  funext α as as'; simp [fillNonesTR]
  let rec go (acc) : ∀ as as', @fillNonesTR.go α as as' acc = acc.data ++ as.fillNones as'
  | [], _ => by simp [fillNonesTR.go]
  | some a :: as, as' => by simp [fillNonesTR.go, go _ as as']
  | none :: as, [] => by simp [fillNonesTR.go, reduceOption, filterMap_eq_filterMapTR.go]
  | none :: as, a :: as' => by simp [fillNonesTR.go, go _ as as']
  simp [fillNonesTR, go]

/--
`takeList as ns` extracts successive sublists from `as`. For `ns = n₁ ... nₘ`,
it first takes the `n₁` initial elements from `as`, then the next `n₂` ones,
etc. It returns the sublists of `as` -- one for each `nᵢ` -- and the remaining
elements of `as`. If `as` does not have at least as many elements as the sum of
the `nᵢ`, the corresponding sublists will have less than `nᵢ` elements.
```
takeList ['a', 'b', 'c', 'd', 'e'] [2, 1, 1] = ([['a', 'b'], ['c'], ['d']], ['e'])
takeList ['a', 'b'] [3, 1] = ([['a', 'b'], []], [])
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant6ab11c07f15eb1f95f83b5d8a3e9dbd94f7c625ab9f8060894b401333aaddd02.lean#L1502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `259c26784826ee775872f1aeb666dee30565a411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
