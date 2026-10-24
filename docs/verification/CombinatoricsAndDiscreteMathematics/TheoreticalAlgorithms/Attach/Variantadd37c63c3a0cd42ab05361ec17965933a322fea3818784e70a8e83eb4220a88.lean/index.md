# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attach.Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c1425e35e36a8d246a5ee30830e69bbea09f77b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c1425e35e36a8d246a5ee30830e69bbea09f77b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Loop` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.step_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean/declarations/iterm-step-attachwith--93d25e69f35cb51c85a9c98b.md) | 33 | `result-track:93d25e69f35cb51c85a9c98b79b9bf397612aef7b5fccb87fac608d968791951` |
| 2 | `theorem` | [IterM.map_unattach_toList_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean/declarations/iterm-map-unattach-tolist-attachwith--74d32bc26ce9b0aa3a91e6de.md) | 39 | `result-track:74d32bc26ce9b0aa3a91e6de32d351e98bb7bae390fdd8df0839545dd9616107` |
| 3 | `theorem` | [IterM.map_unattach_toListRev_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean/declarations/iterm-map-unattach-tolistrev-attachwith--23a081ab853b410624d6fdf1.md) | 58 | `result-track:23a081ab853b410624d6fdf122ac0587aaa1c0a22f2b007a4e23841cedab34ca` |
| 4 | `theorem` | [IterM.map_unattach_toArray_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean/declarations/iterm-map-unattach-toarray-attachwith--1d50e6b0227b2c4583933c2c.md) | 66 | `result-track:1d50e6b0227b2c4583933c2c7d6cd5a3d5082f10ff7824618f6718a9fa59af59` |
| 5 | `theorem` | [IterM.length_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean/declarations/iterm-length-attachwith--fee58be654350483296336cf.md) | 75 | `result-track:fee58be654350483296336cf51d125f3dbf8b58b50cd1d2f0a35481f434f8fa6` |
| 6 | `def` | [IterM.count_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantadd37c63c3a0cd42ab05361ec17965933a322fea3818784e70a8e83eb4220a88.lean/declarations/iterm-count-attachwith--8420e0590ef1fbca0528d0c7.md) | 85 | `declaration-track:8420e0590ef1fbca0528d0c77f73e79ad9e344fb1b1e7f85f374b922e333f72b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
