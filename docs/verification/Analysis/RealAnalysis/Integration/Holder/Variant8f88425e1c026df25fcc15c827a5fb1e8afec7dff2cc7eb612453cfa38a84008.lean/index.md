# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Holder.Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd7605e9e6ed338773f1f5cc842964d98518ce8f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd7605e9e6ed338773f1f5cc842964d98518ce8f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [holder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/holder--222a55d77441d2ad3f0f35c9.md) | 45 | `declaration-track:222a55d77441d2ad3f0f35c931b737de4fff8efa684494b4905f311893708c8b` |
| 2 | `lemma` | [coeFn_holder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/coefn-holder--63745d0a6da3d8a31704fd5b.md) | 51 | `result-track:63745d0a6da3d8a31704fd5b79dacfb53a1186880945fd283f0ea0f19590e650` |
| 3 | `lemma` | [nnnorm_holder_apply_apply_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/nnnorm-holder-apply-apply-le--e881d573c5f5029a08831c3b.md) | 56 | `result-track:e881d573c5f5029a08831c3b9e381ba38e80cb5bc2aa3c2f6d30b802f36041d5` |
| 4 | `lemma` | [norm_holder_apply_apply_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/norm-holder-apply-apply-le--85d1971ceb352e3fa1877a55.md) | 63 | `result-track:85d1971ceb352e3fa1877a55b405844107b1a4aa6314f00d5fc78abac1b6a423` |
| 5 | `lemma` | [holder_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/holder-add-left--886a257f3f86a12aed64af50.md) | 67 | `result-track:886a257f3f86a12aed64af5001b30bb827426c419d3875d0d0bb374f4f4094d2` |
| 6 | `lemma` | [holder_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/holder-add-right--4fed57dedae6f1bb2b59951c.md) | 74 | `result-track:4fed57dedae6f1bb2b59951cf66069ba16e2ce133299866aef28be0e966e8732` |
| 7 | `lemma` | [holder_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/holder-smul-left--5741304a1c8fdddc2c189311.md) | 81 | `result-track:5741304a1c8fdddc2c189311c15983300ca22c7c3ef6f3918dcf86571e30617f` |
| 8 | `lemma` | [holder_smul_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/holder-smul-right--b0e62b213da5a64c58a19f8d.md) | 88 | `result-track:b0e62b213da5a64c58a19f8d55b86f90bf9135c9a4cc422a6a30b02caf774e84` |
| 9 | `def` | [holderₗ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/holder--9b57e18da446fac96a5e7c8b.md) | 98 | `declaration-track:9b57e18da446fac96a5e7c8b5f0670e15077da14a7f317f69a2d1b55855fea5d` |
| 10 | `def` | [holderL](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/holderl--180ffcf43d69e59c5c1647bd.md) | 107 | `declaration-track:180ffcf43d69e59c5c1647bdcb87087e62264a3c63bc640039198795f586b53b` |
| 11 | `lemma` | [norm_holderL_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/norm-holderl-le--f6bb846dd1062f6b4318378e.md) | 110 | `result-track:f6bb846dd1062f6b4318378e1768ff757c98d098ac077bc1c102acfc4948d505` |
| 12 | `def` | [lpPairing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/lppairing--86b85a3fadbf74c13e121139.md) | 124 | `declaration-track:86b85a3fadbf74c13e121139ae61a119c52e8b50736246ea8bdca2a5b4368bb9` |
| 13 | `lemma` | [lpPairing_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/lppairing-eq-integral--8dc6c56ef2f589f00523b1e3.md) | 127 | `result-track:8dc6c56ef2f589f00523b1e3c7877a29ee9c852e818c79084ce3a7718ce43ef7` |
| 14 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/instance--7bb3bb310bf8bfe171c535ad.md) | 159 | `declaration-track:7bb3bb310bf8bfe171c535ad9e61bb743ee73b7e3f1d040e0b48b4a8a02ff290` |
| 15 | `lemma` | [smul_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/smul-def--53b448ac820cf3dd119aa836.md) | 162 | `result-track:53b448ac820cf3dd119aa83655c69717d43e3486f9cc98933f08ffcdc2d6278b` |
| 16 | `lemma` | [coeFn_lpSMul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/coefn-lpsmul--ef204f3cb4bfb82b21b130b4.md) | 166 | `result-track:ef204f3cb4bfb82b21b130b49cf1f3218a2e9b49302455fcafe6e5fa324ed0b0` |
| 17 | `lemma` | [norm_smul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/norm-smul-le--41425a0c2f516208b0841e4d.md) | 171 | `result-track:41425a0c2f516208b0841e4d4f8ee5656e684337b210d67aef2859c0ac3a85bb` |
| 18 | `lemma` | [smul_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/smul-add--1bbb662bead86b42bd940569.md) | 185 | `result-track:1bbb662bead86b42bd94056910298e8ca01e669eb3af9420ea914ab820439159` |
| 19 | `lemma` | [add_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/add-smul--47c5806f1fb0786eb6c950cd.md) | 192 | `result-track:47c5806f1fb0786eb6c950cd5871b8235a08e20c12ccc9f314ba3d15ce5e60e0` |
| 20 | `lemma` | [smul_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/smul-zero--f097716f2a8f5d769e38178d.md) | 201 | `result-track:f097716f2a8f5d769e38178d0c52b81101873a2ef9b6473c2a84b76818692105` |
| 21 | `lemma` | [zero_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/zero-smul--f21b34ab23deb7b35ccecab9.md) | 211 | `result-track:f21b34ab23deb7b35ccecab978c50543d5f2dbed657e2180ea1b59470dd57856` |
| 22 | `lemma` | [smul_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/smul-neg--0fe6b45d8720a94bbda91681.md) | 220 | `result-track:0fe6b45d8720a94bbda9168192926c4781f0c902516239cc1d58e2e4add5bf84` |
| 23 | `lemma` | [neg_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/neg-smul--26bcda851723fe3dcec6083f.md) | 225 | `result-track:26bcda851723fe3dcec6083fa7f9ff28caa5addc2db15ed1696e98864a58cc3a` |
| 24 | `lemma` | [neg_smul_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/neg-smul-neg--14bd1992f6ecd88f392858a1.md) | 229 | `result-track:14bd1992f6ecd88f392858a12bb8262ee01208e385d6c1651b7fe1bd42c1d7d5` |
| 25 | `lemma` | [smul_assoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/smul-assoc--61d76e7b0154017aff801137.md) | 235 | `result-track:61d76e7b0154017aff801137086df651e2a8840b8ca5814574a9d7f30189d23e` |
| 26 | `lemma` | [smul_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Holder/Variant8f88425e1c026df25fcc15c827a5fb1e8afec7dff2cc7eb612453cfa38a84008.lean/declarations/smul-comm--f2389cf0de06e1affbf97c08.md) | 243 | `result-track:f2389cf0de06e1affbf97c088b3b96eb01ca323699d78d8520e32422740ef1f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
