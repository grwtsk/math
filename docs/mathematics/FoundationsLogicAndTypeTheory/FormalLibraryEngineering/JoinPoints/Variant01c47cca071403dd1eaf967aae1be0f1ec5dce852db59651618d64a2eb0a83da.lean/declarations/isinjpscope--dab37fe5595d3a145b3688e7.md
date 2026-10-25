# isInJpScope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:362e8a49799dd697ba041e040dc9a9c8e09cfac57b14f8bd2e125ba0e6339fdf",
  "kind": "def",
  "lexical_name": "isInJpScope",
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
  "slug": "isinjpscope--dab37fe5595d3a145b3688e7",
  "source": {
    "blob": "4e7b71069eeecf913d3110300cf46d26b1a343b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 499,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dab37fe5595d3a145b3688e727065b5c4c7d9b9ce62883cd56336e14ea931837",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:362e8a49799dd697ba041e040dc9a9c8e09cfac57b14f8bd2e125ba0e6339fdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def isInJpScope (jp : FVarId) (var : FVarId) : ReduceAnalysisM Bool := do
  return (← read).jpScopes.get! jp |>.contains var

open ScopeM

/--
Take a look at each join point and each of their call sites. If all
call sites of a join point have one or more arguments in common, for example:
```
jp _jp.1 a b c => ...
...
cases foo
| n1 => jmp _jp.1 d e f
| n2 => jmp _jp.1 g e h
```
We can get rid of the common argument in favour of inlining it directly
into the join point (in this case the `e`). This reduces the amount of
arguments we have to pass around drastically for example in `ReaderT` based
monad stacks.

Note 1: This transformation can in certain niche cases obtain better results.
For example:
```
jp foo a b => ..
let x := ...
cases discr
| n1 => jmp foo x y
| n2 => jmp foo x z
```
Here we will not collapse the `x` since it is defined after the join point `foo`
and thus not accessible for substitution yet. We could however reorder the code in
such a way that this is possible, this is currently not done since we observe
than in praxis most of the applications of this transformation can occur naturally
without reordering.

Note 2: This transformation is kind of the opposite of `JoinPointContextExtender`.
However we still benefit from the extender because in the `simp` run after it
we might be able to pull join point declarations further up in the hierarchy
of nested functions/join points which in turn might enable additional optimizations.
After we have performed all of these optimizations we can take away the
(remaining) common arguments and end up with nicely floated and optimized
code that has as little arguments as possible in the join points.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e7b71069eeecf913d3110300cf46d26b1a343b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
