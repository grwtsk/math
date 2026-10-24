# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Set.Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eed5a4220cec05db415a0cb0da5b1bfa100ccd2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eed5a4220cec05db415a0cb0da5b1bfa100ccd2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Consumers.Monadic.Loop` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IterM.toHashSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/declarations/iterm-tohashset--11bfacde3102a9002801fab7.md) | 38 | `declaration-track:11bfacde3102a9002801fab7c4903ab1cf03098d124f31fd902d493ec9201048` |
| 2 | `def` | [IterM.Total.toHashSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/declarations/iterm-total-tohashset--da07e17d60e0e90db4e567eb.md) | 51 | `declaration-track:da07e17d60e0e90db4e567eb99b753391f46fc376ac1473c6e9d1f5a6fa3973e` |
| 3 | `def` | [IterM.toExtHashSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/declarations/iterm-toexthashset--df4597ddc633636f97833f3f.md) | 67 | `declaration-track:df4597ddc633636f97833f3f87366c3a6156840bae10e57ebf1a8060858c5d1f` |
| 4 | `def` | [IterM.Total.toExtHashSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/declarations/iterm-total-toexthashset--f11090aeaeeedd42136df44f.md) | 81 | `declaration-track:f11090aeaeeedd42136df44f4321d6766c026b10635b54489d53c75cedc6be24` |
| 5 | `def` | [IterM.toTreeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/declarations/iterm-totreeset--26b0f1fe20b6163ada3eef96.md) | 97 | `declaration-track:26b0f1fe20b6163ada3eef96009ef208dcff467417e3869a311a30f5065f5960` |
| 6 | `def` | [IterM.Total.toTreeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/declarations/iterm-total-totreeset--414312e9f37a0d192ba7d9cd.md) | 111 | `declaration-track:414312e9f37a0d192ba7d9cd54eb0f129155d0d2791b0a46c755dae9b043082c` |
| 7 | `def` | [IterM.toExtTreeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/declarations/iterm-toexttreeset--1ba66dd4ecbd18b73831cdd1.md) | 128 | `declaration-track:1ba66dd4ecbd18b73831cdd110748296bb5965666f6f7359e2557315ac51a86a` |
| 8 | `def` | [IterM.Total.toExtTreeSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Set/Variant4a70eb70eddfc0a04b22000b12591619643c5e23f58c9537128a27d7eb541e18.lean/declarations/iterm-total-toexttreeset--e90c08af43b579d80b5eafbb.md) | 142 | `declaration-track:e90c08af43b579d80b5eafbbe2be1892984bb239bc64997b6a9a2122b6bb1474` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
