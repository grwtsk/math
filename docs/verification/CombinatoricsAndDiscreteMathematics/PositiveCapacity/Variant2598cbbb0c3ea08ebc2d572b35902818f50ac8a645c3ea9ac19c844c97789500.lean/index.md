# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29aa4f3eda58f4da252e77397eb1822350af5b69",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29aa4f3eda58f4da252e77397eb1822350af5b69`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.OperatorOrder` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeCutDefectCapacity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/declarations/primecutdefectcapacity--a8816d640eafc94e87b7fcf2.md) | 22 | `declaration-track:a8816d640eafc94e87b7fcf2dad0d3ac88818ce0414bd0ae3e947ce7cd02edd2` |
| 2 | `def` | [PrimeCutDefectCapacity.baseline](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/declarations/primecutdefectcapacity-baseline--e6f7db965a395684392eda45.md) | 44 | `declaration-track:e6f7db965a395684392eda45662fd4f6d4e7fa3cb2cf133fc2515e066c9a314b` |
| 3 | `def` | [PrimeCutDefectCapacity.reducedDefect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/declarations/primecutdefectcapacity-reduceddefect--8992d36856036463f92252b3.md) | 53 | `declaration-track:8992d36856036463f92252b3d1b186773182b656f61d84026dd37dd0a609b819` |
| 4 | `def` | [PrimeCutDefectCapacity.increment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/declarations/primecutdefectcapacity-increment--06ba62906293017b31d04070.md) | 63 | `declaration-track:06ba62906293017b31d04070321471cfa5eb8520be71e2b7cb9b3a22122da7a4` |
| 5 | `theorem` | [reducedDefect_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/declarations/reduceddefect-empty--fc37cfb3951c155b9f435762.md) | 75 | `result-track:fc37cfb3951c155b9f435762a741d01f54744154f3537645a05d2561b3ea3da6` |
| 6 | `theorem` | [reducedDefect_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/declarations/reduceddefect-nonnegative--b78caae7d854bc8b1acc8b70.md) | 85 | `result-track:b78caae7d854bc8b1acc8b70f9e8bda6777ba6953444dde8afe904821be02f27` |
| 7 | `theorem` | [increment_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/declarations/increment-nonnegative--a66bc9229eabcd832e74d38b.md) | 96 | `result-track:a66bc9229eabcd832e74d38b2e550561b543b2e4e57694634202be553df198e0` |
| 8 | `theorem` | [increment_selfAdjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/declarations/increment-selfadjoint--c596d12dd87dfe192adacdcc.md) | 109 | `result-track:c596d12dd87dfe192adacdcc799804072d5283bbda914bbcd2af96408c80aab9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
