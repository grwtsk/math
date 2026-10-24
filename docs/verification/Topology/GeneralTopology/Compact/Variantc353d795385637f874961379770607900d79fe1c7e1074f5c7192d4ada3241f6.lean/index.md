# Verification target: GRWTSK.Topology.GeneralTopology.Compact.Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "512aea0cbf062b629ac0e53194bfafae2ca8a034",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `512aea0cbf062b629ac0e53194bfafae2ca8a034`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lebesgue_number_lemma](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/lebesgue-number-lemma--57a6a10b26bebbe3d290dee8.md) | 30 | `result-track:57a6a10b26bebbe3d290dee8562db26c12ed5c6f9aaf2f88920f6b6c4836667c` |
| 2 | `theorem` | [lebesgue_number_lemma_nhds'](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/lebesgue-number-lemma-nhds--dc5a0bfb59fb14eaa84df620.md) | 44 | `result-track:dc5a0bfb59fb14eaa84df6206deedace975f89892ad18fc0a9cd8084ccaa9a1c` |
| 3 | `theorem` | [lebesgue_number_lemma_nhds](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/lebesgue-number-lemma-nhds--6ee252e09e9fdc02f6d723a4.md) | 50 | `result-track:6ee252e09e9fdc02f6d723a46d73050950b67b8106c116ae76a98f3e429f2ba0` |
| 4 | `theorem` | [lebesgue_number_lemma_nhdsWithin'](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/lebesgue-number-lemma-nhdswithin--6e7b6a9066661962082af60b.md) | 56 | `result-track:6e7b6a9066661962082af60b61efb00ecda8ee97d44fb9801ec563c5d7d7fec5` |
| 5 | `theorem` | [lebesgue_number_lemma_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/lebesgue-number-lemma-nhdswithin--394ab3de0c15dbf7f8688493.md) | 61 | `result-track:394ab3de0c15dbf7f868849330602a438afb1494f8c17106e22e6c5a8132b60b` |
| 6 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/filter-hasbasis-lebesgue-number-lemma--e346e0048c4aa05b468d13e1.md) | 71 | `result-track:e346e0048c4aa05b468d13e1f38227d39af7a4b59373f13849d55684da53d2b8` |
| 7 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhds'](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhds--4184dab6a21474cd8eb2e754.md) | 78 | `result-track:4184dab6a21474cd8eb2e75456bd89c8719471153d42073b8d19e30896a12a7b` |
| 8 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhds](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhds--18d14ee520eb0652dda14ab5.md) | 85 | `result-track:18d14ee520eb0652dda14ab542ac9733bb84860d1fb210c783debdcefad409ed` |
| 9 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhdsWithin'](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhdswithin--3acedb5a803b3e229eced0ee.md) | 91 | `result-track:3acedb5a803b3e229eced0ee0745508f80872563c4519ac4ce3c434f150a2c91` |
| 10 | `theorem` | [Filter.HasBasis.lebesgue_number_lemma_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/filter-hasbasis-lebesgue-number-lemma-nhdswithin--552496004de17b445349d87e.md) | 99 | `result-track:552496004de17b445349d87e11b69532303d341f8f26f6470c86cb2af6a43876` |
| 11 | `theorem` | [lebesgue_number_lemma_sUnion](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/lebesgue-number-lemma-sunion--700d8bd7d1668bd79872d9aa.md) | 108 | `result-track:700d8bd7d1668bd79872d9aa23049ad5fffb3a5e73fd7542157977157a35e6df` |
| 12 | `theorem` | [IsCompact.nhdsSet_basis_uniformity](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/iscompact-nhdsset-basis-uniformity--4546e9532cc140bbab4b8cf9.md) | 118 | `result-track:4546e9532cc140bbab4b8cf915d81d8085cd667ffb080eebdae11e1c083a9bc4` |
| 13 | `theorem` | [Disjoint.exists_uniform_thickening](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/disjoint-exists-uniform-thickening--4244f995798af2d78cb6a3b8.md) | 134 | `result-track:4244f995798af2d78cb6a3b89daf6d793eabd5911f1ce889ebb31f223099f849` |
| 14 | `theorem` | [Disjoint.exists_uniform_thickening_of_basis](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/disjoint-exists-uniform-thickening-of-basis--7315d99aec7aea996df6ad7b.md) | 146 | `result-track:7315d99aec7aea996df6ad7b7edf97688dc8f3d13f47ff45a58dcbcfb45ac450` |
| 15 | `theorem` | [lebesgue_number_of_compact_open](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/lebesgue-number-of-compact-open--e76132e7217a5c4b50bf5799.md) | 157 | `result-track:e76132e7217a5c4b50bf5799f3281c3ae08b6d16a3bb2a5ba45e2e5cf9746fea` |
| 16 | `theorem` | [nhdsSet_diagonal_eq_uniformity](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/nhdsset-diagonal-eq-uniformity--5b207cfd0fc4bfd313e7f7c0.md) | 166 | `result-track:5b207cfd0fc4bfd313e7f7c0582c7b6b0a63d39104c34504d23cf1630c9a85d4` |
| 17 | `theorem` | [compactSpace_uniformity](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/compactspace-uniformity--2bb3a184e80184758668d678.md) | 179 | `result-track:2bb3a184e80184758668d67858606115dde2f5216f828cbcda0b02200a6a29a6` |
| 18 | `theorem` | [unique_uniformity_of_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantc353d795385637f874961379770607900d79fe1c7e1074f5c7192d4ada3241f6.lean/declarations/unique-uniformity-of-compact--5bb39dd7b5573f4feb842e7f.md) | 182 | `result-track:5bb39dd7b5573f4feb842e7fb9e1b7b5b045d73e9be9706872ed6d5b9e121911` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
