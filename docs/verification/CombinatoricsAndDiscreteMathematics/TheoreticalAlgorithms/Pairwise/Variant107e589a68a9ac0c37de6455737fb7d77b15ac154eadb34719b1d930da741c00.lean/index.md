# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Pairwise.Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06868b0529acdf50f9c1ea46aa5d03ab4e288420",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06868b0529acdf50f9c1ea46aa5d03ab4e288420`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean.json)

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
| 1 | `def` | [Pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean/declarations/pairwise--ae382a3391208ae47c4f586f.md) | 23 | `declaration-track:ae382a3391208ae47c4f586f01f99b893839042a00b4c2e6091259be2dcefe0d` |
| 2 | `theorem` | [pairwise_iff_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean/declarations/pairwise-iff-getelem--fa364b6c6a32bd2094916cc3.md) | 25 | `result-track:fa364b6c6a32bd2094916cc303f15ce690d8f926d0555091ad88ee1e3d9e8bf8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean/declarations/instance--827cec7c7cf66b8ff2e8e6ec.md) | 29 | `declaration-track:827cec7c7cf66b8ff2e8e6ec25799277604ca54071e57991c13a976e115939b5` |
| 4 | `theorem` | [pairwise_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean/declarations/pairwise-empty--5a10acb05c2b7e99e4f5940b.md) | 38 | `result-track:5a10acb05c2b7e99e4f5940bef21175dace7940c9947780a46f1964b8eeeb5e5` |
| 5 | `theorem` | [pairwise_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean/declarations/pairwise-singleton--8a7c07501b41a88606ebab1e.md) | 42 | `result-track:8a7c07501b41a88606ebab1e1a44151b814f7de9505ae8d8d3ec060928e8b7da` |
| 6 | `theorem` | [pairwise_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean/declarations/pairwise-pair--99700dc765e9dded39434d9a.md) | 46 | `result-track:99700dc765e9dded39434d9a246b730646a4b322e9dca971c6f0b279b4034106` |
| 7 | `theorem` | [pairwise_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean/declarations/pairwise-append--6d0ebd17432628c0f14719db.md) | 50 | `result-track:6d0ebd17432628c0f14719db6e1ce0b6a43fdbf9df311c3e2b5ce0d68092c3a2` |
| 8 | `theorem` | [pairwise_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean/declarations/pairwise-push--a506cae29e4972f317d256aa.md) | 55 | `result-track:a506cae29e4972f317d256aac2fba88a34afdbbaf9c5227ec7ce0155b4394a05` |
| 9 | `theorem` | [pairwise_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant107e589a68a9ac0c37de6455737fb7d77b15ac154eadb34719b1d930da741c00.lean/declarations/pairwise-extract--677514cb3a786dbaaa3ee8ad.md) | 61 | `result-track:677514cb3a786dbaaa3ee8ad500aaec32c82c03b70cf72ae4bc59fd26cd8df5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
