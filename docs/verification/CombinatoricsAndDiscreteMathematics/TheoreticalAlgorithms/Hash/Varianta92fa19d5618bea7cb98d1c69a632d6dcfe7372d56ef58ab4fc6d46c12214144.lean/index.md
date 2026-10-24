# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash.Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43444d5b5e13290c1aa1e50b3c7e1b1de749da75",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43444d5b5e13290c1aa1e50b3c7e1b1de749da75`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean.json)

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
| 1 | `structure` | [Hash256](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean/declarations/hash256--5523bdb18bf96c7e0f87cf46.md) | 26 | `declaration-track:5523bdb18bf96c7e0f87cf465a1955fdb521b96a96a6a2edfe914dccc14536de` |
| 2 | `def` | [lowerHexAlphabet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean/declarations/lowerhexalphabet--a667d09994ad9851913656ba.md) | 31 | `declaration-track:a667d09994ad9851913656baa2f11addde52565ca7ef3db6abd58961eac29c22` |
| 3 | `def` | [IsLowerHexDigit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean/declarations/islowerhexdigit--3f1351f09dfebd0ee3287ce7.md) | 34 | `declaration-track:3f1351f09dfebd0ee3287ce7cfafd2b7edbe17d07a2781cc387de2896a1e1542` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean/declarations/instance--6f98bee8ce009348f6b0242d.md) | 37 | `declaration-track:6f98bee8ce009348f6b0242d4baa358975b63f32d37343b25c1ccc84bc95d379` |
| 5 | `def` | [Hash256.Valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean/declarations/hash256-valid--976434fab2916eba44d93ae9.md) | 41 | `declaration-track:976434fab2916eba44d93ae90d9475cee65b88c1b1c22d8dbdc45f2c1eefbb4d` |
| 6 | `instance` | [instDecidableHash256Valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean/declarations/instdecidablehash256valid--19f71c0995ff4b01fa2f99f3.md) | 46 | `declaration-track:19f71c0995ff4b01fa2f99f3dc5729fbabd421d0548bde350ac7cf91b87ae7a9` |
| 7 | `def` | [verifyHash256](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean/declarations/verifyhash256--61f50f609ffe2941937c8d9f.md) | 50 | `declaration-track:61f50f609ffe2941937c8d9fc6ea06ac29ed050048bf86a58bd3c28d21570599` |
| 8 | `theorem` | [verifyHash256_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hash/Varianta92fa19d5618bea7cb98d1c69a632d6dcfe7372d56ef58ab4fc6d46c12214144.lean/declarations/verifyhash256-sound--b1de9fdd7067f9e28ef9cfd6.md) | 54 | `result-track:b1de9fdd7067f9e28ef9cfd655087d83b7c95e961374cf6259e99b922a60793a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
