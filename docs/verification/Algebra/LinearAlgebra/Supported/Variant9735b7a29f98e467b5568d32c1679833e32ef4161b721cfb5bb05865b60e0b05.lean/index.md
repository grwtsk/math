# Verification target: GRWTSK.Algebra.LinearAlgebra.Supported.Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df6e7106801a6a1319ed50a2a89b30e15cc760f3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df6e7106801a6a1319ed50a2a89b30e15cc760f3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean.json)

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
| 1 | `def` | [supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supported--6409246bf4a1f87f391b4fb5.md) | 50 | `declaration-track:6409246bf4a1f87f391b4fb53d332fa75d735a62c2fd3594f31aa2d9b7c44e26` |
| 2 | `theorem` | [mem_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/mem-supported--c24932b78bcfb43bdf54788d.md) | 64 | `result-track:c24932b78bcfb43bdf54788deffd80183289b5c029725e2d641e772ff096ce22` |
| 3 | `theorem` | [mem_supported'](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/mem-supported--0f46da2f0317cb37c077739c.md) | 67 | `result-track:0f46da2f0317cb37c077739c1c9ea3a3099bd19fc9a18ac23ae68117ee5d2de1` |
| 4 | `theorem` | [mem_supported_support](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/mem-supported-support--dc56586e5c0c851b5f82b239.md) | 71 | `result-track:dc56586e5c0c851b5f82b2395aaf6622fc39f9e746a7412d52a6c0de892fd010` |
| 5 | `theorem` | [single_mem_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/single-mem-supported--41807786297aaf2f2b2b9157.md) | 74 | `result-track:41807786297aaf2f2b2b915758a340168bd3f99709d7a308603049e867fd7448` |
| 6 | `theorem` | [supported_eq_span_single](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supported-eq-span-single--0ff082ac7f954a386ecfb9f3.md) | 78 | `result-track:0ff082ac7f954a386ecfb9f30f9508ba54fe687ebd68b1ddd44e0d5a4fb6ae52` |
| 7 | `lemma` | [single_mem_span_single](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/single-mem-span-single--56b95cc97b7a81976048819d.md) | 88 | `result-track:56b95cc97b7a81976048819da30f07de826524803eeec2e10e622cb7a3de55b8` |
| 8 | `theorem` | [span_le_supported_biUnion_support](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/span-le-supported-biunion-support--3e5b03679a50940a38d10193.md) | 95 | `result-track:3e5b03679a50940a38d1019399ef27bb1617eb06118486e7aacb3a9f5460084f` |
| 9 | `def` | [restrictDom](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/restrictdom--f53fa8e5a369a5e981e898f5.md) | 102 | `declaration-track:f53fa8e5a369a5e981e898f53284d782aa05ba98ecce44a485c172d35d3363f6` |
| 10 | `theorem` | [restrictDom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/restrictdom-apply--e7766f2dc44bc40909fa53dc.md) | 114 | `result-track:e7766f2dc44bc40909fa53dc1f04abae5d8ffdeb30100b54a0c31dc8e42396fb` |
| 11 | `theorem` | [restrictDom_comp_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/restrictdom-comp-subtype--9d0fe57c0634c91c436f35e7.md) | 119 | `result-track:9d0fe57c0634c91c436f35e74c3fc0dcf0d4f7e05bed5e62edb838a51c406299` |
| 12 | `theorem` | [range_restrictDom](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/range-restrictdom--7c3e2a1c4b02c198b44899bc.md) | 126 | `result-track:7c3e2a1c4b02c198b44899bc76b330fe4b61f5f1637ea159901a1b6bb57860e9` |
| 13 | `theorem` | [supported_mono](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supported-mono--aae644f028975421b0db6973.md) | 131 | `result-track:aae644f028975421b0db6973ece841479dd5636f2f42e8abc530a39cc50c909a` |
| 14 | `theorem` | [supported_empty](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supported-empty--abb76938fd2bf19907e1c3a1.md) | 135 | `result-track:abb76938fd2bf19907e1c3a1281e707409673a07496540aab31f2857c8548ed9` |
| 15 | `theorem` | [supported_univ](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supported-univ--7d731dcfac65e796057a3f74.md) | 139 | `result-track:7d731dcfac65e796057a3f74a9a469f3221ae6c25a85a5063f662cdc5747e4db` |
| 16 | `theorem` | [supported_iUnion](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supported-iunion--65637fdd7bbcbce983debbc8.md) | 142 | `result-track:65637fdd7bbcbce983debbc83827e93b3497ed437b6aec02876efb5639040736` |
| 17 | `theorem` | [supported_union](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supported-union--3eb54f0de7a9bb1ef24e79c3.md) | 163 | `result-track:3eb54f0de7a9bb1ef24e79c3ad23ad2cd0ca02880af38f1cbcface9cfc35bf05` |
| 18 | `theorem` | [supported_iInter](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supported-iinter--183f16f43cf03991545e812a.md) | 167 | `result-track:183f16f43cf03991545e812abf257788e0d9a54b9766fb36c91d3e50a02df033` |
| 19 | `theorem` | [supported_inter](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supported-inter--86315f90850728b0a006070a.md) | 171 | `result-track:86315f90850728b0a006070ac7f61a714d80bda1d0753a0453b9e0bd541e7df4` |
| 20 | `theorem` | [disjoint_supported_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/disjoint-supported-supported--01b5d7dc6f3e26067cbe8bb1.md) | 175 | `result-track:01b5d7dc6f3e26067cbe8bb1a977b2218b8541b56b2278eece923e4ab82a1640` |
| 21 | `theorem` | [disjoint_supported_supported_iff](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/disjoint-supported-supported-iff--371882854444e46112babe95.md) | 179 | `result-track:371882854444e46112babe9570d14c783fe27de31276ba588915ea5219cf86ef` |
| 22 | `lemma` | [codisjoint_supported_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/codisjoint-supported-supported--593304b4213640af9a5e722e.md) | 187 | `result-track:593304b4213640af9a5e722e798b6780e8358bc812efb2b4617209f27127a8dd` |
| 23 | `lemma` | [codisjoint_supported_supported_iff](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/codisjoint-supported-supported-iff--2f7b881e368b135146d6e666.md) | 192 | `result-track:2f7b881e368b135146d6e666a6619dde4535b116beff51e4ca7692f5ba6c9b48` |
| 24 | `def` | [supportedEquivFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supportedequivfinsupp--8b1cbb9610376314a9207cfc.md) | 204 | `declaration-track:8b1cbb9610376314a9207cfcad08fc7eaad0bcb6ea3e7a3cdfa4031289491b2e` |
| 25 | `theorem` | [supportedEquivFinsupp_symm_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supportedequivfinsupp-symm-apply-coe--9886fbcc4e30a6c2e2c9e628.md) | 214 | `result-track:9886fbcc4e30a6c2e2c9e628146f0556bdcd428a232dba27d88c17a1f784c44b` |
| 26 | `theorem` | [supportedEquivFinsupp_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supportedequivfinsupp-symm-single--3467b8d2494e1ce9bc771e39.md) | 218 | `result-track:3467b8d2494e1ce9bc771e39bb9b6140bb2bc39e53fd9e2e709c8b6a29912717` |
| 27 | `theorem` | [supported_comap_lmapDomain](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/supported-comap-lmapdomain--5918e98a6fdb2a48e064e63b.md) | 226 | `result-track:5918e98a6fdb2a48e064e63b148a79644f39d3bca812cb6c86303639da492dde` |
| 28 | `theorem` | [lmapDomain_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/lmapdomain-supported--f26219e1ccfde5c6647ccc41.md) | 234 | `result-track:f26219e1ccfde5c6647ccc41628dfc78edd981f0c30d885e56f7f5b978798461` |
| 29 | `theorem` | [lmapDomain_disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/lmapdomain-disjoint-ker--4601cbf2a675f1dc18bacc4e.md) | 253 | `result-track:4601cbf2a675f1dc18bacc4e961e2a5ddd2c751097785ac0c35172de93a831c6` |
| 30 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant9735b7a29f98e467b5568d32c1679833e32ef4161b721cfb5bb05865b60e0b05.lean/declarations/congr--22723454ed9b273808276323.md) | 277 | `declaration-track:22723454ed9b2738082763238efd4b7749769bfd30dcadfdcc96d9ad95f85808` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
