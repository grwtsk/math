# collectConstsWithLevelMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4e5422634ad81f47696648078b6a2655e5323cec73a8f92782998ec38c372fc",
  "kind": "def",
  "lexical_name": "collectConstsWithLevelMVars",
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
  "slug": "collectconstswithlevelmvars--ae662557269010e685f31c90",
  "source": {
    "blob": "b93662f0624c93668d57fdf79fda4f70fe156101",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 410,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae662557269010e685f31c900ace50f029530260f2f8eacd9ad181b4c2bf9a92",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4e5422634ad81f47696648078b6a2655e5323cec73a8f92782998ec38c372fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def collectConstsWithLevelMVars (e : Expr) : CoreM (Array Expr) := do
  let (_, s) ← go |>.run {}
  return s.toArray
where
  go : StateRefT (Std.HashSet Expr) CoreM Unit := do
    e.forEach fun e => do
      if e.isConst && e.hasLevelMVar then
        modify (·.insert e)

/--
Helper function for E-match theorems containing universe metavariables that do not occur
in any of their parameters. This is a very rare case, but it does occur in practice.
Example:
```lean
@[simp, grind =] theorem down_pure {φ : Prop} : (⌜φ⌝ : SPred []).down = φ := rfl
```

The parameter `us` contains the unassigned universe metavariables.

Recall that when we collect patterns for a theorem, we check coverage only for regular
parameters, not universe parameters. This function attempts to instantiate the universe
parameters using the following heuristic:

* Collect all constants `C` in `prop` that contain universe metavariables.
* Create a collection `P` of pairs `(c, cs)` where `c ∈ C` and `cs` are instances of `c` in the current goal.
* Sort `P` by the size of `cs`, prioritizing constants with fewer occurrences.
* Perform a backtracking search to unify each `c` with its occurrences. Stop as soon as all universe parameters are instantiated.

We expect this function not to be a performance bottleneck in practice because:

1. Very few theorems contain universe metavariables not covered by any parameters.
2. These theorems usually involve only a small number of universe levels and universe polymorphic constants.
3. Goals rarely contain constants instantiated with many different universe variables.

If this does become a performance issue, we will need to add support for assigning universe levels
during E-matching and check for universe-level coverage when collecting patterns.

The result is a collection of pairs `(proof', prop')` where `proof'` and `prop'` are `proof` and `prop`
with all universe metavariables instantiated.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variantf0901ab479f17cf09e9d765c2c1560b7df50963bd83d65acfeda77a5db4441e1.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b93662f0624c93668d57fdf79fda4f70fe156101` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
