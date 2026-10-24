# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineDualityStatements.Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd5d1e0d7ecb948aa7dcec178ec955ba4559d65d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd5d1e0d7ecb948aa7dcec178ec955ba4559d65d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/fullh--c1124dbcbea7bf06d98a56ce.md) | 17 | `declaration-track:c1124dbcbea7bf06d98a56ce75180f24c47f208ec6b8419c317c9b3151eba27c` |
| 2 | `def` | [zeroExtensionFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextensionfunction--9e54e69c276147d0200bb83b.md) | 19 | `declaration-track:9e54e69c276147d0200bb83b7c323659c7c12aa4c10539a56179008c09c18616` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextensionfunction-memlp--f160e151a270ce1eca9025a5.md) | 21 | `result-track:f160e151a270ce1eca9025a55204b12c249a0f6a12615df34f55170b2a785e10` |
| 4 | `def` | [zeroExtensionVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextensionvector--33754c36af5d6b53d60f34ee.md) | 25 | `declaration-track:33754c36af5d6b53d60f34ee737962ddc90245b33b9adb62a522a45557a8ee65` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextensionvector-ae--810e145620573bd015fe6ca9.md) | 28 | `result-track:810e145620573bd015fe6ca9dd7b72693dd203acaca7f9651594eb9dbc1357f5` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextensionvector-norm--be04ca7b829095c631f9897f.md) | 32 | `result-track:be04ca7b829095c631f9897f451950f4d7550849b973b656c8e5547082cb5cee` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextensionvector-add--9838f1644679777365fa4195.md) | 37 | `result-track:9838f1644679777365fa4195674092eb303e2f78c45333b36d8fd306d6cc26fe` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextensionvector-smul--ce545b3b8da4032e1b9b6b60.md) | 49 | `result-track:ce545b3b8da4032e1b9b6b60ebfeddddbfb84acdf58905e4b8b286a241ba80df` |
| 9 | `def` | [zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextension--e27f3d1f96a2b7a19f27bc46.md) | 62 | `declaration-track:e27f3d1f96a2b7a19f27bc46770424bfebba2be8bad2b66e73864028565847fc` |
| 10 | `theorem` | [zeroExtension_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextension-ae--95981eb5e5f4a824d34aff80.md) | 68 | `result-track:95981eb5e5f4a824d34aff80f9c24e5dacd78e4d815d9455d7f6906fa55b7f97` |
| 11 | `theorem` | [zeroExtension_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextension-norm--9efbfcb08bb9ad42e7e64703.md) | 72 | `result-track:9efbfcb08bb9ad42e7e64703d51aa60757e0645a45753c0962c02a4c6350a7f6` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextension-ae-halfline--1b19677643a4510be3fcc19c.md) | 75 | `result-track:1b19677643a4510be3fcc19c74ab57de19c4f30a96e060e9a2accfa2e7a85a8d` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextension-ae-nonpositive--a7281dd44a25823acc8dc783.md) | 81 | `result-track:a7281dd44a25823acc8dc78371e45f41100aea60fba7eac7fd49f24b9258d595` |
| 14 | `def` | [restriction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/restriction--747ed450fbcb11c76e2498c5.md) | 90 | `declaration-track:747ed450fbcb11c76e2498c5887a5deaa12f716d371ad083c4c18f5406133687` |
| 15 | `theorem` | [restriction_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/restriction-ae--f477e606b66ba7bf6773ca9f.md) | 92 | `result-track:f477e606b66ba7bf6773ca9fa0092ddb70e2406ffe66437c6b34b3eb83095b0c` |
| 16 | `theorem` | [restriction_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/restriction-norm-le--7664ba0f4c28dee9aea8694b.md) | 95 | `result-track:7664ba0f4c28dee9aea8694ba37f18932d2d767ce1646d807ba0869f5c8e6d02` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/restriction-opnorm-le--de521eaea5a77f99f14bb7b1.md) | 98 | `result-track:de521eaea5a77f99f14bb7b1a7e0ff688a2c3d9862430c3c4469549a49f20b54` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/restriction-zeroextension--36052c1c10c3281d34d5fe45.md) | 103 | `result-track:36052c1c10c3281d34d5fe45705d09cae4882cf04d96f4a6b1e65bb5da7606ad` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/restriction-comp-zeroextension--51aeb2eb10dab74d88081fa7.md) | 106 | `result-track:51aeb2eb10dab74d88081fa7e93dd37001e9712f8be26d50bcb63bf0f24aa6f8` |
| 20 | `theorem` | [restricted_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/restricted-inner-integrable--a37f63415e6c6fba9939aad3.md) | 128 | `result-track:a37f63415e6c6fba9939aad3ae2e60045c5c0a08113a4e189280fccd53004576` |
| 21 | `theorem` | [extended_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/extended-inner-integrable--092c86d636f4f0bc8681616b.md) | 134 | `result-track:092c86d636f4f0bc8681616b8fca9b48be719318b01544a36df15faa498ef3be` |
| 22 | `theorem` | [inner_restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/inner-restriction-zeroextension--70c059b71362fc8c81b31eae.md) | 138 | `result-track:70c059b71362fc8c81b31eaef17de56552fcc5e43cb58bd02f7a1aac3c04a953` |
| 23 | `theorem` | [zeroExtension_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/zeroextension-adjoint--f0ee50ac021691248fb44fd0.md) | 156 | `result-track:f0ee50ac021691248fb44fd0375c3f66c5e3876fca8c579818640ccd6d2f9bb4` |
| 24 | `theorem` | [restriction_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/restriction-adjoint--9ca50b5e6445eeb5f2ad7f74.md) | 161 | `result-track:9ca50b5e6445eeb5f2ad7f742daed0921fc60f1b218fa2a92c3c9e54af256cad` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/example--ca9a8c2360bdc301e85d4749.md) | 172 | `declaration-track:ca9a8c2360bdc301e85d4749b064c2490c5d1898e3a7c0e52d54490aebd3bd32` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/example--9a3e9832b7a4d240718530e7.md) | 175 | `declaration-track:9a3e9832b7a4d240718530e7989f9406601a71c935e68c70e65f2e056c6af4d4` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/example--6d6fa3b774d9e3d9da66b21a.md) | 178 | `declaration-track:6d6fa3b774d9e3d9da66b21aaaa8f2dc83e2f7d95929316ddd8f5cd0e02fef7a` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/example--cfb008f4be870b08dd9cfdd7.md) | 181 | `declaration-track:cfb008f4be870b08dd9cfdd75072596e2940bb1cc99533f5a8d4680bcd686cd7` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityStatements/Varianted1d57e574e36ca5488c7dbecdd992302d762a9b84dee61cb40097ef4f6cb536.lean/declarations/example--e1da22f36b2ac989a79c233a.md) | 182 | `declaration-track:e1da22f36b2ac989a79c233a4886c87282ab05c784befb87d66bc9b3c054fd9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
