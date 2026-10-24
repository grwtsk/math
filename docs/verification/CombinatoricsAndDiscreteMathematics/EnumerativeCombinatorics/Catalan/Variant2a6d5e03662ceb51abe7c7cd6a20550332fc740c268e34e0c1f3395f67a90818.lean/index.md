# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Catalan.Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b03f344485ce6e5660769c2a9edd5bbd2191279c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b03f344485ce6e5660769c2a9edd5bbd2191279c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharZero.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Central` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Tree` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/catalan--87e151a01d3a27a89f0c8322.md) | 65 | `declaration-track:87e151a01d3a27a89f0c8322fbf2bccc001aa45c455c90c36d429d303ac01141` |
| 2 | `theorem` | [catalan_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/catalan-zero--3a67f0ffe0bd046faed3eda4.md) | 73 | `result-track:3a67f0ffe0bd046faed3eda4e97be8c3f9554dd3e9e420b94757f7ffdfd290bd` |
| 3 | `theorem` | [catalan_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/catalan-succ--4f30bf69fcf09a9e53371be0.md) | 76 | `result-track:4f30bf69fcf09a9e53371be0b2a8fc3f9329e20dc93deeda252b04e5d9d02e0f` |
| 4 | `theorem` | [catalan_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/catalan-succ--c0a1fb0f1e3bd1d947e40f50.md) | 80 | `result-track:c0a1fb0f1e3bd1d947e40f5040ca42c6a907efa476f37057d6c48ff42f9247cd` |
| 5 | `theorem` | [catalan_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/catalan-one--1f97b58ae40c8ef0e8c33a23.md) | 87 | `result-track:1f97b58ae40c8ef0e8c33a233d59e196fbc53fd55a2adb659adeb4e0d01bce0a` |
| 6 | `def` | [gosperCatalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/gospercatalan--0d2790044e416545302cb62c.md) | 92 | `declaration-track:0d2790044e416545302cb62cca6313a099780048c285f0a48c51c3f765d843af` |
| 7 | `theorem` | [gosper_trick](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/gosper-trick--a2510609835c811806914ff1.md) | 95 | `result-track:a2510609835c811806914ff195f273cac0cefafa670130b726a231c90854ed08` |
| 8 | `theorem` | [gosper_catalan_sub_eq_central_binom_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/gosper-catalan-sub-eq-central-binom-div--1f8760e0a25f03aee1caf697.md) | 114 | `result-track:1f8760e0a25f03aee1caf697b5d3b12c26e5f468eab6455bf01202cac6cee157` |
| 9 | `theorem` | [catalan_eq_centralBinom_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/catalan-eq-centralbinom-div--3241702ec9afe85959b0bffa.md) | 123 | `result-track:3241702ec9afe85959b0bffaa1636c5ceae78c8b6d1af87a7ba31e9c5cdfb45f` |
| 10 | `theorem` | [succ_mul_catalan_eq_centralBinom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/succ-mul-catalan-eq-centralbinom--b11c98ed6f7ec8dda83fec36.md) | 147 | `result-track:b11c98ed6f7ec8dda83fec3664e14f0f70865fb6f91e42b72267add03d7d2d20` |
| 11 | `theorem` | [catalan_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/catalan-two--9fb281bae90e4557424062e9.md) | 151 | `result-track:9fb281bae90e4557424062e9ff1b015560acda5596cada8820a7b52f173f3d31` |
| 12 | `theorem` | [catalan_three](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/catalan-three--f14bb0aeaa4f22dd3bb2be65.md) | 155 | `result-track:f14bb0aeaa4f22dd3bb2be650d52e5cfcb404ff8bc4f680143cf7a25357a4255` |
| 13 | `def` | [pairwiseNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/pairwisenode--7fe0ed39dded0d8b9fcc4a7a.md) | 166 | `declaration-track:7fe0ed39dded0d8b9fcc4a7a2cbe047bf062bcc1b01843281bbe6c2784013621` |
| 14 | `def` | [treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/treesofnumnodeseq--a197d2590d061ecf3297ce97.md) | 171 | `declaration-track:a197d2590d061ecf3297ce97a097a913dc8dd7447473ffef0ef2629c81b78b1c` |
| 15 | `theorem` | [treesOfNumNodesEq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/treesofnumnodeseq-zero--c785160eaadb050a51553030.md) | 187 | `result-track:c785160eaadb050a51553030662b7601a4909a766c8c6686c4166a4a64dbc495` |
| 16 | `theorem` | [treesOfNumNodesEq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/treesofnumnodeseq-succ--e58fe33a48ebf13188785001.md) | 190 | `result-track:e58fe33a48ebf13188785001588dc8ea149a7c60b5c33b1d7c71ecfc4c86411b` |
| 17 | `theorem` | [mem_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/mem-treesofnumnodeseq--60bf4c56a9489bf8ab4607f0.md) | 200 | `result-track:60bf4c56a9489bf8ab4607f0b8074d0e95611a4366c2b9ca8fa0fda0dc8b1742` |
| 18 | `theorem` | [mem_treesOfNumNodesEq_numNodes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/mem-treesofnumnodeseq-numnodes--92a685b5a4bb596db6a5cf6a.md) | 207 | `result-track:92a685b5a4bb596db6a5cf6af84a30d5ff2d930d24b5cde23187463a52b4d5da` |
| 19 | `theorem` | [coe_treesOfNumNodesEq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/coe-treesofnumnodeseq--9fdd780ba3da1644dc793ae8.md) | 212 | `result-track:9fdd780ba3da1644dc793ae83b7af9fcaa365a3fea2996911c877dffaefed8a5` |
| 20 | `theorem` | [treesOfNumNodesEq_card_eq_catalan](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Catalan/Variant2a6d5e03662ceb51abe7c7cd6a20550332fc740c268e34e0c1f3395f67a90818.lean/declarations/treesofnumnodeseq-card-eq-catalan--0abbbc104bcf95925b2085fc.md) | 217 | `result-track:0abbbc104bcf95925b2085fc7cc1ab9f04269839b19a69d253b8b908432a52d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
