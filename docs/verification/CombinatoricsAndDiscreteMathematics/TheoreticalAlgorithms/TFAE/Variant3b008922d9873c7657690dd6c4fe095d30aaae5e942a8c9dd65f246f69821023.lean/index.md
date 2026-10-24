# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TFAE.Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2986d8c289b8007138fa0c05f6fe424a8864d3a7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2986d8c289b8007138fa0c05f6fe424a8864d3a7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.List.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TFAE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/declarations/tfae--cc4ceabdf91be2ea79321612.md) | 26 | `declaration-track:cc4ceabdf91be2ea79321612264416acf6e08b642745228ead6c587007ab52f1` |
| 2 | `theorem` | [tfae_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/declarations/tfae-nil--ac210e5b1de6a5539c039db7.md) | 30 | `result-track:ac210e5b1de6a5539c039db70e771989929a2d7ef6b83edeefad4324fa04cae9` |
| 3 | `theorem` | [tfae_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/declarations/tfae-singleton--b5baf9b02499a6df5daaa743.md) | 34 | `result-track:b5baf9b02499a6df5daaa74327578ae6612665e1888b94db321743811098a380` |
| 4 | `theorem` | [tfae_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/declarations/tfae-cons-of-mem--7cb35c17a9d95683afbb13f7.md) | 37 | `result-track:7cb35c17a9d95683afbb13f7589455ffe4fbcfb78100d8acd166cea77e888f05` |
| 5 | `theorem` | [tfae_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/declarations/tfae-cons-cons--be518a7cddb2ea4b588bd889.md) | 48 | `result-track:be518a7cddb2ea4b588bd88947407c1932b8be33a8003eedd520a4b08907d023` |
| 6 | `theorem` | [tfae_of_forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/declarations/tfae-of-forall--30be71b376aec118f0135445.md) | 52 | `result-track:30be71b376aec118f0135445d9793b3b67812707b484e09c409f3315da464c03` |
| 7 | `theorem` | [tfae_of_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/declarations/tfae-of-cycle--37bf13c6fe2d34363bfc9b44.md) | 56 | `result-track:37bf13c6fe2d34363bfc9b44e00c4d676f1ccbc673c1633ba8d7691d7fa2613f` |
| 8 | `theorem` | [TFAE.out](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/declarations/tfae-out--b2f82c7b20bf3a5c61af80cf.md) | 67 | `result-track:b2f82c7b20bf3a5c61af80cffa8945137f656c454caf42000676a525ab69aa7b` |
| 9 | `theorem` | [forall_tfae](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/declarations/forall-tfae--11ab25f0f9de72d7d79917a9.md) | 84 | `result-track:11ab25f0f9de72d7d79917a9e74fe5f34d2d5e39239dc5ac7f022f824973ab42` |
| 10 | `theorem` | [exists_tfae](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant3b008922d9873c7657690dd6c4fe095d30aaae5e942a8c9dd65f246f69821023.lean/declarations/exists-tfae--c78c4582b08396f7a19b286e.md) | 103 | `result-track:c78c4582b08396f7a19b286e64b9e297ac831cf4f9611267dd96f50ecdd46d77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
