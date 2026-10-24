# Verification target: GRWTSK.Analysis.MeasureTheory.ZeroOne.Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "011d27664715cb21327b9546e48ab163530b45b4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `011d27664715cb21327b9546e48ab163530b45b4`.

Source path: `GRWTSK/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean.json)

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
| 1 | `class` | [IsZeroOneMeasure](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/declarations/iszeroonemeasure--a5b920ab6339a23ce7b38e54.md) | 45 | `declaration-track:a5b920ab6339a23ce7b38e54b51df82d6f045ee633efd21674d1e8662a534079` |
| 2 | `lemma` | [Measure.zero_one](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/declarations/measure-zero-one--b34b37287ac75a56c766cd8c.md) | 48 | `result-track:b34b37287ac75a56c766cd8c0e26e14be999b56699fa2480a03555035d989c34` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/declarations/instance--196ad4aed1ea65c24c5947e8.md) | 59 | `declaration-track:196ad4aed1ea65c24c5947e8b31d10ef92752922ae2892b8d24ced16dc055b0a` |
| 4 | `lemma` | [exists_measure_eq_one_iff_measure_univ_eq_one](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/declarations/exists-measure-eq-one-iff-measure-univ-eq-one--217bafe6cb4914fd1230bb4e.md) | 64 | `result-track:217bafe6cb4914fd1230bb4e1ddeb2a044b956ee75ade043eba0b28e7bb3aebb` |
| 5 | `lemma` | [measure_univ](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/declarations/measure-univ--1e3b777b8a671726a1a100c4.md) | 75 | `result-track:1e3b777b8a671726a1a100c472cf0c676f74b07a28c8adb0d4ff6431bba8711a` |
| 6 | `lemma` | [measure_inter_eq_one](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/declarations/measure-inter-eq-one--47d18c153da2d9f14b197963.md) | 78 | `result-track:47d18c153da2d9f14b1979638f35e16b4075f21fa246ecb51c7844ffced142eb` |
| 7 | `lemma` | [measure_inter_eq_prod](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/declarations/measure-inter-eq-prod--2b18d9b3f6685803a28c0a60.md) | 97 | `result-track:2b18d9b3f6685803a28c0a6007a30844f51a3b505d7953fa73549da3546eab26` |
| 8 | `theorem` | [exists_eq_dirac](../../../../../mathematics/Analysis/MeasureTheory/ZeroOne/Variantb62c6d73bd4941af2c6dfd8cf632700ff7a85ef0d0c0e49110d4e58b3b8dd2aa.lean/declarations/exists-eq-dirac--83f40cc66acd2cb2ca33b434.md) | 106 | `result-track:83f40cc66acd2cb2ca33b434a3e7ac0fa90e72de0916fa796521356a329da83f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
