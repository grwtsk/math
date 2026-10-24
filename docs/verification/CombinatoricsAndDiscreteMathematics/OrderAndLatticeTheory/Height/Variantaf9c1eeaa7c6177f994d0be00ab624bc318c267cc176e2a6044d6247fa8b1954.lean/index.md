# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Height.Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "599ff39bf38ed32037a4382b48286a43bba6f520",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `599ff39bf38ed32037a4382b48286a43bba6f520`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean.json)

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
| 1 | `def` | [chainHeight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight--e5e881c56436279610f7108b.md) | 51 | `declaration-track:e5e881c56436279610f7108b2b59067914277b70d0616028995b184d4e1873f7` |
| 2 | `theorem` | [chainHeight_eq_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-eq-isup--03412da6375317492bf449e1.md) | 53 | `result-track:03412da6375317492bf449e1039c76a7fe1e058356fdd6341bfd049253652b25` |
| 3 | `theorem` | [chainHeight_le_encard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-le-encard--ad69268a77004ef516d3e6ae.md) | 56 | `result-track:ad69268a77004ef516d3e6aef821f55ef85bb2f44e9778c2a9d43702d403d2e5` |
| 4 | `theorem` | [chainHeight_ne_top_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-ne-top-of-finite--b9842f2c5043164a12485c80.md) | 59 | `result-track:b9842f2c5043164a12485c80f895738b6243c81baa647374827381ad00d589e0` |
| 5 | `theorem` | [exists_isChain_of_le_chainHeight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/exists-ischain-of-le-chainheight--96d6bae8484d1d228dd5ed22.md) | 63 | `result-track:96d6bae8484d1d228dd5ed228e340463e951c27782e432c521714ba203a088ed` |
| 6 | `theorem` | [exists_eq_chainHeight_of_chainHeight_ne_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/exists-eq-chainheight-of-chainheight-ne-top--721f16ac9211299c2f1f5681.md) | 74 | `result-track:721f16ac9211299c2f1f5681606bf2fd822b040a43783b98c403aa34257d1bbe` |
| 7 | `theorem` | [exists_eq_chainHeight_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/exists-eq-chainheight-of-finite--b21bac6788d79cbf29c15999.md) | 80 | `result-track:b21bac6788d79cbf29c159997fc2dea298f151f9f8b06bcdd1ac8cabce18b5d2` |
| 8 | `theorem` | [encard_le_chainHeight_of_isChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/encard-le-chainheight-of-ischain--766561f994e340435e3bbe88.md) | 84 | `result-track:766561f994e340435e3bbe8869af6b2e2c20afd35e883e20d8350ed6be2d59e1` |
| 9 | `theorem` | [encard_eq_chainHeight_of_isChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/encard-eq-chainheight-of-ischain--90cb9eeecb167232951de5aa.md) | 88 | `result-track:90cb9eeecb167232951de5aa896cd7605cef2a32e05c7d5e126971e9c4270af7` |
| 10 | `theorem` | [finite_of_chainHeight_ne_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/finite-of-chainheight-ne-top--6e72a6be127de3b1c854c479.md) | 92 | `result-track:6e72a6be127de3b1c854c47954c97d1ac68ee5fc57ee0718d8b196d4a4cef8c2` |
| 11 | `theorem` | [not_isChain_of_chainHeight_lt_encard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/not-ischain-of-chainheight-lt-encard--d8a4dca469b3391b3d9ea678.md) | 97 | `result-track:d8a4dca469b3391b3d9ea6781135ec317a3e3685e0bbfae69e506a944979a666` |
| 12 | `theorem` | [chainHeight_eq_top_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-eq-top-iff--9970d8ab17ffcfcab6caa95d.md) | 103 | `result-track:9970d8ab17ffcfcab6caa95d5bb5aa29ed940c923e84fb5afa0337dab0e7afd8` |
| 13 | `theorem` | [chainHeight_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-eq-zero-iff--8f2b704a420c4f72c94bf7f5.md) | 113 | `result-track:8f2b704a420c4f72c94bf7f59e857cf8dcecff10fae2052f45d5bb5a77cbb79a` |
| 14 | `theorem` | [chainHeight_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-empty--d8a18a5a5f09ff8353adbdc8.md) | 121 | `result-track:d8a18a5a5f09ff8353adbdc8d57ed6049f6a1e27b75c684f61a4e04ffe24e160` |
| 15 | `theorem` | [one_le_chainHeight_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/one-le-chainheight-iff--f9547fe97665b062ee345966.md) | 125 | `result-track:f9547fe97665b062ee345966f0339d48806a3fb25a112ba2bc345c0ce8eb7a55` |
| 16 | `theorem` | [chainHeight_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-of-isempty--9b95e0cd53647617532c648f.md) | 133 | `result-track:9b95e0cd53647617532c648f8abb467a1f11309ba7c34f117a18096fe71e3072` |
| 17 | `theorem` | [chainHeight_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-mono--246caf742a865d62b205a929.md) | 137 | `result-track:246caf742a865d62b205a929ecb373a91c19bc37b5ba9dfd499c0c7bcd13fd6c` |
| 18 | `theorem` | [chainHeight_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-flip--9dea1cf416b52c1223cb4d10.md) | 143 | `result-track:9dea1cf416b52c1223cb4d10857cf21e145d9d608008189bd398b4fcdfd34974` |
| 19 | `theorem` | [chainHeight_eq_of_relEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-eq-of-relembedding--8ae939a1aa3901c2b78f3132.md) | 154 | `result-track:8ae939a1aa3901c2b78f3132ad5d05a2139f02c9e685d6ed00da014181b1796c` |
| 20 | `theorem` | [chainHeight_eq_of_relIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-eq-of-reliso--4d37bbed65d596aa82d77f5d.md) | 165 | `result-track:4d37bbed65d596aa82d77f5dd702d468b4f91db40819f636ad3be09e31407b49` |
| 21 | `theorem` | [chainHeight_coe_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-coe-univ--3a1c04ea98a2bae9e95a7001.md) | 171 | `result-track:3a1c04ea98a2bae9e95a7001cf0aecb10f991410796a00a3c36d3a0db13c3334` |
| 22 | `theorem` | [chainHeight_coe_univ_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-coe-univ-le--ceced6f9c8ea354974949610.md) | 177 | `result-track:ceced6f9c8ea35497494961049bba97ef607fbea8a6803e89288a518f44da2c6` |
| 23 | `theorem` | [chainHeight_coe_univ_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variantaf9c1eeaa7c6177f994d0be00ab624bc318c267cc176e2a6044d6247fa8b1954.lean/declarations/chainheight-coe-univ-lt--557e1988c3d1945dcbe5da94.md) | 182 | `result-track:557e1988c3d1945dcbe5da948dcea421c0273cd882043baf6c144fe85cf1f7e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
