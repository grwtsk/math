# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBot.Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a35673fc0e5c62e5fd6c36924098a42587d47a5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a35673fc0e5c62e5fd6c36924098a42587d47a5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/succ--a0f98cdd1008f7f728083402.md) | 26 | `declaration-track:a0f98cdd1008f7f72808340219f0d4912c711aae76e8c19cf4ba4ec07133072a` |
| 2 | `lemma` | [succ_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/succ-bot--85829858990f26eae333d53a.md) | 29 | `result-track:85829858990f26eae333d53a85a390ea1c202f37b2c8676fe8657db02ac921b4` |
| 3 | `lemma` | [succ_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/succ-coe--98214f8c3c002b2af0081680.md) | 32 | `result-track:98214f8c3c002b2af0081680f31080d3ba0b27fcafcd940d5e900e2ae0ba33ba` |
| 4 | `lemma` | [succ_eq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/succ-eq-succ--ee868eb320789de04aeade24.md) | 34 | `result-track:ee868eb320789de04aeade24135de3e45426866e1161bc63ab0c22ff8b77fd61` |
| 5 | `lemma` | [succ_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/succ-mono--204aef2f1afe41f0a7b2528e.md) | 38 | `result-track:204aef2f1afe41f0a7b2528e01a27153f1fd11c0fb6785105524064ddfe5a51b` |
| 6 | `lemma` | [succ_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/succ-strictmono--99b537c528cb4e08ac0ab500.md) | 43 | `result-track:99b537c528cb4e08ac0ab5005efc93d71c7aa29fa6d696a127099d9528b9c3b5` |
| 7 | `lemma` | [succ_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/succ-le-succ--31bc6deb9133b27879fbc2a3.md) | 47 | `result-track:31bc6deb9133b27879fbc2a37186210b86ca56d420da3b857572f2c3e590f1f1` |
| 8 | `lemma` | [succ_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/succ-lt-succ--d53fee799f401b73b5fe25c5.md) | 48 | `result-track:d53fee799f401b73b5fe25c5edf696f3d1662e8dfd3605f973c4a2393f96c621` |
| 9 | `theorem` | [succ_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/succ-eq-bot--f8a3b012eb3a8040e3bde56b.md) | 55 | `result-track:f8a3b012eb3a8040e3bde56b05cc12d665d6cbf1ff1526bb9ed0c240d2552a10` |
| 10 | `def` | [pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/pred--c7d662f7d6a4d042ff48fe1f.md) | 71 | `declaration-track:c7d662f7d6a4d042ff48fe1f1a87d57ad4369d1606f208f613abd03c6f131a84` |
| 11 | `lemma` | [pred_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/pred-top--52dec9f53fcb5f0354766a0e.md) | 74 | `result-track:52dec9f53fcb5f0354766a0e1ed66363e69d682924ef4c902043fe632759bae9` |
| 12 | `lemma` | [pred_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/pred-coe--568eb2ae4ce17d3729706de9.md) | 77 | `result-track:568eb2ae4ce17d3729706de90e3d0c8873c400c761480940506a689df1b8f2cd` |
| 13 | `lemma` | [pred_eq_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/pred-eq-pred--978edf78c526471f48f29c9b.md) | 79 | `result-track:978edf78c526471f48f29c9bf688ec723ea3f22200ad195b1b643ebdf1e10037` |
| 14 | `lemma` | [pred_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/pred-mono--7d90a5a4ea0f706379da085f.md) | 83 | `result-track:7d90a5a4ea0f706379da085f56ac76eae845cfe19329f16193616c5f00d225b4` |
| 15 | `lemma` | [pred_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/pred-strictmono--4fa97752662beb58ed0b8f43.md) | 88 | `result-track:4fa97752662beb58ed0b8f43a6093e05983a68a6b40228f8d22c7209b9b8139a` |
| 16 | `lemma` | [pred_le_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/pred-le-pred--f4515dc699cf01b3cb22dc8a.md) | 92 | `result-track:f4515dc699cf01b3cb22dc8a1d1b004cf6bf9e99f00b0beafad9b6cee89ff418` |
| 17 | `lemma` | [pred_lt_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/pred-lt-pred--1df69f6121de8c940c0c7987.md) | 93 | `result-track:1df69f6121de8c940c0c79877f18b35d21c7fc768c8952b34267e1072926cca9` |
| 18 | `theorem` | [pred_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variantf962a9884822be02759d139a81bde0e795fd6f0fab9cb0adf148bde6b7f28aff.lean/declarations/pred-eq-top--f979af1ad3fabe7b36de45bc.md) | 100 | `result-track:f979af1ad3fabe7b36de45bcc531f859f0090bca77dc3ecf97950788cf8f65d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
