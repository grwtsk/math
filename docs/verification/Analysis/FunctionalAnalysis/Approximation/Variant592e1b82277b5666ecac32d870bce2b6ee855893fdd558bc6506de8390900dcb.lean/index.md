# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Approximation.Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0658a7e822f25a8d56985d6617e531fa76d573ad",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0658a7e822f25a8d56985d6617e531fa76d573ad`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuity.Lindelof` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convex_re_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/convex-re-epigraph--189d7c8c9f84f821944a6a8b.md) | 40 | `result-track:189d7c8c9f84f821944a6a8b3ebb74edbac2afed337c2f87d4feb51df505cfaf` |
| 2 | `theorem` | [_root_.LowerSemicontinuousOn.isClosed_re_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/root-lowersemicontinuouson-isclosed-re-epigraph--6ded58bba6899f73bff7482f.md) | 48 | `result-track:6ded58bba6899f73bff7482f5804a14d89b481c3316290b3ba47073e7c542e67` |
| 3 | `lemma` | [exists_affine_le_of_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/exists-affine-le-of-lt--6e33b705f3310465c1448fbe.md) | 68 | `result-track:6e33b705f3310465c1448fbec28cf74a5f0b2ddcbf863bf527beb3657912404b` |
| 4 | `lemma` | [exists_affine_le_of_lt_real](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/exists-affine-le-of-lt-real--ae3508c40ed12d597e698735.md) | 90 | `result-track:ae3508c40ed12d597e698735ef682e95fc059e4562be6f67e7201644a8abff78` |
| 5 | `lemma` | [exists_affine_le_real](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/exists-affine-le-real--9cf36ba50a4124c7dc5d32a3.md) | 97 | `result-track:9cf36ba50a4124c7dc5d32a3ca9b3cc78d07a0e0b7817c8866410646d58ede86` |
| 6 | `theorem` | [sSup_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/ssup-affine-eq--64d1905f60cbe90cb0a3f093.md) | 109 | `result-track:64d1905f60cbe90cb0a3f093657b6b4a28a70c82b9a2121d705e537d9b759fed` |
| 7 | `theorem` | [sSup_of_countable_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/ssup-of-countable-affine-eq--04b438b84806cd86e698f6ac.md) | 126 | `result-track:04b438b84806cd86e698f6acee6a11115da48db024b4d7cf3f82820fd07c421c` |
| 8 | `theorem` | [sSup_of_nat_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/ssup-of-nat-affine-eq--469ab7905da83dc553324893.md) | 150 | `result-track:469ab7905da83dc553324893fb197055639ba7ec7698af695b388a1e2ffbb7e6` |
| 9 | `theorem` | [univ_sSup_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/univ-ssup-affine-eq--18ef92bc902422a53b795ac6.md) | 176 | `result-track:18ef92bc902422a53b795ac6337b982ae306cd090e9cc1194a3e6a87f10f1b9c` |
| 10 | `theorem` | [univ_sSup_of_countable_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/univ-ssup-of-countable-affine-eq--dfee72b97484ca78ef552d25.md) | 198 | `result-track:dfee72b97484ca78ef552d25b24e70d46159081d386aef21ec6070cb088460b3` |
| 11 | `theorem` | [univ_sSup_of_nat_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/univ-ssup-of-nat-affine-eq--3c06bd9c88be23253f226f64.md) | 219 | `result-track:3c06bd9c88be23253f226f6487376ff17162a09a60a07af98795c87f1df91c92` |
| 12 | `theorem` | [real_sSup_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/real-ssup-affine-eq--6c1334aea43f7a91c8a65f18.md) | 237 | `result-track:6c1334aea43f7a91c8a65f1838eb467bd95de63d3a30a38d5815a51295f31de2` |
| 13 | `theorem` | [real_sSup_of_countable_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/real-ssup-of-countable-affine-eq--d096dba3a643adc10ba0cd96.md) | 244 | `result-track:d096dba3a643adc10ba0cd9630c6f298117cb7b8ed88d0db63e7dff76769ee73` |
| 14 | `theorem` | [real_sSup_of_nat_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/real-ssup-of-nat-affine-eq--b58a77b83f6f7217c25ea906.md) | 251 | `result-track:b58a77b83f6f7217c25ea9069bf9087ad2b0f671e0fe63f99072faaf38af6103` |
| 15 | `theorem` | [real_univ_sSup_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/real-univ-ssup-affine-eq--c511597a74a89a409ef72812.md) | 259 | `result-track:c511597a74a89a409ef72812f7ad74a38be68b5b43dcbf6764cb9c082d0dce70` |
| 16 | `theorem` | [real_univ_sSup_of_countable_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/real-univ-ssup-of-countable-affine-eq--f15d0b9469b6549d9e251aa0.md) | 264 | `result-track:f15d0b9469b6549d9e251aa0abed7ba5944ea7ec69f7f89e29be00ece23614b1` |
| 17 | `theorem` | [real_univ_sSup_of_nat_affine_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Approximation/Variant592e1b82277b5666ecac32d870bce2b6ee855893fdd558bc6506de8390900dcb.lean/declarations/real-univ-ssup-of-nat-affine-eq--9de4997f2bab37438e846383.md) | 271 | `result-track:9de4997f2bab37438e8463835750a267072c1adfc1e6748c0241ba89ccdfee4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
