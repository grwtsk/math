# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Pairwise.Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a2f0dc7819c5656049e1d99f6ba0be56f1e04ca",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a2f0dc7819c5656049e1d99f6ba0be56f1e04ca`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean.json)

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
| 1 | `def` | [Pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise--d6130b84149575f44013173d.md) | 34 | `declaration-track:d6130b84149575f44013173d20eb2038c3a9719c8ac518f3decd43931f5e0d21` |
| 2 | `theorem` | [Pairwise.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-mono--7689ba97567f6b06c4b5a40d.md) | 37 | `result-track:7689ba97567f6b06c4b5a40d6e548f8d3bb671aefafaa6fdc5dba77e9d974bac` |
| 3 | `theorem` | [Pairwise.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-eq--09672a6d7840bd0800c7423a.md) | 40 | `result-track:09672a6d7840bd0800c7423aee1b1a21e187333b45204ff09408ba2e2f63ef9e` |
| 4 | `lemma` | [Subsingleton.pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/subsingleton-pairwise--b467a68a908d794f0fdaef72.md) | 44 | `result-track:b467a68a908d794f0fdaef72dcf2dcaee8af5478d9047adc84a58813890eed8c` |
| 5 | `theorem` | [Function.injective_iff_pairwise_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/function-injective-iff-pairwise-ne--f598be4884b7cdc4229e2f91.md) | 47 | `result-track:f598be4884b7cdc4229e2f91228fc9dcb67b73c05c808f6d2642d39c71113273` |
| 6 | `lemma` | [Pairwise.comp_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-comp-of-injective--3dd1f81d831815d3db0ec751.md) | 52 | `result-track:3dd1f81d831815d3db0ec7517147cada275e14336a654ec9e00935e643e89524` |
| 7 | `lemma` | [Pairwise.of_comp_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-of-comp-of-surjective--23c82733b90996e90ed69463.md) | 56 | `result-track:23c82733b90996e90ed69463f54d7d14d4d19da44895be487075b5470d749169` |
| 8 | `lemma` | [Function.Bijective.pairwise_comp_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/function-bijective-pairwise-comp-iff--070a9fafa92e03ea1678b4de.md) | 59 | `result-track:070a9fafa92e03ea1678b4de4ca1bd2f0a16c6db60fca43dfa3ca934291783d1` |
| 9 | `theorem` | [pairwise_fin_succ_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-fin-succ-iff--73371bdc5942acb027141790.md) | 63 | `result-track:73371bdc5942acb0271417907876743d5119231999909633af657441aa22a3bf` |
| 10 | `theorem` | [pairwise_fin_succ_iff_of_isSymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-fin-succ-iff-of-issymm--4e845afca739065f8b5f2065.md) | 76 | `result-track:4e845afca739065f8b5f206500be0a458878dd8cf5c5ca5d79590ff758c37c36` |
| 11 | `def` | [Pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise--5c348f896ba4ca5d5c04f811.md) | 83 | `declaration-track:5c348f896ba4ca5d5c04f811a7a24bcea3bae6918592342fb9b5178b92875ffc` |
| 12 | `theorem` | [pairwise_of_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-of-forall--0818154f84505985173b5b45.md) | 86 | `result-track:0818154f84505985173b5b450f0b67e3d9d178161ded9a582a6c6dc1012ce766` |
| 13 | `theorem` | [Pairwise.imp_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-imp-on--0ba76d2a1dbb8773b16041d9.md) | 89 | `result-track:0ba76d2a1dbb8773b16041d9ef6ecea5a18c4f1fff7936293abaac941109ffac` |
| 14 | `theorem` | [Pairwise.imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-imp--cb01deddff6ea979326c593f.md) | 93 | `result-track:cb01deddff6ea979326c593f2f20ab837215b1a43eaab453964b0622d24332eb` |
| 15 | `theorem` | [Pairwise.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-eq--94ed5fd817aea8f1b09af06f.md) | 96 | `result-track:94ed5fd817aea8f1b09af06f22f9a00d93997ca63dd17215718a7c13ba55e2ef` |
| 16 | `theorem` | [pairwise_iff_of_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-iff-of-refl--2d6994845df5260aae457ab2.md) | 99 | `result-track:2d6994845df5260aae457ab22c560f1821b2ed263779f221e0c3074dc0f56b0b` |
| 17 | `theorem` | [Pairwise.of_forall₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-of-forall--07697c3017513214834b58d0.md) | 105 | `result-track:07697c3017513214834b58d0219d8b5dfcb74ef328d32201e47f821bdea1ca5c` |
| 18 | `theorem` | [Pairwise.on_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-on-injective--f2e783dc92b86b3546c4b37a.md) | 116 | `result-track:f2e783dc92b86b3546c4b37ac9f258e801b4254e3b08794066d243c7bb086346` |
| 19 | `theorem` | [Pairwise.set_pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variantccac95d1101a308ae38946e81caaa6d2c32e7e90ed99f7305dba9f01a955e62f.lean/declarations/pairwise-set-pairwise--6a100fe74a44828fecb3193e.md) | 121 | `result-track:6a100fe74a44828fecb3193e68af674dc2a6600c011411eaf81d022cd2e256b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
