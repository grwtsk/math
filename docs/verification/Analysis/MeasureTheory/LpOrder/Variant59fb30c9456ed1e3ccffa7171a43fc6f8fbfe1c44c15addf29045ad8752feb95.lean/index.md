# Verification target: GRWTSK.Analysis.MeasureTheory.LpOrder.Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc65b90540a9c1bf07ad1a652010acb8e22e7f4b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc65b90540a9c1bf07ad1a652010acb8e22e7f4b`.

Source path: `GRWTSK/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean.json)

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
| 1 | `theorem` | [coeFn_le](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/coefn-le--0d2c0abb32a81dcd00444191.md) | 45 | `result-track:0d2c0abb32a81dcd004441917a338ee8fd1221c69eef53935bf7e4d0b6a589c2` |
| 2 | `theorem` | [coeFn_nonneg](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/coefn-nonneg--ec80e0c0ec30c5f712d19cc4.md) | 48 | `result-track:ec80e0c0ec30c5f712d19cc488b5d8c706acc6958ac29a6a0d5a904d881e9957` |
| 3 | `instance` | [instAddLeftMono](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/instaddleftmono--82a163bb45801abaf9fb5fb7.md) | 54 | `declaration-track:82a163bb45801abaf9fb5fb71ca261504b97857cf89c82a045133143a602fddc` |
| 4 | `instance` | [instIsOrderedAddMonoid](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/instisorderedaddmonoid--3cd93b54732a61a6d4e15532.md) | 61 | `declaration-track:3cd93b54732a61a6d4e15532eef0eb8fd2b8c03b3fcabbaee4f369a4bdbe6260` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/instance--ceae8d877d1cd9f912ad3cf4.md) | 64 | `declaration-track:ceae8d877d1cd9f912ad3cf4c95000d8b46eaf5f8ef81c1bf0662f97d2d227fe` |
| 6 | `theorem` | [_root_.MeasureTheory.MemLp.sup](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/root-measuretheory-memlp-sup--77ed2a690914d4d6976be5cd.md) | 78 | `result-track:77ed2a690914d4d6976be5cdbedac6cf3e06ae471ba45a8f02d38fd983b09dfd` |
| 7 | `theorem` | [_root_.MeasureTheory.MemLp.inf](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/root-measuretheory-memlp-inf--5099d3543b13e8c321d13d7e.md) | 83 | `result-track:5099d3543b13e8c321d13d7e4a1e44523860572f1bd026b6c723197510e18585` |
| 8 | `theorem` | [_root_.MeasureTheory.MemLp.abs](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/root-measuretheory-memlp-abs--44777c65efe4eebde4ee878f.md) | 88 | `result-track:44777c65efe4eebde4ee878fad17020f748efd4d0bf2b8a47e1daaed6dbc0a45` |
| 9 | `instance` | [instLattice](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/instlattice--5cd29ae51104be7203243068.md) | 91 | `declaration-track:5cd29ae51104be7203243068cccb498db2cd6f7b4ceeea9d6a729886a0775950` |
| 10 | `theorem` | [coeFn_sup](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/coefn-sup--108bbecb1b4d61fa55be60f3.md) | 100 | `result-track:108bbecb1b4d61fa55be60f3990fbae555ef3b4298d0f59733ad274918bae517` |
| 11 | `theorem` | [coeFn_inf](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/coefn-inf--67a5086f6e3bff278f337cd9.md) | 103 | `result-track:67a5086f6e3bff278f337cd9dc75a171ad8892f309259c690bf385db10b2c6a6` |
| 12 | `theorem` | [coeFn_abs](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/coefn-abs--2b2f4ae799fd41793b8efe1a.md) | 106 | `result-track:2b2f4ae799fd41793b8efe1a2e06a19fd41ed6daf62f861086917fcf9dfae4fd` |
| 13 | `instance` | [instHasSolidNorm](../../../../../mathematics/Analysis/MeasureTheory/LpOrder/Variant59fb30c9456ed1e3ccffa7171a43fc6f8fbfe1c44c15addf29045ad8752feb95.lean/declarations/insthassolidnorm--92747ce062abf462570b1a3c.md) | 109 | `declaration-track:92747ce062abf462570b1a3ce56cba194f4cdaefd2afbc3eb7a9fb102e4efb9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
