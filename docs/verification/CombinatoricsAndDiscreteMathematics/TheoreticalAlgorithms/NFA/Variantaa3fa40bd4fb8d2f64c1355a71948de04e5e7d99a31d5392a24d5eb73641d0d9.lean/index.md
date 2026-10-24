# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NFA.Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a089b6d03ee441f5680e31f264248aeeb1e8e43",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a089b6d03ee441f5680e31f264248aeeb1e8e43`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.DFA` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/nfa--be06f731269c60d308329d45.md) | 30 | `declaration-track:be06f731269c60d308329d455b91e26db20bb7b8f15c9576b0589f1134adb782` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/instance--a1d6af7fe84fa3bf4e7576ad.md) | 42 | `declaration-track:a1d6af7fe84fa3bf4e7576ad63e04ada9518078e23ad38425a7c43c15f841530` |
| 3 | `def` | [stepSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/stepset--94c268c33742e3e6f53d6bbe.md) | 47 | `declaration-track:94c268c33742e3e6f53d6bbe329b0197d97d7e9b72ba7438da32ecc07600b19a` |
| 4 | `theorem` | [mem_stepSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/mem-stepset--8dea58146e850cb94ae5c3ea.md) | 50 | `result-track:8dea58146e850cb94ae5c3ead85fcd92427a61c0103a4e884fcae60c71791e55` |
| 5 | `theorem` | [stepSet_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/stepset-empty--2ee5f57b6c85dfd968775867.md) | 55 | `result-track:2ee5f57b6c85dfd9687758670bd2429d5a1b4855afd2d40f2bb8f79bc3d1aa7f` |
| 6 | `def` | [evalFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/evalfrom--fde04159c92ec7e46198b5b0.md) | 60 | `declaration-track:fde04159c92ec7e46198b5b00476a2667f0372a3e9ef324a6a963fa50c4f802b` |
| 7 | `theorem` | [evalFrom_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/evalfrom-nil--68049c9ee4f13f9d59e49ed3.md) | 65 | `result-track:68049c9ee4f13f9d59e49ed320aabf6769efb4e3b9a0fdeea07a128f141dd154` |
| 8 | `theorem` | [evalFrom_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/evalfrom-singleton--41b0f60417e61be1f93a7def.md) | 70 | `result-track:41b0f60417e61be1f93a7defc7c12e382a2a570d98938d2a6c67d6446044e387` |
| 9 | `theorem` | [evalFrom_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/evalfrom-append-singleton--8db50b744c64eb849f746978.md) | 75 | `result-track:8db50b744c64eb849f74697876d2d5e8b7c08998b4cbbcfd1628d341ea38dca5` |
| 10 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/eval--f0947d8826ac4fffa7a8bea0.md) | 82 | `declaration-track:f0947d8826ac4fffa7a8bea0d03e9a3f5c47f4647e2b346ca4343f161d00e128` |
| 11 | `theorem` | [eval_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/eval-nil--3e7598a87e54537183e48a05.md) | 87 | `result-track:3e7598a87e54537183e48a05fff2a60832672ead28bb21625b2723b533b7b570` |
| 12 | `theorem` | [eval_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/eval-singleton--e86f89d0ab6e5717b74af172.md) | 92 | `result-track:e86f89d0ab6e5717b74af172291a105e0853387de686d72dfdeda96599ec0067` |
| 13 | `theorem` | [eval_append_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/eval-append-singleton--68ca961969d0294e572e2457.md) | 97 | `result-track:68ca961969d0294e572e2457ffcaca3badc0fe1b6db8f2b0ca5016dab826e772` |
| 14 | `def` | [accepts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/accepts--61c245fdf7d9d4d959619ef0.md) | 102 | `declaration-track:61c245fdf7d9d4d959619ef0728582130acc0d3d651ad42a7119b262e6538b6d` |
| 15 | `theorem` | [mem_accepts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/mem-accepts--04977da471f8beeb7cc45e55.md) | 104 | `result-track:04977da471f8beeb7cc45e558b01126b54d3111689a0d06b6ec3e465fbb4ef79` |
| 16 | `def` | [toDFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/todfa--5bbc8c84efc56c0f3cf9147c.md) | 110 | `declaration-track:5bbc8c84efc56c0f3cf9147c7949d3546b10e9e3b9783e0e7610d381564c701f` |
| 17 | `theorem` | [toDFA_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/todfa-correct--a9cf77432e4aa04be1cc3f14.md) | 116 | `result-track:a9cf77432e4aa04be1cc3f14bd2173171bb52f430f8c9671fee68f268c8bc782` |
| 18 | `theorem` | [pumping_lemma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/pumping-lemma--b0cc26b1d96a6d4eea829f2f.md) | 121 | `result-track:b0cc26b1d96a6d4eea829f2fdf8e7144b1e22b61d28e1697f4bba2b0399ecd94` |
| 19 | `def` | [toNFA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/tonfa--16434b2db4670defd10d986e.md) | 135 | `declaration-track:16434b2db4670defd10d986e07139074ed915abd638ae3491e616634137e0d4a` |
| 20 | `theorem` | [toNFA_evalFrom_match](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/tonfa-evalfrom-match--e927b43aff88d42ae2e68774.md) | 141 | `result-track:e927b43aff88d42ae2e68774ae3605006bc77aecc19f418e19e9edcc4247e35d` |
| 21 | `theorem` | [toNFA_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/tonfa-correct--7940b5ae73e7fd050a515e7e.md) | 151 | `result-track:7940b5ae73e7fd050a515e7e72539d115a16f793222a1c75c4bd9b2e187a2b3b` |
| 22 | `def` | [reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/reverse--d3eab26b56b108a6a7e8ae7c.md) | 167 | `declaration-track:d3eab26b56b108a6a7e8ae7c62b94a19920685635ad1b10e268d6aabdd8ba3d6` |
| 23 | `theorem` | [reverse_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/reverse-reverse--a6d926ab284cc6df0cd65fd6.md) | 174 | `result-track:a6d926ab284cc6df0cd65fd6819ebaf3fba2ef90f8b6d92dd45d2c468dbca4a8` |
| 24 | `theorem` | [disjoint_stepSet_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/disjoint-stepset-reverse--cb847709036278369c0855bc.md) | 177 | `result-track:cb847709036278369c0855bc06fe6e94747dd64aa07298fbc82ab1e47493c053` |
| 25 | `theorem` | [disjoint_evalFrom_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/disjoint-evalfrom-reverse--206c7141cafa1facf79531f9.md) | 183 | `result-track:206c7141cafa1facf79531f9b3117c0d80ec3a0487bad833405865cd23c50ad4` |
| 26 | `theorem` | [disjoint_evalFrom_reverse_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/disjoint-evalfrom-reverse-iff--8a9f93c5d79f1e3f6b98dd5f.md) | 195 | `result-track:8a9f93c5d79f1e3f6b98dd5f2906de775624faa8e1bae066c3fd2baa19a96328` |
| 27 | `theorem` | [mem_accepts_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/mem-accepts-reverse--89d83107a4b944cddfdec78f.md) | 200 | `result-track:89d83107a4b944cddfdec78f0c2475be2193bf8349e1b859565996a5634ab6c4` |
| 28 | `theorem` | [IsRegular.reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/isregular-reverse--b9fe58d059dddb3c70135166.md) | 207 | `result-track:b9fe58d059dddb3c70135166ecdaca0208a100aec455b65823323990232fff93` |
| 29 | `theorem` | [IsRegular.of_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/isregular-of-reverse--9dd15115ed36f0144d88fc54.md) | 211 | `result-track:9dd15115ed36f0144d88fc540b5b881eb4295bf22e85fa72f0b7f9253fda81fb` |
| 30 | `theorem` | [isRegular_reverse_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NFA/Variantaa3fa40bd4fb8d2f64c1355a71948de04e5e7d99a31d5392a24d5eb73641d0d9.lean/declarations/isregular-reverse-iff--568e26c503e83552c31c12e3.md) | 216 | `result-track:568e26c503e83552c31c12e35e31374d546d8c2fa99b95be378caf48cf9101fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
