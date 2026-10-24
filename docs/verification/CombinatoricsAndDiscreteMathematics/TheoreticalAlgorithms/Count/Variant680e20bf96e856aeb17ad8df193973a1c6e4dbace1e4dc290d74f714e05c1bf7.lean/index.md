# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b534b9f13e677fef271afd0b287484bb81e651de",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b534b9f13e677fef271afd0b287484bb81e651de`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [count_not_add_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/count-not-add-count--b31ce74fc01424e0386758ba.md) | 29 | `result-track:b31ce74fc01424e0386758baaf70e479980bad6c346c190b8098ce4f03fc42b5` |
| 2 | `theorem` | [count_add_count_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/count-add-count-not--5f435dee8db5d1f3d1eb26e4.md) | 36 | `result-track:5f435dee8db5d1f3d1eb26e4f2e2f5f361929e5dcac4f369c7bd0550a5187b61` |
| 3 | `theorem` | [count_false_add_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/count-false-add-count-true--7169d8d722256e2fb82aafff.md) | 40 | `result-track:7169d8d722256e2fb82aafff71481bd273e93341593244bc9fb0357081233936` |
| 4 | `theorem` | [count_true_add_count_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/count-true-add-count-false--bdf9d2a4f631a76f2893bf86.md) | 47 | `result-track:bdf9d2a4f631a76f2893bf86cd4f9c6a56b5e93f150412872ff25c2dfb19ab21` |
| 5 | `theorem` | [IsChain.count_not_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/ischain-count-not-cons--7701dc0a8810febbdf5f626e.md) | 50 | `result-track:7701dc0a8810febbdf5f626ebc8b71f34c301061ee20bc6adee2fd52f1ca6a95` |
| 6 | `theorem` | [count_not_eq_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/count-not-eq-count--a0302d4b82d1c9347dacb721.md) | 61 | `result-track:a0302d4b82d1c9347dacb721bcf29d160bb6f2acb93e2e068694fa99835f241a` |
| 7 | `theorem` | [count_false_eq_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/count-false-eq-count-true--1ecf56d79000c75680db88bb.md) | 67 | `result-track:1ecf56d79000c75680db88bb90836332f5713d942b81f6ad4e37d20e268d926d` |
| 8 | `theorem` | [count_not_le_count_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/count-not-le-count-add-one--504fb998ee1ea00ba32793cb.md) | 71 | `result-track:504fb998ee1ea00ba32793cb2a98ef693cd5d63e7f43ac3448b94557ab0756f1` |
| 9 | `theorem` | [count_false_le_count_true_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/count-false-le-count-true-add-one--8d54b4d57d6641b8d7b26ee2.md) | 77 | `result-track:8d54b4d57d6641b8d7b26ee223785b861efd85b4cf044bfc8a6efad2321f7be0` |
| 10 | `theorem` | [count_true_le_count_false_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/count-true-le-count-false-add-one--fd15f4b48552490d277a1aa9.md) | 81 | `result-track:fd15f4b48552490d277a1aa9afe7b276d84f12f7569c789066b7c7445383628a` |
| 11 | `theorem` | [two_mul_count_bool_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/two-mul-count-bool-of-even--a1fc2a8cc429d92f28ac8434.md) | 85 | `result-track:a1fc2a8cc429d92f28ac843446238353f376af944e343cdf83d2ba7f7e994588` |
| 12 | `theorem` | [two_mul_count_bool_eq_ite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/two-mul-count-bool-eq-ite--525f6985f161c1e2975334d6.md) | 89 | `result-track:525f6985f161c1e2975334d6405edf79e7c808ef2cb1205e2844ca6021b91e3a` |
| 13 | `theorem` | [length_sub_one_le_two_mul_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/length-sub-one-le-two-mul-count-bool--054fd6122a756976b7bbd2be.md) | 99 | `result-track:054fd6122a756976b7bbd2bee4a30e269fbc86dadc6981dd483f864bba97812a` |
| 14 | `theorem` | [length_div_two_le_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/length-div-two-le-count-bool--182388a215b14afa67387265.md) | 103 | `result-track:182388a215b14afa673872658b6d65953acd1c37c43c39d1ed1b0ad5940a5b59` |
| 15 | `theorem` | [two_mul_count_bool_le_length_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant680e20bf96e856aeb17ad8df193973a1c6e4dbace1e4dc290d74f714e05c1bf7.lean/declarations/two-mul-count-bool-le-length-add-one--ea2709324868aa469780b590.md) | 108 | `result-track:ea2709324868aa469780b590fa934af43335ec77abd273fcd898d96fd1dd1d43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
