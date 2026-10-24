# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Phillips.Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ba49625aefcee5afce1ae38ea4def7bed9c5096",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ba49625aefcee5afce1ae38ea4def7bed9c5096`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.Extension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DiscreteCopy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/discretecopy--f931817df3ef2a3ecaea8f20.md) | 93 | `declaration-track:f931817df3ef2a3ecaea8f208840225ad603a2576339659613f2b41a6fe36fb4` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/instance--cadf5f0f5c532cea7818be0d.md) | 97 | `declaration-track:cadf5f0f5c532cea7818be0d236c20e14ab93d548661f86fc92f888d6f242eba` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/instance--71b2303d222ae8d6903e7d13.md) | 100 | `declaration-track:71b2303d222ae8d6903e7d135b43a1c84f343b7d9eb7350660af5ddead243f59` |
| 4 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/instance--06e289cb79598d1d141e3017.md) | 103 | `declaration-track:06e289cb79598d1d141e30178edec5bb1a30136e485a9fe4e27cb409c9eb3607` |
| 5 | `def` | [boundedIntegrableFunctions](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/boundedintegrablefunctions--c6023b65924715e65e1f62a1.md) | 118 | `declaration-track:c6023b65924715e65e1f62a13e5b13e0ea84c48e1e76a84d4eb6e32bd8f72f4c` |
| 6 | `def` | [boundedIntegrableFunctionsIntegralCLM](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/boundedintegrablefunctionsintegralclm--813a3cee9d3c917c18ccee34.md) | 129 | `declaration-track:813a3cee9d3c917c18ccee3433a6f2bda2b8495a04340ab3b784f173034df065` |
| 7 | `theorem` | [exists_linear_extension_to_boundedFunctions](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/exists-linear-extension-to-boundedfunctions--c5bc5a7a08d6f76d926638ad.md) | 146 | `result-track:c5bc5a7a08d6f76d926638ad6ab1e354f356c03dc14ae6080eef2a31de39b9d2` |
| 8 | `def` | [_root_.MeasureTheory.Measure.extensionToBoundedFunctions](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/root-measuretheory-measure-extensiontoboundedfunctions--131219a6c8530e80e3f82d28.md) | 156 | `declaration-track:131219a6c8530e80e3f82d2850effa119ebe3f460e1c6610ea0f1aebdca69106` |
| 9 | `theorem` | [extensionToBoundedFunctions_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/extensiontoboundedfunctions-apply--553b2492af2f27f5012cdd85.md) | 161 | `result-track:553b2492af2f27f5012cdd85b5aec92dea46cefea92f16a98753e0c6309a0846` |
| 10 | `structure` | [BoundedAdditiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/boundedadditivemeasure--e40ac45977af27cbb54dc554.md) | 176 | `declaration-track:e40ac45977af27cbb54dc5543e5a7faf2e3f6d27df86938d7b5419012f15e498` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/instance--139f47dbf743f44c430424e4.md) | 184 | `declaration-track:139f47dbf743f44c430424e4999d53727cf6f9ba1b8411ae11f1755318095d4a` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/instance--e070258b541feeab2ed37061.md) | 189 | `declaration-track:e070258b541feeab2ed37061ed07cadee455d7fcd554719d6ffab68e0b09e596` |
| 13 | `def` | [C](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/c--9c0272dd4c6d80c36913bcda.md) | 195 | `declaration-track:9c0272dd4c6d80c36913bcda1472310ddf1ea2dc1869f298f37494a389da972f` |
| 14 | `theorem` | [additive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/additive--0e3fbd315181de8d02647222.md) | 200 | `result-track:0e3fbd315181de8d0264722215b64644c5e5ffc5634dfdfcd4ff760b4cd8b5ae` |
| 15 | `theorem` | [abs_le_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/abs-le-bound--59420eba3e536503694fbd3c.md) | 205 | `result-track:59420eba3e536503694fbd3ce6a233c4d510e6fa6caa065f8e209da2a13ef189` |
| 16 | `theorem` | [le_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/le-bound--3107bc66da1e06534809b902.md) | 209 | `result-track:3107bc66da1e06534809b902f3aa2c49376464444b62bc60cc961bb6246e6c66` |
| 17 | `theorem` | [empty](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/empty--cd63a0db1ae91e51ebbca5c6.md) | 214 | `result-track:cd63a0db1ae91e51ebbca5c64c7e57b381268df07b05fc574eb87745615aab4a` |
| 18 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/instance--5d6401ccf1fd0d0ae7bc65bb.md) | 220 | `declaration-track:5d6401ccf1fd0d0ae7bc65bb0c367f56d7be179c20d9d56d3fe5c9aeee45066c` |
| 19 | `theorem` | [neg_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/neg-apply--520ad7418863aa716134862b.md) | 227 | `result-track:520ad7418863aa716134862bf808a0a23db23771c7e689bdd555a02398f75d42` |
| 20 | `def` | [restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/restrict--95c1debfeea0fd3248ad3175.md) | 232 | `declaration-track:95c1debfeea0fd3248ad3175b3c2a047e6e55babb0586dbc436d0d7a2292296e` |
| 21 | `theorem` | [restrict_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/restrict-apply--36b795a5f6665163a411cb72.md) | 242 | `result-track:36b795a5f6665163a411cb72ddeca75dbab2d9c303b25df8cb61701d07cae170` |
| 22 | `theorem` | [exists_discrete_support_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/exists-discrete-support-nonpos--6ce48063d7f89272d0251980.md) | 248 | `result-track:6ce48063d7f89272d0251980c02dd4b2ad5f86f899aebef1dde336982ad7879b` |
| 23 | `theorem` | [exists_discrete_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/exists-discrete-support--dd225371080ae97c8c1eb820.md) | 333 | `result-track:dd225371080ae97c8c1eb8203770273553648e0f0b5785f6779c99fba5fc9b88` |
| 24 | `def` | [discreteSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/discretesupport--0bdad4dc2f119c5eddb821f3.md) | 350 | `declaration-track:0bdad4dc2f119c5eddb821f3d695512f2bf6a6262cf161e811b87ee109fc16ee` |
| 25 | `theorem` | [countable_discreteSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/countable-discretesupport--348d93e01d97c018da76cf08.md) | 354 | `result-track:348d93e01d97c018da76cf08530f2345b7fc749ff73188044cca185aee288e97` |
| 26 | `theorem` | [apply_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/apply-countable--bf555f769524d58608171f4b.md) | 358 | `result-track:bf555f769524d58608171f4bd16380f730462e1be7ea92fc5e769eced24c04e1` |
| 27 | `def` | [discretePart](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/discretepart--f2005d36a8f4f24e2bdf1016.md) | 365 | `declaration-track:f2005d36a8f4f24e2bdf1016b9e9baa2b72f2af978a5670985e289a53bd79c32` |
| 28 | `def` | [continuousPart](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/continuouspart--cf7c448da9d836980e0f85c6.md) | 371 | `declaration-track:cf7c448da9d836980e0f85c66d7557b222c590969fdb5105be934cf29c2afaf6` |
| 29 | `theorem` | [eq_add_parts](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/eq-add-parts--061ceacc23e8d66f92d4d084.md) | 375 | `result-track:061ceacc23e8d66f92d4d08446aed103881c908d638092fb577fbbf902c9a3bb` |
| 30 | `theorem` | [discretePart_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/discretepart-apply--0e722fd9ea90af900fe82822.md) | 384 | `result-track:0e722fd9ea90af900fe8282258bdff4b9a479cb310dd370a1000d672b2cdcab1` |
| 31 | `theorem` | [continuousPart_apply_eq_zero_of_countable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/continuouspart-apply-eq-zero-of-countable--c543c75175a29b864502f62a.md) | 389 | `result-track:c543c75175a29b864502f62adadbd3c37f148ee672dc06579ebec0a7118b8e05` |
| 32 | `theorem` | [continuousPart_apply_diff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/continuouspart-apply-diff--405d8c6e1e14458f059c24a1.md) | 397 | `result-track:405d8c6e1e14458f059c24a1a5618afc9e82f44c90203431db518d24809bcc12` |
| 33 | `theorem` | [norm_indicator_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/norm-indicator-le-one--e46959e044545f7446361ffd.md) | 416 | `result-track:e46959e044545f7446361ffd4a5041a1967ed37b03dc1744bfa6993a8a99a75e` |
| 34 | `def` | [_root_.ContinuousLinearMap.toBoundedAdditiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/root-continuouslinearmap-toboundedadditivemeasure--c9a57e7041ee2bd768357251.md) | 422 | `declaration-track:c9a57e7041ee2bd76835725127552948e81da766c38e2cdd0eecb648097aecab` |
| 35 | `theorem` | [continuousPart_evalClm_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/continuouspart-evalclm-eq-zero--aebb451cbc1417b9fa86f2d6.md) | 443 | `result-track:aebb451cbc1417b9fa86f2d6ac9fa1c53a350795c5ccf29a6dd19bed3fa33d4c` |
| 36 | `theorem` | [toFunctions_toMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/tofunctions-tomeasure--d34cc06db3165317cc037702.md) | 454 | `result-track:d34cc06db3165317cc0377025bf192e118f73f9fa9951d055ee4a15217207325` |
| 37 | `theorem` | [toFunctions_toMeasure_continuousPart](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/tofunctions-tomeasure-continuouspart--dc6024851e5e79139df89d63.md) | 472 | `result-track:dc6024851e5e79139df89d63b06bc43cc0a8be5be88c088ab2cac64f3659d7f8` |
| 38 | `theorem` | [sierpinski_pathological_family](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/sierpinski-pathological-family--5a2bbbefcfb70ef0afbe3522.md) | 498 | `result-track:5a2bbbefcfb70ef0afbe352285d8a3b8f2052753c321ab1ad33bc6ec5f91a5bd` |
| 39 | `def` | [spf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/spf--d355da75a7f3a41fb2b45fa7.md) | 523 | `declaration-track:d355da75a7f3a41fb2b45fa70207f49f1a9bb73bfed6a894efaf10a9aeca1c3c` |
| 40 | `theorem` | [countable_compl_spf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/countable-compl-spf--bc995ba91d8a2901e596136c.md) | 527 | `result-track:bc995ba91d8a2901e596136c35f48abef10871bcb3f4fd6d38b64fbbfb735c44` |
| 41 | `theorem` | [countable_spf_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/countable-spf-mem--5e308d5b7b3753d1ca673dfa.md) | 531 | `result-track:5e308d5b7b3753d1ca673dfa23761b8d6b43d3685cefdb6f482f07655003b4a2` |
| 42 | `def` | [f](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/f--89b8a0026ebb49f89c08115e.md) | 552 | `declaration-track:89b8a0026ebb49f89c08115edccd921e4c413845007f7cb4fad24a3691fd4570` |
| 43 | `theorem` | [apply_f_eq_continuousPart](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/apply-f-eq-continuouspart--cd2091c256ba2742a864c75f.md) | 556 | `result-track:cd2091c256ba2742a864c75f387d758355ddf9ff0cc48fb226d3387fa30c5627` |
| 44 | `theorem` | [countable_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/countable-ne--2eb0c2e9ffd05e0079c7ef48.md) | 567 | `result-track:2eb0c2e9ffd05e0079c7ef48a727b1d5ee168d1f7d8af91762e0cdb334393755` |
| 45 | `theorem` | [comp_ae_eq_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/comp-ae-eq-const--bc711afa772ef5b6edab8dc0.md) | 588 | `result-track:bc711afa772ef5b6edab8dc0b21fc0c0873ca4902262063ee896bbfd3cfa9624` |
| 46 | `theorem` | [integrable_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/integrable-comp--f45e98bc7900f0b2858af2c8.md) | 597 | `result-track:f45e98bc7900f0b2858af2c8cd763d3fbcc4446b178acad4590365b448ae780b` |
| 47 | `theorem` | [integral_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/integral-comp--b8d7ff5638c7ebe5b1f0b897.md) | 606 | `result-track:b8d7ff5638c7ebe5b1f0b897e18272ed5bdf9c6ae35fb8a74d5e06f10283ffe2` |
| 48 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/example--6d357e074beac5de591c3291.md) | 619 | `declaration-track:6d357e074beac5de591c3291f6560df9b29352f8f5155afa91e920719fd390ae` |
| 49 | `theorem` | [measurable_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/measurable-comp--21c4bcba1ec0da42c11b351a.md) | 622 | `result-track:21c4bcba1ec0da42c11b351a7b0f024520eb1fb6045b48a59dfd46aba2853afa` |
| 50 | `theorem` | [norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/norm-bound--d98df70af7c82fd04556a6b6.md) | 630 | `result-track:d98df70af7c82fd04556a6b64f5d2c3957e128e1c96d8783ff66590b45ab0230` |
| 51 | `theorem` | [no_pettis_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Phillips/Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.lean/declarations/no-pettis-integral--cc3bc88416d6b0e161f8ebf1.md) | 635 | `result-track:cc3bc88416d6b0e161f8ebf1898a5a0747d3066e055c8280e3511a803d3bb1e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
