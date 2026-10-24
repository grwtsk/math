# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PolarCoord.Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc5c9ac0f2d2715086cb37a07c02227f49e9a556",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc5c9ac0f2d2715086cb37a07c02227f49e9a556`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.Jacobian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Complex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polarCoord](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/polarcoord--4f7871c0147e92a19cfcd89d.md) | 30 | `declaration-track:4f7871c0147e92a19cfcd89d807d61c915fa0d5c3f65fc1359a7f88e066f1a57` |
| 2 | `theorem` | [continuous_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/continuous-polarcoord-symm--c036d4060190140ba9857c66.md) | 89 | `result-track:c036d4060190140ba9857c66781daac3cad03d37f0adf912b0804e0c5ec2f1cf` |
| 3 | `def` | [fderivPolarCoordSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/fderivpolarcoordsymm--db053f8d4c0e2616b0683b0e.md) | 94 | `declaration-track:db053f8d4c0e2616b0683b0e1c5dbaeb0b0d4d32de3c3a01083d70129591d1e5` |
| 4 | `theorem` | [hasFDerivAt_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/hasfderivat-polarcoord-symm--4704f27a1af5dcd779bf27a4.md) | 98 | `result-track:4704f27a1af5dcd779bf27a47ff402d0af55e7a59a92890cf00c1711ff6f42fe` |
| 5 | `theorem` | [det_fderivPolarCoordSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/det-fderivpolarcoordsymm--d1cae5fda398c2a03056568c.md) | 107 | `result-track:d1cae5fda398c2a03056568c96a5347e10319b241f9adf37ced66339c92c70c7` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/instance--18bb014a781ba00bfde65375.md) | 116 | `declaration-track:18bb014a781ba00bfde6537500e6069c231ae6d357b108f20c85ab69fb229ba2` |
| 7 | `theorem` | [polarCoord_source_ae_eq_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/polarcoord-source-ae-eq-univ--b09c6b0cde273a3a64c48aff.md) | 119 | `result-track:b09c6b0cde273a3a64c48aff5e138713ba5c327bfa1eeab14ff9ec28b9aab94e` |
| 8 | `theorem` | [integral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/integral-comp-polarcoord-symm--87ba66ca28450b68326f36bd.md) | 134 | `result-track:87ba66ca28450b68326f36bd03631c8bf401e27833e5ff7e9172bca116548397` |
| 9 | `theorem` | [lintegral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/lintegral-comp-polarcoord-symm--053f0bfa97135bf47ff823e9.md) | 151 | `result-track:053f0bfa97135bf47ff823e9a6b2b7b3d0e3c5fab3b1affd6266bd1c99f2017d` |
| 10 | `def` | [polarCoord](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/polarcoord--59584cb79f7b732d87604991.md) | 178 | `declaration-track:59584cb79f7b732d876049911fde58ccadec5012843fbf37ce07c8f519a8d0d7` |
| 11 | `theorem` | [polarCoord_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/polarcoord-apply--fdc5060021d808e2b2c63726.md) | 181 | `result-track:fdc5060021d808e2b2c63726e1ad714abe380daf581270255d125748df68a6ec` |
| 12 | `theorem` | [polarCoord_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/polarcoord-source--a5805cde236c910e94d4dadd.md) | 186 | `result-track:a5805cde236c910e94d4dadda56bc896b21f883cc63508f7b3fc07f9a47a6d63` |
| 13 | `theorem` | [polarCoord_target](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/polarcoord-target--bed58a23b1d948043a936173.md) | 188 | `result-track:bed58a23b1d948043a9361732b3e38a77a8773bc82112c0b39b0efde66a393b8` |
| 14 | `theorem` | [polarCoord_symm_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/polarcoord-symm-apply--c1af5b50e1d5cf5c28281ec3.md) | 192 | `result-track:c1af5b50e1d5cf5c28281ec3e6fe5bb7d3b55fbaaecedcdf9965402305c203d2` |
| 15 | `theorem` | [measurableEquivRealProd_symm_polarCoord_symm_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/measurableequivrealprod-symm-polarcoord-symm-apply--a0ffedb64c5daded9146ae1e.md) | 196 | `result-track:a0ffedb64c5daded9146ae1ec6629e23278da75703c2ed60c3b4f9d89248081b` |
| 16 | `theorem` | [norm_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/norm-polarcoord-symm--565ef5bf4420decf4af2fe61.md) | 199 | `result-track:565ef5bf4420decf4af2fe619cd7aec8ba4cafac01cfb2f49cfc920d67f4a073` |
| 17 | `theorem` | [integral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/integral-comp-polarcoord-symm--491940ccfe65b85e2ce9c2b2.md) | 204 | `result-track:491940ccfe65b85e2ce9c2b25efeefcad627896783ac505f820d040b6d478534` |
| 18 | `theorem` | [lintegral_comp_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/lintegral-comp-polarcoord-symm--1afd4b8306cfff42dba55814.md) | 211 | `result-track:1afd4b8306cfff42dba5581431d5c9f54be134ff35174715ee4cb3ac496765d9` |
| 19 | `def` | [fderivPiPolarCoordSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/fderivpipolarcoordsymm--06b7ebb913324cff4176a5b6.md) | 228 | `declaration-track:06b7ebb913324cff4176a5b615a12d9d2595187964e542359abfb901f634372b` |
| 20 | `theorem` | [injOn_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/injon-pi-polarcoord-symm--8bd495ed959ae7d74cec10cf.md) | 231 | `result-track:8bd495ed959ae7d74cec10cf7239cb7dc16dc171e6d8238ac93b89fa877bdfd9` |
| 21 | `theorem` | [abs_fst_of_mem_pi_polarCoord_target](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/abs-fst-of-mem-pi-polarcoord-target--00a7fb795b6ddb65196a0426.md) | 236 | `result-track:00a7fb795b6ddb65196a0426aea8fd49d90df66d771435b11803b3deff962ac1` |
| 22 | `theorem` | [hasFDerivAt_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/hasfderivat-pi-polarcoord-symm--df22a2e6dff9d04a460a1c8c.md) | 243 | `result-track:df22a2e6dff9d04a460a1c8c7758007107e805132236355b941b2962097b1696` |
| 23 | `theorem` | [det_fderivPiPolarCoordSymm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/det-fderivpipolarcoordsymm--e8a81305693c3e74454cc3e7.md) | 248 | `result-track:e8a81305693c3e74454cc3e72b6b7e932384dc37ee93382aa0b8ace0a9c4ee32` |
| 24 | `theorem` | [pi_polarCoord_symm_target_ae_eq_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/pi-polarcoord-symm-target-ae-eq-univ--74ca14b8ff96d8fde2fb33ca.md) | 252 | `result-track:74ca14b8ff96d8fde2fb33cac790b0b15f6f33e19c74f11839afe823195103b0` |
| 25 | `theorem` | [measurableSet_pi_polarCoord_target](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/measurableset-pi-polarcoord-target--170aeb2f37e403f193ab0d35.md) | 258 | `result-track:170aeb2f37e403f193ab0d359be9fe4ce7bb7358d1b1a36620a6e68f573405f6` |
| 26 | `theorem` | [integral_comp_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/integral-comp-pi-polarcoord-symm--97047df1d2165c4fc25553b0.md) | 262 | `result-track:97047df1d2165c4fc25553b06a5e7bd52c135c74fa4fe6d544be993e016b2d90` |
| 27 | `theorem` | [Complex.integral_comp_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/complex-integral-comp-pi-polarcoord-symm--2f3fa25b7011a894f8485b07.md) | 273 | `result-track:2f3fa25b7011a894f8485b07a8c17315d32562b295344be4f7182d8fe12f4444` |
| 28 | `theorem` | [lintegral_comp_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/lintegral-comp-pi-polarcoord-symm--ce6021f1d64039d03df49d31.md) | 282 | `result-track:ce6021f1d64039d03df49d31b05c29c44458bcb2ef35dcbcba80254c66b074a3` |
| 29 | `theorem` | [Complex.lintegral_comp_pi_polarCoord_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolarCoord/Variantc51f4d5de9ae751317ea949905ad872862d4ff9cebea230271c6614c303e5d75.lean/declarations/complex-lintegral-comp-pi-polarcoord-symm--6b52cce272d8c239c998b37d.md) | 294 | `result-track:6b52cce272d8c239c998b37df1a21924356dda897ced200e779231fc41f31dfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
