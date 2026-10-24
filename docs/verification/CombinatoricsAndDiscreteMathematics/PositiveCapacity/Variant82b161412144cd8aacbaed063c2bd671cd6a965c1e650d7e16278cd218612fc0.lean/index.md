# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88d81a8447b8c69b33b28d83dce76defbe0c70cd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88d81a8447b8c69b33b28d83dce76defbe0c70cd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.OperatorOrder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.SemiLocalDefect.PrimeUniverse` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveCapacity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0.lean/declarations/positivecapacity--328d204e2f2392c97cfbf0d4.md) | 23 | `declaration-track:328d204e2f2392c97cfbf0d4b12d0418045900acb60b94435247bb884cad768b` |
| 2 | `def` | [PositiveCapacity.increment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0.lean/declarations/positivecapacity-increment--9807a85bdeb04b3ecfcc9d3c.md) | 44 | `declaration-track:9807a85bdeb04b3ecfcc9d3c6885d51585252ac85d0c5b2d605adaf6f74324e8` |
| 3 | `def` | [PositiveCapacity.reduced](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0.lean/declarations/positivecapacity-reduced--534018965a1e2af00cb51d96.md) | 54 | `declaration-track:534018965a1e2af00cb51d96eba63d9b4407193009fcbda23f7812e07c7f91f7` |
| 4 | `theorem` | [reduced_empty_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0.lean/declarations/reduced-empty-zero--8f2083008dc23ec83470dbf8.md) | 63 | `result-track:8f2083008dc23ec83470dbf854bd21c14d0150bd67a65b6ee9f50f29c48a6902` |
| 5 | `theorem` | [capacity_increment_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0.lean/declarations/capacity-increment-nonnegative--e4e971e019f5ed6fdc8557fc.md) | 72 | `result-track:e4e971e019f5ed6fdc8557fc30ddedd651c718b4e7f16bc0f3e1c041d090898b` |
| 6 | `theorem` | [capacity_value_bounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant82b161412144cd8aacbaed063c2bd671cd6a965c1e650d7e16278cd218612fc0.lean/declarations/capacity-value-bounded--0accd6b485923fb7d5b96515.md) | 89 | `result-track:0accd6b485923fb7d5b965156d0eb236c25d1ef9657a33402c8e411ed944eff1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
