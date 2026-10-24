# Verification target: GRWTSK.Algebra.LinearAlgebra.Graded.Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ea10d8d9ccab414dc5f012ee21fd53d3bb4ae7d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ea10d8d9ccab414dc5f012ee21fd53d3bb4ae7d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean.json)

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
| 1 | `class` | [SetLike.GradedBracket](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/setlike-gradedbracket--f4dc8b972eaae9deac875427.md) | 45 | `declaration-track:f4dc8b972eaae9deac875427bfb4c72c8913f10a6955a6bbcc4bd69b923d0ecd` |
| 2 | `class` | [GradedLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/gradedliealgebra--1f65b94d729a599be5f9d1d1.md) | 55 | `declaration-track:1f65b94d729a599be5f9d1d157258be6286e97e257af57f023b31b8f557ca7ae` |
| 3 | `class` | [GradedLieModule](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/gradedliemodule--64286b882fdc91a21d806d5f.md) | 58 | `declaration-track:64286b882fdc91a21d806d5f246efb27696b22ff6e1b145ad6edc6bc7009bc8d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/instance--419c3b496057a45d0f0086ed.md) | 68 | `declaration-track:419c3b496057a45d0f0086edf91fbd1f97c6019cb49e2e424d16fe295525b53d` |
| 5 | `lemma` | [bracket_apply_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/bracket-apply-apply-self--2c570224f80e7e952f5f4ec2.md) | 76 | `result-track:2c570224f80e7e952f5f4ec28d6d70bb7dabf59bad47bb80ed602d733db7254b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/instance--3c2b99a70946e374b0c16391.md) | 86 | `declaration-track:3c2b99a70946e374b0c163918b1d2f370ab75415eee93420d15384fd10eae3d9` |
| 7 | `lemma` | [bracket_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/bracket-apply-apply--254fc4ef223889cc4fd9d61b.md) | 93 | `result-track:254fc4ef223889cc4fd9d61b2b81df50e93719ca06cc264b2b4ef1739e893c9c` |
| 8 | `lemma` | [decompose_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/decompose-bracket--c6808fee2f47b560f41be872.md) | 100 | `result-track:c6808fee2f47b560f41be872b668e0f3ec5e6d185614047af4134509e89455a7` |
| 9 | `lemma` | [decompose_symm_bracket](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/decompose-symm-bracket--64d65af513ba6bc4e4b64f88.md) | 106 | `result-track:64d65af513ba6bc4e4b64f883aa1d7ec816addb131606e9114b6ec99fdece52c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/instance--477d09827ef9b6950133f2ee.md) | 111 | `declaration-track:477d09827ef9b6950133f2ee552c5b0c5e5afb79c5fa8bdfaefef0d476feb1b9` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/instance--8580b2c0c6c29dc2e5a88f60.md) | 116 | `declaration-track:8580b2c0c6c29dc2e5a88f600fc8c0a06eec3dd82e2ba7044355300b657014b4` |
| 12 | `def` | [decomposeLieEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/decomposelieequiv--039d0241bdf59c975a9019e9.md) | 122 | `declaration-track:039d0241bdf59c975a9019e9002a9faa5b9eb8f1bf493feb5f994afeb71f7b88` |
| 13 | `def` | [ofGradingSum](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/ofgradingsum--85648f32df7b7c5508fcd127.md) | 135 | `declaration-track:85648f32df7b7c5508fcd127fc4d80e8c5868a79cdd845b1bb01dad99b17ba44` |
| 14 | `lemma` | [ofGradingSum_of](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/ofgradingsum-of--86527333f397233a9c90daf5.md) | 170 | `result-track:86527333f397233a9c90daf5dad00441f852c9edb12622b1fac02ad8d5517118` |
| 15 | `def` | [ofGrading](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/ofgrading--7bad7168ddd60e80eb30d292.md) | 176 | `declaration-track:7bad7168ddd60e80eb30d292ff819ef98739a306e4d95ef16b338d456465f7a6` |
| 16 | `lemma` | [ofGrading_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Graded/Variant9a25b974674c82b6e547c71e0e2331fce63f04e04a9c474a8cf725e5a795a2e5.lean/declarations/ofgrading-apply-apply--6944ba5c30dd38033267dede.md) | 186 | `result-track:6944ba5c30dd38033267dede3c5d083645c868fc83912cf80b4ee067d9f79e7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
