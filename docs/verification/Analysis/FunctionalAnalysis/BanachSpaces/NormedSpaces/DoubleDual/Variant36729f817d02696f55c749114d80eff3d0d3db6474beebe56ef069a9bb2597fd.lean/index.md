# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.DoubleDual.Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "954f1c4a54d2874dd1e485e71607fdc13b59a6a2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `954f1c4a54d2874dd1e485e71607fdc13b59a6a2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inclusionInDoubleDual](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/declarations/inclusionindoubledual--1319503cae074f998c5dac8d.md) | 66 | `declaration-track:1319503cae074f998c5dac8dbd347875264429238d04b45f4c2efe89d0a776a2` |
| 2 | `theorem` | [dual_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/declarations/dual-def--b5b752faa30448a869905c7c.md) | 70 | `result-track:b5b752faa30448a869905c7c3f11ec8f4ada7620a4df9da191980d038abc5851` |
| 3 | `theorem` | [inclusionInDoubleDual_norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/declarations/inclusionindoubledual-norm-eq--4abdb93167f9bdade274d74c.md) | 73 | `result-track:4abdb93167f9bdade274d74c347e20b1934b341bca9bb36a43306d1b986326a6` |
| 4 | `theorem` | [inclusionInDoubleDual_norm_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/declarations/inclusionindoubledual-norm-le--bb6e132414a197b5e5e1e2f6.md) | 77 | `result-track:bb6e132414a197b5e5e1e2f632d0f8c33afa2fb4dcef52d892486e1c5e096769` |
| 5 | `theorem` | [double_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/declarations/double-dual-bound--eeb47db461c89dfe370510c3.md) | 81 | `result-track:eeb47db461c89dfe370510c371f1a4bbc9e4f2f5271271155ec2cccf28936a27` |
| 6 | `def` | [inclusionInDoubleDualLi](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/declarations/inclusionindoubledualli--cd54b5e7b1f311f4afb259b5.md) | 95 | `declaration-track:cd54b5e7b1f311f4afb259b5e1c5d35957a075bcac564fe46e09b4244ef3c0d4` |
| 7 | `theorem` | [norm_le_dual_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/declarations/norm-le-dual-bound--86ad8f6861dffced44ce6d48.md) | 105 | `result-track:86ad8f6861dffced44ce6d48491853aadc107ee57220b166fe4f11b65c3fd399` |
| 8 | `def` | [inclusionInDoubleDualWeak](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/declarations/inclusionindoubledualweak--f7ed0444553a87dbf18d89bb.md) | 123 | `declaration-track:f7ed0444553a87dbf18d89bb70c85141f1c7a9843fdc4e16702636af1e219c31` |
| 9 | `lemma` | [toLinearMap_inclusionInDoubleDualWeak](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/declarations/tolinearmap-inclusionindoubledualweak--e64b4240e4dbf2fecaa5fcc7.md) | 131 | `result-track:e64b4240e4dbf2fecaa5fcc7c6d32611ffdbb164c39e2f042fa312ed02d9d5a9` |
| 10 | `theorem` | [isEmbedding_inclusionInDoubleDualWeak](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/declarations/isembedding-inclusionindoubledualweak--de98d9bc7a9ce8e6ce6268b6.md) | 140 | `result-track:de98d9bc7a9ce8e6ce6268b63deb56a05900987bbb9505b57232998b2c03cd73` |
| 11 | `theorem` | [isCompact_closure_of_isBounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DoubleDual/Variant36729f817d02696f55c749114d80eff3d0d3db6474beebe56ef069a9bb2597fd.lean/declarations/iscompact-closure-of-isbounded--2e6fcfdd57e7e60d8b0cf8bd.md) | 153 | `result-track:2e6fcfdd57e7e60d8b0cf8bd502acb1604e0ed6eeeb004fd7675fa51c4ca6714` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
