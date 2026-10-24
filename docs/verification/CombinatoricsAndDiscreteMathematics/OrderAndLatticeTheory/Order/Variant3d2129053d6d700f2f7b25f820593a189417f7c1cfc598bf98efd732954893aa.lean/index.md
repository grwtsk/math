# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f34648355c2fdc7c83d70672765dd4b88850364",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f34648355c2fdc7c83d70672765dd4b88850364`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/le-of-lt--942b7661409314357b22627a.md) | 23 | `result-track:942b7661409314357b22627a045be5b437fd82d9ae7d2b6c11a3d5c47631a2cb` |
| 2 | `theorem` | [lt_irrefl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/lt-irrefl--20fbc8eca96a9c02e0be3bce.md) | 25 | `result-track:20fbc8eca96a9c02e0be3bce010cbb2eb947762b9e7531a9ca8fda8df9fe2184` |
| 3 | `theorem` | [ne_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/ne-of-lt--5deeff566d421695266130d5.md) | 29 | `result-track:5deeff566d421695266130d58a67b340397e073d28a76fab8b8ce98d2f72e075` |
| 4 | `theorem` | [ne_of_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/ne-of-gt--eaf4e9a00b4edcbc9c8a7b58.md) | 32 | `result-track:eaf4e9a00b4edcbc9c8a7b581fa5af7a0e8f1440435a7f8edd019eba1592292a` |
| 5 | `theorem` | [lt_of_lt_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/lt-of-lt-of-le--fd3520369920166b2b1d4ef1.md) | 37 | `result-track:fd3520369920166b2b1d4ef1b1421681f2c76206a2d72ff805d4bc6955ef4466` |
| 6 | `theorem` | [lt_of_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/lt-of-le-of-lt--75b3fab57491aebc8df48f5f.md) | 41 | `result-track:75b3fab57491aebc8df48f5fa1bb7f74d2eb1a52050f5dd79392dab0d8194d12` |
| 7 | `theorem` | [lt_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/lt-trans--971873f473fd279aab811b00.md) | 45 | `result-track:971873f473fd279aab811b00596393b47d7ffe5ade063151869332d4739cb5b0` |
| 8 | `theorem` | [not_ge_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/not-ge-of-lt--2f89b8b696dfca0e6a2613b4.md) | 48 | `result-track:2f89b8b696dfca0e6a2613b436f83258de8712283e2c3072f3be249c145211be` |
| 9 | `theorem` | [not_gt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/not-gt-of-lt--19e2c0988e6cffc693480091.md) | 51 | `result-track:19e2c0988e6cffc6934800913d32122fed71375ac549e64ba434ff40526daf26` |
| 10 | `theorem` | [le_iff_lt_or_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/le-iff-lt-or-eq--66104f7287fcf93aa7f393eb.md) | 60 | `result-track:66104f7287fcf93aa7f393eb95c406b9fbb6a14b2bccc5b016f5b8dfb32574c4` |
| 11 | `theorem` | [trichotomy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/trichotomy--4a924f131509124f0a06a4c6.md) | 76 | `result-track:4a924f131509124f0a06a4c6d913300e9065eda226f74aa0ddbd9fb41ee067c3` |
| 12 | `theorem` | [le_of_not_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/le-of-not-lt--6eeaa1f7fb505d47188bd3dc.md) | 89 | `result-track:6eeaa1f7fb505d47188bd3dc6757814488230dae6e34d821b0b7134fa5b6d6b8` |
| 13 | `theorem` | [lt_of_not_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant3d2129053d6d700f2f7b25f820593a189417f7c1cfc598bf98efd732954893aa.lean/declarations/lt-of-not-le--220c63e9e9885cde0c5fa256.md) | 94 | `result-track:220c63e9e9885cde0c5fa256ea63b2a110a7db90f7530d3edbec96f6011841a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
