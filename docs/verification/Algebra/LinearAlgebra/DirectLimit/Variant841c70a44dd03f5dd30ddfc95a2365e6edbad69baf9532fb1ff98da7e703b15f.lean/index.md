# Verification target: GRWTSK.Algebra.LinearAlgebra.DirectLimit.Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "217a0eacb41009a2b7f237babca315b655b07c07",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `217a0eacb41009a2b7f237babca315b655b07c07`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean.json)

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
| 1 | `def` | [fromDirectLimit](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/fromdirectlimit--9c00d3563566fe159efaee51.md) | 47 | `declaration-track:9c00d3563566fe159efaee510e32c70e09fadcd06c4263445c53fbce70f06cd0` |
| 2 | `lemma` | [fromDirectLimit_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/fromdirectlimit-of-tmul--a606389d80a513fd7bae94d5.md) | 53 | `result-track:a606389d80a513fd7bae94d586f472a613143f50cd0712334d5739962a514f8b` |
| 3 | `def` | [toDirectLimit](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/todirectlimit--e8a1315b0d257dc9fcf2b3c1.md) | 61 | `declaration-track:e8a1315b0d257dc9fcf2b3c1d24b0497253ed1497b0e58435004690f5db5ee85` |
| 4 | `lemma` | [toDirectLimit_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/todirectlimit-tmul-of--7e60383302932a71849b353d.md) | 68 | `result-track:7e60383302932a71849b353d0079d934241779ea3ca7af966f9681136134a572` |
| 5 | `def` | [directLimitLeft](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/directlimitleft--a64463779c18c8efb04a0c8a.md) | 78 | `declaration-track:a64463779c18c8efb04a0c8a4ffb8aae3f732bc8c006847e09077b88ef3b84e5` |
| 6 | `lemma` | [directLimitLeft_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/directlimitleft-tmul-of--206b0ec3df88818f564b4c9b.md) | 82 | `result-track:206b0ec3df88818f564b4c9b5f6f5cc88c57050e61e80f10e661a031afb405a6` |
| 7 | `lemma` | [directLimitLeft_symm_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/directlimitleft-symm-of-tmul--07b73e9358bfe15f50786a26.md) | 86 | `result-track:07b73e9358bfe15f50786a26d8be27dc9064f1dc39e087aa9c6e6caca7a98a0b` |
| 8 | `lemma` | [directLimitLeft_rTensor_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/directlimitleft-rtensor-of--7476a6fbedf967bdf0355bce.md) | 90 | `result-track:7476a6fbedf967bdf0355bcef111598ed0c6b54f7d44b1f46a41a51afd69053d` |
| 9 | `def` | [directLimitRight](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/directlimitright--9e266665163e939636721411.md) | 97 | `declaration-track:9e266665163e9396367214117a6b6e7582b0b23305997440453c9edc63ea9815` |
| 10 | `lemma` | [directLimitRight_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/directlimitright-tmul-of--72c222ce8378e45fe6b0f092.md) | 103 | `result-track:72c222ce8378e45fe6b0f09295e9ca3176c1e77054108443288fb2ee9f9c4fcb` |
| 11 | `lemma` | [directLimitRight_symm_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/directlimitright-symm-of-tmul--b82ebf2af58a3c41b2788776.md) | 107 | `result-track:b82ebf2af58a3c41b278877696337ffc8cbcdfc1e81d10956f35f62c0fd72a8e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/instance--f6b0a1527b95d46070ba42c1.md) | 113 | `declaration-track:f6b0a1527b95d46070ba42c1042d474a87f66d4e4ae43331e893d84ad424eb28` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variant841c70a44dd03f5dd30ddfc95a2365e6edbad69baf9532fb1ff98da7e703b15f.lean/declarations/instance--8d0fe74594a7419168ead5ca.md) | 119 | `declaration-track:8d0fe74594a7419168ead5ca91ae2ada396a2f5db65288814e8b3f1d4c2bbcb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
