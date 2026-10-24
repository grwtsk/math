# Verification target: GRWTSK.Topology.GeneralTopology.Interval.Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82688aaf563fffcf2865c0de2734101c97282383",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82688aaf563fffcf2865c0de2734101c97282383`.

Source path: `GRWTSK/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.LocallyFinite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/instance--7b205e1d419cb1d60fd8f738.md) | 30 | `declaration-track:7b205e1d419cb1d60fd8f7385a68dc9e1b8afd0fd1b2a2c5dd5120e843bab6ff` |
| 2 | `theorem` | [Icc_eq_filter_powerset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/icc-eq-filter-powerset--dce71f0aedcf736505d49301.md) | 49 | `result-track:dce71f0aedcf736505d49301f650b94356f2e22f4f382839e52fb0d030b112f8` |
| 3 | `theorem` | [Ico_eq_filter_ssubsets](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/ico-eq-filter-ssubsets--c5319b3ba2b1a81cf5adc51f.md) | 53 | `result-track:c5319b3ba2b1a81cf5adc51f5e12c3e528f37a7f947e9225c6bdc49ce363a42c` |
| 4 | `theorem` | [Ioc_eq_filter_powerset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/ioc-eq-filter-powerset--261f04c9de80eacb83dd1c92.md) | 57 | `result-track:261f04c9de80eacb83dd1c922b439a1a80b80c5e84cc58c8d6319483ef95b58f` |
| 5 | `theorem` | [Ioo_eq_filter_ssubsets](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/ioo-eq-filter-ssubsets--c7f2911401824e513b0c4ac4.md) | 61 | `result-track:c7f2911401824e513b0c4ac40109077ac977fe899c24173aa0e9cb0d87f5628a` |
| 6 | `theorem` | [Iic_eq_powerset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/iic-eq-powerset--367b845ff81e0b46aca0f498.md) | 65 | `result-track:367b845ff81e0b46aca0f498ed74abceb185b929edeb30f28645fe5329110342` |
| 7 | `theorem` | [Iio_eq_ssubsets](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/iio-eq-ssubsets--1229f57d686189bdfe6a7e31.md) | 69 | `result-track:1229f57d686189bdfe6a7e310935d67f35541f9ca159edc0f32505915a93bd93` |
| 8 | `theorem` | [Icc_eq_image_powerset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/icc-eq-image-powerset--5b3a0412cf4c77b7a5cd1e46.md) | 75 | `result-track:5b3a0412cf4c77b7a5cd1e46a8a8b5d1d8cbfe3cfb2175fe117a237893fdf368` |
| 9 | `theorem` | [Ico_eq_image_ssubsets](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/ico-eq-image-ssubsets--85ef9ae56a9a8dd66676059f.md) | 85 | `result-track:85ef9ae56a9a8dd66676059fdd5eccf392494e3642df6ee0ae0455a82f9ed3b7` |
| 10 | `theorem` | [card_Icc_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/card-icc-finset--247f817a7f18138f93604e78.md) | 96 | `result-track:247f817a7f18138f93604e7856ea089a87423053ab0119cb6204fe4be7dbe50b` |
| 11 | `theorem` | [card_Ico_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/card-ico-finset--77dc7c8b8000cb9a66bd6326.md) | 105 | `result-track:77dc7c8b8000cb9a66bd6326780e73afa1d61613f32ea2ca596cc9066b582a60` |
| 12 | `theorem` | [card_Ioc_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/card-ioc-finset--66d05be319aeaa9d47f0025c.md) | 110 | `result-track:66d05be319aeaa9d47f0025c4f60bb417a9a3e66940d1c4faa0eb091cf848889` |
| 13 | `theorem` | [card_Ioo_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/card-ioo-finset--ccccf633ac3ad5ffd44fddd4.md) | 115 | `result-track:ccccf633ac3ad5ffd44fddd496dc8602962ba2f401778a18c017e26786c83b3e` |
| 14 | `theorem` | [card_Iic_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/card-iic-finset--63a764ad95ede3bc7bdd0ff7.md) | 120 | `result-track:63a764ad95ede3bc7bdd0ff77548ddcba9cd7429e827ca4813602aad436c96cc` |
| 15 | `theorem` | [card_Iio_finset](../../../../../mathematics/Topology/GeneralTopology/Interval/Variant622ba51b0a06ef9d3bf52923e640f6d3186a00be7dcb18fadbb064b014bb2a4f.lean/declarations/card-iio-finset--03545b919ba51b7e0884d3c5.md) | 124 | `result-track:03545b919ba51b7e0884d3c53dcc023953d36ef359ef8d67a1b37c4beb23fa84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
