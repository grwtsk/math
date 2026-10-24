# Verification target: GRWTSK.Algebra.NeZero.Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b6ce684548f5b358b22e51e15cee6166d9a1db3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/index.md) · [Full source](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b6ce684548f5b358b22e51e15cee6166d9a1db3`.

Source path: `GRWTSK/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.ZeroOne` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Algebra.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NeZero](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/nezero--9fea1a7a2b24ccb339d1651d.md) | 26 | `declaration-track:9fea1a7a2b24ccb339d1651ddc0d03fc9eb3d71ea84e2f70355f17f344f742d2` |
| 2 | `theorem` | [NeZero.ne](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/nezero-ne--9f77b6f860677da2581bf641.md) | 31 | `result-track:9f77b6f860677da2581bf64130fe9e5f11cff074be981c59e235395d0bce200f` |
| 3 | `theorem` | [NeZero.ne'](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/nezero-ne--affba3b8aeecbc397c08d074.md) | 35 | `result-track:affba3b8aeecbc397c08d07497bbcf004d949ed46defbaf9af531e8b023c974b` |
| 4 | `theorem` | [neZero_iff](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/nezero-iff--52a3a19d5dca4e7f77c236eb.md) | 39 | `result-track:52a3a19d5dca4e7f77c236eb2bc8dbd445e1ebb7dcdf97a2580f9db895bbdfa5` |
| 5 | `theorem` | [not_neZero](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/not-nezero--dd5b17f965783f4cba83a872.md) | 43 | `result-track:dd5b17f965783f4cba83a87257d72a466d91cb38898febedcc31b2ba50e61330` |
| 6 | `theorem` | [eq_zero_or_neZero](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/eq-zero-or-nezero--5abacd5a553969c5ae23604b.md) | 46 | `result-track:5abacd5a553969c5ae23604ba3df7d08552473192200603e46f8940d19b681a9` |
| 7 | `lemma` | [zero_ne_one](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/zero-ne-one--3f8e06f7a085c6d208099e4f.md) | 53 | `result-track:3f8e06f7a085c6d208099e4f2f44b1e19c60ee99ef0891d1f414592c71524201` |
| 8 | `lemma` | [one_ne_zero](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/one-ne-zero--d617a4bc92e26783b4a3eaf3.md) | 56 | `result-track:d617a4bc92e26783b4a3eaf3c19428e86909cc41f616ff8f69d1e672c2eee2cf` |
| 9 | `lemma` | [ne_zero_of_eq_one](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/ne-zero-of-eq-one--9dea0fff9dd3d6199e805b90.md) | 59 | `result-track:9dea0fff9dd3d6199e805b90757da6b111b91a6575da501c8fb208b5b722e82e` |
| 10 | `lemma` | [two_ne_zero](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/two-ne-zero--29a974718d98341c1f8e1508.md) | 63 | `result-track:29a974718d98341c1f8e1508b805ff1fc0f1e6180bc51a602b2ea0835b3f46e1` |
| 11 | `lemma` | [three_ne_zero](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/three-ne-zero--f91c7d15774cc643934e9f3e.md) | 67 | `result-track:f91c7d15774cc643934e9f3e660b9a06b4c73e6a0581cde5eac68f11b92fc010` |
| 12 | `lemma` | [four_ne_zero](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/four-ne-zero--974b4324bd55596945b54493.md) | 71 | `result-track:974b4324bd55596945b5449300cdad585a2ba3919ef23ec3db6c9c71c1889cec` |
| 13 | `lemma` | [zero_ne_one'](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/zero-ne-one--a778a9a1b1aee5b158e2210f.md) | 76 | `result-track:a778a9a1b1aee5b158e2210fa248795ef03cf20a89d622008d1178f05c342b62` |
| 14 | `lemma` | [one_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/one-ne-zero--67e43ac86c113712dc5640d0.md) | 79 | `result-track:67e43ac86c113712dc5640d002726877bfef629d98398b8e9b5c4d228ba32c25` |
| 15 | `lemma` | [two_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/two-ne-zero--3f1c785ae9537bb02498a7c3.md) | 82 | `result-track:3f1c785ae9537bb02498a7c33f1dc9fb8ffa631b13106ca94405b3ae9e1a7d2b` |
| 16 | `lemma` | [three_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/three-ne-zero--23a4a9a8e982b91dc2ea1ea3.md) | 85 | `result-track:23a4a9a8e982b91dc2ea1ea3935ecdb720b07a0f2a8ae82dc9b26c90299f6729` |
| 17 | `lemma` | [four_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/four-ne-zero--a87f74eb9cbc83bac5fcdf29.md) | 88 | `result-track:a87f74eb9cbc83bac5fcdf29d599260aa69bc224d4205ad73cd094ff00afdab6` |
| 18 | `instance` | [succ](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/succ--d14fe70aa207746b3b038f8f.md) | 97 | `declaration-track:d14fe70aa207746b3b038f8ff4f07a135420115b98634b56a7e336a689c4ffa8` |
| 19 | `theorem` | [of_pos](../../../../mathematics/Algebra/NeZero/Variant8379209bb3257de39b6b4cbcff5978ce1b463afd35e97c00880cfa8b5bb822b4.lean/declarations/of-pos--18e4cb829f2b807ff8a7c36a.md) | 99 | `result-track:18e4cb829f2b807ff8a7c36a00b950ef7a673043b0767383045a2aa7e0459dd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
