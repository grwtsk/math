# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Set.Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96f6fda8c15744c4faf235c27712b8e94f4e0687",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96f6fda8c15744c4faf235c27712b8e94f4e0687`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Consumers.Monadic.Loop` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IterM.toHashSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/declarations/iterm-tohashset--4eca451a6b9b8ac3b095cd6c.md) | 30 | `declaration-track:4eca451a6b9b8ac3b095cd6c486f3c0e76902f94a0ac55774bc37d738eef43d5` |
| 2 | `def` | [IterM.Total.toHashSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/declarations/iterm-total-tohashset--3dcd570ec761f4392b2176f4.md) | 43 | `declaration-track:3dcd570ec761f4392b2176f43f21b254125cd88bc80cafbfe6f081347fbaa9d2` |
| 3 | `def` | [IterM.toExtHashSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/declarations/iterm-toexthashset--2f1a1165c5177d7b32f6659b.md) | 59 | `declaration-track:2f1a1165c5177d7b32f6659bde014ff8ad2caf1e08a20f80993e10fb019d3104` |
| 4 | `def` | [IterM.Total.toExtHashSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/declarations/iterm-total-toexthashset--d74fb8b5669033df1298aa62.md) | 73 | `declaration-track:d74fb8b5669033df1298aa6205756a9780a202223400f480a2fbfac3d1484033` |
| 5 | `def` | [IterM.toTreeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/declarations/iterm-totreeset--df91d65adb40c2a1084889c5.md) | 89 | `declaration-track:df91d65adb40c2a1084889c5e30cb396fcef34ecc4b97cd53db7933612e65913` |
| 6 | `def` | [IterM.Total.toTreeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/declarations/iterm-total-totreeset--0299251d6727500602bdb0b1.md) | 103 | `declaration-track:0299251d6727500602bdb0b1ce8a87dd990fd605dcb8fba73f2360cd337ee193` |
| 7 | `def` | [IterM.toExtTreeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/declarations/iterm-toexttreeset--892e870f1fe8741a477ad42c.md) | 120 | `declaration-track:892e870f1fe8741a477ad42cbf1acadc7b2af1814a288bdbd985d4c92adc3a37` |
| 8 | `def` | [IterM.Total.toExtTreeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variantf984ae36fd3a683f3bc96285bf97c960b5c6fdb02b96535baaf55af0a97314f6.lean/declarations/iterm-total-toexttreeset--c55a58d7b54b4e44cf84eeac.md) | 134 | `declaration-track:c55a58d7b54b4e44cf84eeac9d3acd813b3c64a9e721f39ccbabb705cb2a54e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
