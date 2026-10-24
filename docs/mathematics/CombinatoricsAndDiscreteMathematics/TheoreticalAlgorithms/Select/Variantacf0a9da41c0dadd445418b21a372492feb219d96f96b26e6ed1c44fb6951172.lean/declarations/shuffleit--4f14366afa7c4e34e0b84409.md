# shuffleIt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:791079c174d178bbf171ec5c71f27cd575521af94402b27e36f5aaa8599635d3",
  "kind": "def",
  "lexical_name": "shuffleIt",
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
  "slug": "shuffleit--4f14366afa7c4e34e0b84409",
  "source": {
    "blob": "6df08531afd99e4812084fd87637e3e820cf9ce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f14366afa7c4e34e0b844098c2e4317d7cfc85e4fc921da182edeaff71ae5b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:791079c174d178bbf171ec5c71f27cd575521af94402b27e36f5aaa8599635d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def shuffleIt {α : Type u} (xs : Array α) (gen : StdGen) : Array α × StdGen :=
  go xs gen 0
where
  go (xs : Array α) (gen : StdGen) (i : Nat) : Array α × StdGen :=
    if _ : i < xs.size - 1 then
      let (j, gen) := randNat gen i (xs.size - 1)
      let xs := xs.swapIfInBounds i j
      go xs gen (i + 1)
    else
      (xs, gen)

/--
Performs fair and data-loss free multiplexing on the `Selectable`s in `selectables`.

The protocol for this is as follows:
1. The `selectables` are shuffled randomly.
2. Run `Selector.tryFn` for each element in `selectables`. If any succeed, the corresponding
  `Selectable.cont` is executed and its result is returned immediately.
3. If none succeed, a `Waiter` is registered with each `Selector` using `Selector.registerFn`.
   Once one of them resolves the `Waiter`, all `Selector.unregisterFn` functions are called, and
   the `Selectable.cont` of the winning `Selector` is executed and returned.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df08531afd99e4812084fd87637e3e820cf9ce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
