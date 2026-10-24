# minimizeLoopAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11f08efb107401a9ec54300e1c989b95fdb703dac65aa66824351e68e918a07e",
  "kind": "def",
  "lexical_name": "minimizeLoopAffine",
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
  "slug": "minimizeloopaffine--b09baa7df165ca1622f1f47c",
  "source": {
    "blob": "ac681ead2ed956a45e57a66e7775a728788e8eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1447,
    "line": 1432,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b09baa7df165ca1622f1f47cbb9cac86e66d04c16f10c20de5c05787d8067327",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11f08efb107401a9ec54300e1c989b95fdb703dac65aa66824351e68e918a07e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1432–1447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def minimizeLoopAffine (e : Expr) (cfg : GlobalOptConfigAffine)
    (queue : List (ℚ × Box)) (bestLB bestUB : ℚ) (bestBox : Box) (iters : Nat) :
    GlobalResult :=
  match iters with
  | 0 =>
    { bound := { lo := bestLB, hi := bestUB, bestBox := bestBox, iterations := cfg.maxIterations }
      remainingBoxes := queue }
  | n + 1 =>
    match minimizeStepAffine e cfg queue bestLB bestUB bestBox with
    | none =>
      { bound := { lo := bestLB, hi := bestUB, bestBox := bestBox, iterations := cfg.maxIterations - n - 1 }
        remainingBoxes := [] }
    | some (queue', bestLB', bestUB', bestBox') =>
      minimizeLoopAffine e cfg queue' bestLB' bestUB' bestBox' n

/-- Helper: bestLB only decreases during minimizeStepAffine. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean#L1432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac681ead2ed956a45e57a66e7775a728788e8eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
