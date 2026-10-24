# minimizeStepAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d6d77a6c16ffd814066cd1f7792adda54a79dc93daaa89bbe14ea38fbf07ead",
  "kind": "def",
  "lexical_name": "minimizeStepAffine",
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
  "slug": "minimizestepaffine--194aa7f8ece3fb3644b007cb",
  "source": {
    "blob": "ac681ead2ed956a45e57a66e7775a728788e8eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1431,
    "line": 1402,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:194aa7f8ece3fb3644b007cbe175a81ac2ba4d697b6702c2ab265304e96c3d07",
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

Occurrence: `declaration:3d6d77a6c16ffd814066cd1f7792adda54a79dc93daaa89bbe14ea38fbf07ead`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1402–1431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def minimizeStepAffine (e : Expr) (cfg : GlobalOptConfigAffine)
    (queue : List (ℚ × Box)) (bestLB bestUB : ℚ) (bestBox : Box) :
    Option (List (ℚ × Box) × ℚ × ℚ × Box) :=
  match popBest queue with
  | none => none
  | some ((lb, B), rest) =>
    if lb > bestUB then
      some (rest, bestLB, bestUB, bestBox)
    else
      let B_curr :=
        if cfg.useMonotonicity then
          let grad := gradientIntervalCore e B { taylorDepth := cfg.taylorDepth }
          (pruneBoxForMin B grad).1
        else B
      let I := evalOnBoxAffine e B_curr cfg
      let newBestLB := min bestLB I.lo
      let (newBestUB, newBestBox) :=
        if I.hi < bestUB then (I.hi, B_curr) else (bestUB, bestBox)
      if Box.maxWidth B_curr ≤ cfg.tolerance then
        some (rest, newBestLB, newBestUB, newBestBox)
      else
        let (B1, B2) := Box.splitWidest B_curr
        let I1 := evalOnBoxAffine e B1 cfg
        let I2 := evalOnBoxAffine e B2 cfg
        let queue' := rest
        let queue' := if I1.lo ≤ newBestUB then insertByBound queue' I1.lo B1 else queue'
        let queue' := if I2.lo ≤ newBestUB then insertByBound queue' I2.lo B2 else queue'
        some (queue', newBestLB, newBestUB, newBestBox)

/-- Run branch-and-bound loop using Affine arithmetic -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Global/Variante658f91a7f5aaf59f6d87f14c688d72dc56c86ba2407bf7ac7026798c01706f6.lean#L1402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac681ead2ed956a45e57a66e7775a728788e8eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
