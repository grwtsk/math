# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Composition.Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4665617df85c93782d95a058754fdcdb8334583",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4665617df85c93782d95a058754fdcdb8334583`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Composition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [applyComposition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/applycomposition--cd6e4dbd5129401fb97df021.md) | 106 | `declaration-track:cd6e4dbd5129401fb97df021449d192383231b454166f98dc8dfd67ea2b01719` |
| 2 | `theorem` | [applyComposition_ones](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/applycomposition-ones--7a1d37d8790749dc467aeb22.md) | 110 | `result-track:7a1d37d8790749dc467aeb225ae2d7f3df3a944bd72086f148e2c8c7f85fb979` |
| 3 | `theorem` | [applyComposition_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/applycomposition-single--8e84f0c89127ee270848c27c.md) | 121 | `result-track:8e84f0c89127ee270848c27cf383005ffd61748b486bf1786e7fd65a2b87fbd7` |
| 4 | `theorem` | [removeZero_applyComposition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/removezero-applycomposition--a407cf55d8b9678a5885a43e.md) | 135 | `result-track:a407cf55d8b9678a5885a43e252f84a5858375f93a8036a8e332828eb4d0031a` |
| 5 | `theorem` | [applyComposition_update](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/applycomposition-update--b0e22cc21399198c2fedd268.md) | 144 | `result-track:b0e22cc21399198c2fedd268bc2300cce6094377c8de0d3d1a2288a27dc58b9a` |
| 6 | `theorem` | [compContinuousLinearMap_applyComposition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compcontinuouslinearmap-applycomposition--b4977502938baa9dd2fd4038.md) | 171 | `result-track:b4977502938baa9dd2fd4038c8e41cec08b5908e560aee7a1e2a30c6fa900fbc` |
| 7 | `def` | [compAlongComposition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compalongcomposition--aa544522768a49435dd9c49c.md) | 191 | `declaration-track:aa544522768a49435dd9c49cf1999aa3c429b964fb83a56b6ada4202af1e36a3` |
| 8 | `theorem` | [compAlongComposition_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compalongcomposition-apply--22e099befe758e8d13da32e6.md) | 207 | `result-track:22e099befe758e8d13da32e601e78e133b81d2bc1122d1ec4181d707f3f3228b` |
| 9 | `def` | [compAlongComposition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compalongcomposition--d3fc23f5aae94dca9ba2fa9c.md) | 227 | `declaration-track:d3fc23f5aae94dca9ba2fa9ca95e0a72903a5faa2bbc563bee256b57e8e45c56` |
| 10 | `theorem` | [compAlongComposition_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compalongcomposition-apply--99aadeb22bfe6b6d0a53fcc2.md) | 234 | `result-track:99aadeb22bfe6b6d0a53fcc222b8b6bebc4fbf4f79693343ac5fa774caec28ac` |
| 11 | `def` | [comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comp--84d0d1e9427b5e864eee97ea.md) | 249 | `declaration-track:84d0d1e9427b5e864eee97eaef05cf3aeee32f9b7686a82621f66a719ac060a6` |
| 12 | `theorem` | [comp_coeff_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comp-coeff-zero--b841748057059cf6b1e67a3f.md) | 256 | `result-track:b841748057059cf6b1e67a3fe6234ae4a7b7b52b29a3779f24e2b424d663999c` |
| 13 | `theorem` | [comp_coeff_zero'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comp-coeff-zero--5aef2d1ffc5f1e23aa2391a7.md) | 267 | `result-track:5aef2d1ffc5f1e23aa2391a7d16dab37f014ac9b94f4a9ae2dbcbdee0b76e8f7` |
| 14 | `theorem` | [comp_coeff_zero''](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comp-coeff-zero--cfa8abb8c7fdb729fd00c111.md) | 274 | `result-track:cfa8abb8c7fdb729fd00c11165f416341133df1c54482107b76ac8c16cb56c9e` |
| 15 | `theorem` | [comp_coeff_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comp-coeff-one--2abc19f7aca687db412d5f9f.md) | 280 | `result-track:2abc19f7aca687db412d5f9f8edb44ae2b13e81d556d95b7ccee9de3fd63d83b` |
| 16 | `theorem` | [removeZero_comp_of_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/removezero-comp-of-pos--d69a6adf8703a14bde27fa01.md) | 292 | `result-track:d69a6adf8703a14bde27fa01ddd4404d9bdf558a778bab6737a76854de4e65b1` |
| 17 | `theorem` | [comp_removeZero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comp-removezero--817b30618b78a9735153a259.md) | 303 | `result-track:817b30618b78a9735153a259c819b613bb1ab220ab61359178fad70e14bfc494` |
| 18 | `theorem` | [compAlongComposition_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compalongcomposition-bound--7851f8e98548ce7ed6693831.md) | 319 | `result-track:7851f8e98548ce7ed6693831eded1aeb78e27a4296f37a86e5c2c1b6fcfdc033` |
| 19 | `theorem` | [compAlongComposition_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compalongcomposition-norm--4625cc80561f0bbabfa1ff5b.md) | 339 | `result-track:4625cc80561f0bbabfa1ff5bdbbedcb97899dd13227e2021a424b3b03deba78c` |
| 20 | `theorem` | [compAlongComposition_nnnorm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compalongcomposition-nnnorm--44d0caf09cfcd452edbce043.md) | 347 | `result-track:44d0caf09cfcd452edbce04313a88f1a32e8f6bf571c26cc4b4e9d1b6d2be82a` |
| 21 | `def` | [id](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/id--f6a570efb755cecf38d7181a.md) | 367 | `declaration-track:f6a570efb755cecf38d7181a83753fa261ad23e7e3a970726373153b47b4b4fa` |
| 22 | `theorem` | [id_apply_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/id-apply-one--0cbd5b42fddc3d5bab30acc3.md) | 375 | `result-track:0cbd5b42fddc3d5bab30acc31ddb8dc9f6e8d28b4e7c9a7bdc38a88735c009cc` |
| 23 | `theorem` | [id_apply_one'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/id-apply-one--1dbb858f08451eb4c9956b78.md) | 381 | `result-track:1dbb858f08451eb4c9956b78bb7d44a2d2be13776c47fe3c6857d7218f6d0a67` |
| 24 | `theorem` | [id_apply_ne_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/id-apply-ne-one--e0e20cf1024094838751b41a.md) | 389 | `result-track:e0e20cf1024094838751b41a963dd4082db3be089977c27fbb78f784fb8a70c3` |
| 25 | `theorem` | [comp_id](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comp-id--7fe166635d82e39ef218de2e.md) | 400 | `result-track:7fe166635d82e39ef218de2ea40a0882b2e43827c16f1427e2c93990772fdb1b` |
| 26 | `theorem` | [id_comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/id-comp--cd81cc2c6a2ff8fdd7fe8745.md) | 433 | `result-track:cd81cc2c6a2ff8fdd7fe8745db684671e647b6841537002f88881e4e2119d81c` |
| 27 | `theorem` | [comp_summable_nnreal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comp-summable-nnreal--cba9b2f5eb37d5e03ce3691c.md) | 469 | `result-track:cba9b2f5eb37d5e03ce3691c90fa238d79b4d0d21466828d817592f8f5ef390b` |
| 28 | `theorem` | [le_comp_radius_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/le-comp-radius-of-summable--ba6772e42dacbb9b746d0ef6.md) | 533 | `result-track:ba6772e42dacbb9b746d0ef6d4335f41d934d2d66e474bf967a71a7fea41a8b5` |
| 29 | `def` | [compPartialSumSource](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comppartialsumsource--f5f27deb5eef0255ce6c70e7.md) | 566 | `declaration-track:f5f27deb5eef0255ce6c70e71cfbf1473ade613b02d7a53caf26d398134c157e` |
| 30 | `theorem` | [mem_compPartialSumSource_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/mem-comppartialsumsource-iff--b5628db43a3b47eb44e35689.md) | 571 | `result-track:b5628db43a3b47eb44e3568995c8890d5491d1f9168ca5430008956a8ba8e598` |
| 31 | `def` | [compChangeOfVariables](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compchangeofvariables--35b91851d215d83b53c34b6f.md) | 580 | `declaration-track:35b91851d215d83b53c34b6f9b6cfb3d2743c51595377793936158568e9bdc25` |
| 32 | `theorem` | [compChangeOfVariables_length](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compchangeofvariables-length--be5cd446c7f054cd9b2fc10d.md) | 591 | `result-track:be5cd446c7f054cd9b2fc10db66887fb051e55b7ab8ad47589f55baa48bb4b58` |
| 33 | `theorem` | [compChangeOfVariables_blocksFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compchangeofvariables-blocksfun--e3d6ff826b182c7bd52e90d4.md) | 600 | `result-track:e3d6ff826b182c7bd52e90d4fe4d209100e7aa66b7d196ede7c61fac21057f54` |
| 34 | `def` | [compPartialSumTargetSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comppartialsumtargetset--7fdf40d0fcdcc526260b6379.md) | 612 | `declaration-track:7fdf40d0fcdcc526260b637974c6f1744fd206f2e3e86143b592b5dd8bc9e339` |
| 35 | `theorem` | [compPartialSumTargetSet_image_compPartialSumSource](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comppartialsumtargetset-image-comppartialsumsource--546a37a19f49fa8f104d0ce1.md) | 616 | `result-track:546a37a19f49fa8f104d0ce12160fe23f1bd96020b066182f56596dde79bcd2b` |
| 36 | `def` | [compPartialSumTarget](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comppartialsumtarget--e0ce2f6d06ba5da99d5c7f6b.md) | 633 | `declaration-track:e0ce2f6d06ba5da99d5c7f6b3c8f982106f085e381fe856f467f4e420cdc0584` |
| 37 | `theorem` | [mem_compPartialSumTarget_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/mem-comppartialsumtarget-iff--da602703a780f36c0b14f26d.md) | 640 | `result-track:da602703a780f36c0b14f26d726d0677dfde292ea55cb8010ba6f3e733c0e82a` |
| 38 | `theorem` | [compChangeOfVariables_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/compchangeofvariables-sum--d28432832abdfb0739842894.md) | 652 | `result-track:d28432832abdfb0739842894dc3a0d80a9b8e9d90a1a72dd417e12104f6f09fa` |
| 39 | `theorem` | [compPartialSumTarget_tendsto_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comppartialsumtarget-tendsto-attop--c2dcabff30305260d6d22750.md) | 699 | `result-track:c2dcabff30305260d6d227509b253c2ecedefe74c35bb113a3b1f9e043896092` |
| 40 | `theorem` | [comp_partialSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comp-partialsum--8e28f9d2af2c9b177118232f.md) | 719 | `result-track:8e28f9d2af2c9b177118232f61255a492d18b0eaff9340d236e9be45ac1b8549` |
| 41 | `theorem` | [HasFPowerSeriesAt.comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/hasfpowerseriesat-comp--0a4eafc04f07886f3afde175.md) | 749 | `result-track:0a4eafc04f07886f3afde17568dc8ad9e67752dfb05a975585fd4c61848d02ce` |
| 42 | `theorem` | [AnalyticAt.comp](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/analyticat-comp--a368f95b844b814f953e7d4c.md) | 874 | `result-track:a368f95b844b814f953e7d4c3fc869124afb2a16423d4080416d4ee0c57c916a` |
| 43 | `theorem` | [sigma_composition_eq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/sigma-composition-eq-iff--943aa296a219ec3a9f7c4641.md) | 943 | `result-track:943aa296a219ec3a9f7c4641f8a3a6b286757f6095cb621ca78fb295231bb1cd` |
| 44 | `theorem` | [sigma_pi_composition_eq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/sigma-pi-composition-eq-iff--d7c0640db3ebf8b433a521b1.md) | 956 | `result-track:d7c0640db3ebf8b433a521b118295158a28f6dda98d4358d8aa1f407f53844ea` |
| 45 | `def` | [gather](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/gather--fea873d86cba53ca47ce8e9c.md) | 987 | `declaration-track:fea873d86cba53ca47ce8e9cf26e35c04cae52c4462355e17c7792b2f5e68dc4` |
| 46 | `theorem` | [length_gather](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/length-gather--4b5308faaf7adefbb62759b2.md) | 1004 | `result-track:4b5308faaf7adefbb62759b25b248f593911508f929e5c81edb7fc9af14b9e35` |
| 47 | `def` | [sigmaCompositionAux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/sigmacompositionaux--46296cd5fc7d7a7099c34da3.md) | 1016 | `declaration-track:46296cd5fc7d7a7099c34da3d2a6cea0ea118e3c3efffa7a3ee4348e8d87fe4d` |
| 48 | `theorem` | [length_sigmaCompositionAux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/length-sigmacompositionaux--ba29d404f2aa092e49fdf292.md) | 1031 | `result-track:ba29d404f2aa092e49fdf2926e1ffbb78e20db25ad72a6d695e3623b24981de4` |
| 49 | `theorem` | [blocksFun_sigmaCompositionAux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/blocksfun-sigmacompositionaux--7c5d678e38d90b5a9263ca18.md) | 1041 | `result-track:7c5d678e38d90b5a9263ca18af69cdddfb0b7f6a01a6ac7c7272d515760be56e` |
| 50 | `theorem` | [sizeUpTo_sizeUpTo_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/sizeupto-sizeupto-add--5f47dc01b4e27ce436014eb2.md) | 1059 | `result-track:5f47dc01b4e27ce436014eb2ab5db4f2b10b97ab299c312abe45ad48afa63be7` |
| 51 | `def` | [sigmaEquivSigmaPi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/sigmaequivsigmapi--a357b32dc5e405f403691362.md) | 1115 | `declaration-track:a357b32dc5e405f4036913624f9899c623489599f04fc6118d0baaebdf0483cf` |
| 52 | `theorem` | [comp_assoc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/declarations/comp-assoc--a3cbae245ec1afe0018713f1.md) | 1184 | `result-track:a3cbae245ec1afe0018713f109d5de5aaaf6ca1c8a1ef2e8467cc1031cfcb0e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
