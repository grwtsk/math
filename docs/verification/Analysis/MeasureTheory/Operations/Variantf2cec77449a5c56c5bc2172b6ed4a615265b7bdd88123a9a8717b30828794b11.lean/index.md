# Verification target: GRWTSK.Analysis.MeasureTheory.Operations.Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a0ebe363ea3bfad78b5ec3593091bc72b54cec2",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a0ebe363ea3bfad78b5ec3593091bc72b54cec2`.

Source path: `GRWTSK/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instZero](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instzero--667c1ab4117b9521f3f58ab6.md) | 38 | `declaration-track:667c1ab4117b9521f3f58ab62761202bfba1f1cba81ba716e90d13d8a5715abb` |
| 2 | `theorem` | [coe_zero](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/coe-zero--ba207b922155e3c2f8f3feeb.md) | 45 | `result-track:ba207b922155e3c2f8f3feeb452ef1c40fde06d9af784a93370f5bfc287a23a2` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instinhabited--91342e5584b882e3985009b5.md) | 48 | `declaration-track:91342e5584b882e3985009b57e1558b3ced4604c4991e3e552cf98376f7a8e27` |
| 4 | `instance` | [instAdd](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instadd--57a21009dcf8865987268ab5.md) | 51 | `declaration-track:57a21009dcf8865987268ab5e9e0f3075f0bd829f1b514e60e59b1002e14ee58` |
| 5 | `theorem` | [coe_add](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/coe-add--be59b993e4d268ea324d9a6e.md) | 63 | `result-track:be59b993e4d268ea324d9a6eedc89cd9262a0625cac141941d29dcc3ffadc859` |
| 6 | `theorem` | [add_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/add-apply--5aa4141ae1f5150868c9be59.md) | 66 | `result-track:5aa4141ae1f5150868c9be595d29b1f6b2584382d19afc6fa750fc74fe5a703c` |
| 7 | `instance` | [instSMul](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instsmul--fe21a3631c6c6ac26c9ef6b4.md) | 74 | `declaration-track:fe21a3631c6c6ac26c9ef6b4b787ff84ae99f37d57cc34ce410f8e4697cbbda7` |
| 8 | `theorem` | [coe_smul](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/coe-smul--b680bbff68bc4cbbeee8aa36.md) | 86 | `result-track:b680bbff68bc4cbbeee8aa36e2830e3cf5f9f038dd7cc36cb51fc9e0c7f5b348` |
| 9 | `theorem` | [smul_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/smul-apply--91eb84946c61d058b254830c.md) | 89 | `result-track:91eb84946c61d058b254830c975dd530717c81da8e0f6fd29f3c46109bc1e7ce` |
| 10 | `instance` | [instSMulCommClass](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instsmulcommclass--4a37906a83fc8043f6cbd594.md) | 92 | `declaration-track:4a37906a83fc8043f6cbd59414c6a78830675800f2a7022f808d9705fc243eff` |
| 11 | `instance` | [instIsScalarTower](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instisscalartower--e1ea8584097367d005a59332.md) | 95 | `declaration-track:e1ea8584097367d005a59332933a10e5ef44d6b79dd47c1ed0a4684529c7b088` |
| 12 | `instance` | [instIsCentralScalar](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instiscentralscalar--dda8540fa7b987aae8b31249.md) | 99 | `declaration-track:dda8540fa7b987aae8b3124971d9ed103dc4a174edb65ebb3308e8b4adae0ca4` |
| 13 | `instance` | [instMulAction](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instmulaction--e7f095c5d32f3d8345cb757c.md) | 105 | `declaration-track:e7f095c5d32f3d8345cb757cfeb2d488e368dc1ea42b248809451ba83c86eb2c` |
| 14 | `instance` | [addCommMonoid](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/addcommmonoid--499e9932db10b07bb4efd865.md) | 109 | `declaration-track:499e9932db10b07bb4efd865de5ca58dfa4a8b15a547a67e6e9ba86436990089` |
| 15 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/coefnaddmonoidhom--ed0c441e6324c307110b58d3.md) | 115 | `declaration-track:ed0c441e6324c307110b58d383287631e01c31e22a55f15ed88c927a75122886` |
| 16 | `instance` | [instDistribMulAction](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instdistribmulaction--af2766d9e6d2cc9b1cde5bab.md) | 120 | `declaration-track:af2766d9e6d2cc9b1cde5bab6195ec4c2795abfb3c0cd72e35869443c9488f27` |
| 17 | `instance` | [instModule](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instmodule--223017fb14a45e2f98e90175.md) | 125 | `declaration-track:223017fb14a45e2f98e901757df4b19de9ab54892a8082b21bd92e3525b8a0ea` |
| 18 | `instance` | [instBot](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instbot--0e8dc09e87c79864b78f4490.md) | 129 | `declaration-track:0e8dc09e87c79864b78f4490c23ae9d9bc31d64f7e765b2a6242357cfeb3070e` |
| 19 | `theorem` | [coe_bot](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/coe-bot--93124d47d06207fdd3d4166e.md) | 133 | `result-track:93124d47d06207fdd3d4166eb848b3376e141bfeaa018f33f6947e1e4a62d4ca` |
| 20 | `instance` | [instPartialOrder](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instpartialorder--4074f3749e319ffec49a767a.md) | 136 | `declaration-track:4074f3749e319ffec49a767abfe5eea09ce9b1190bf219e0cf190b398beed43d` |
| 21 | `instance` | [orderBot](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/orderbot--8afa88f450e416bcfe5b20a4.md) | 142 | `declaration-track:8afa88f450e416bcfe5b20a4cfbc6ae3c20b265a4bbbbe97198a347f714d954f` |
| 22 | `theorem` | [univ_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/univ-eq-zero-iff--b19d75cff20c099275a5bced.md) | 146 | `result-track:b19d75cff20c099275a5bcedce48c812fd75b12dc993282859fdda05028a7c7e` |
| 23 | `instance` | [instSupSet](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instsupset--6925a2a1a92b4c95476d7422.md) | 151 | `declaration-track:6925a2a1a92b4c95476d74229b32c09589ee96d3b9493b1ad2cf19314c55bf9f` |
| 24 | `instance` | [instCompleteLattice](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instcompletelattice--55159b19c35358196e5a137c.md) | 164 | `declaration-track:55159b19c35358196e5a137c2ff74963e0cd9e0740d01520d67667e05a28fdc2` |
| 25 | `theorem` | [sSup_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/ssup-apply--7ea766901106a54dd75c781c.md) | 170 | `result-track:7ea766901106a54dd75c781c113842e3d9af4f3683cd83d20e5e6eb52f80df15` |
| 26 | `theorem` | [iSup_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/isup-apply--8dd34da80a23cef24fd840a2.md) | 175 | `result-track:8dd34da80a23cef24fd840a2ad38658490f4ff7c18ccae424ef3ea09cea3dd52` |
| 27 | `theorem` | [coe_iSup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/coe-isup--7a0f13a9d655a31edf7f09de.md) | 179 | `result-track:7a0f13a9d655a31edf7f09de9a8674eabe975c2985429f34a1f47ed95b9c5657` |
| 28 | `theorem` | [sup_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/sup-apply--b8fe223bb06ccb74f20be4c7.md) | 183 | `result-track:b8fe223bb06ccb74f20be4c742667d0085404cbcc0ebcf36c652c11765978fc8` |
| 29 | `theorem` | [smul_iSup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/smul-isup--60897cdf6d73b929106a255f.md) | 186 | `result-track:60897cdf6d73b929106a255f28c3ed510d389df1e7c62f251a12a1e5f11e55de` |
| 30 | `theorem` | [mono''](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/mono--620ce06c3b991da5e9cc0818.md) | 194 | `result-track:620ce06c3b991da5e9cc08188de597932a1d9c74bc7cae34261ab378658b848c` |
| 31 | `def` | [map](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map--2165fe7830ea9f708143a817.md) | 199 | `declaration-track:2165fe7830ea9f708143a8173603847b929845016a64dbd955f936920bbdd1bb` |
| 32 | `theorem` | [map_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-apply--6509210044b20e808ea4b78d.md) | 209 | `result-track:6509210044b20e808ea4b78dbb78c23cda1c1e5582ec98450d547b3ea576ed4e` |
| 33 | `theorem` | [map_id](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-id--a9e4db9813d8b8a1cc753941.md) | 213 | `result-track:a9e4db9813d8b8a1cc753941dd0dc772fda3ec5854bd681d48f15e1f247ecfd0` |
| 34 | `theorem` | [map_map](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-map--b7f0666ba924a91d019ab448.md) | 217 | `result-track:b7f0666ba924a91d019ab448fc2fd00c56c555ad6001c4ba4a616dac82e0f850` |
| 35 | `theorem` | [map_mono](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-mono--3916d739368653e955d2dd16.md) | 222 | `result-track:3916d739368653e955d2dd167079fcfdcea3c8edd268419d79712cc7df01f659` |
| 36 | `theorem` | [map_sup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-sup--7a0edb40530cfbd6cd147cda.md) | 225 | `result-track:7a0edb40530cfbd6cd147cdaf1511d3fd31679501af137257192ee3f885027f8` |
| 37 | `theorem` | [map_iSup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-isup--82a08bc86de0d92b6d6bf574.md) | 229 | `result-track:82a08bc86de0d92b6d6bf574418bfa809352fbdcc9ae7293ee0b479a5627d4a0` |
| 38 | `instance` | [instFunctor](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instfunctor--38910e82a7fe69016c47be20.md) | 232 | `declaration-track:38910e82a7fe69016c47be200474f56c3fb4500b0d87be9c1104e1bf9d0931b4` |
| 39 | `instance` | [instLawfulFunctor](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/instlawfulfunctor--86a9687dc8f190a1df7c0cf5.md) | 234 | `declaration-track:86a9687dc8f190a1df7c0cf5b64a8a22f892fdfa72e8223c124b3a23d589837d` |
| 40 | `def` | [dirac](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/dirac--fc6674aade5931a1253dfcb1.md) | 237 | `declaration-track:fc6674aade5931a1253dfcb17139aaa484b2b49d333cdef785afd57616f65845` |
| 41 | `theorem` | [dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/dirac-apply--3179556f498c147efef044bd.md) | 247 | `result-track:3179556f498c147efef044bdd6a2493df6915279fdda8c15af3cb43665a1d4c4` |
| 42 | `def` | [sum](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/sum--85e09e2830a2019121d10976.md) | 251 | `declaration-track:85e09e2830a2019121d10976dbf0500a3ab8431b9769bd40013e8ddb2005a6da` |
| 43 | `theorem` | [sum_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/sum-apply--02d238c0d151e7d53f9257bd.md) | 259 | `result-track:02d238c0d151e7d53f9257bd60ba63eec5752d6c0d9adccc5073f52d06602883` |
| 44 | `theorem` | [smul_dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/smul-dirac-apply--e58fe25cb38e1166c022f5f6.md) | 262 | `result-track:e58fe25cb38e1166c022f5f698a85632657b5d6f79a4ed771145052708b87460` |
| 45 | `def` | [comap](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/comap--d25604d6170e5a3032b3c3b8.md) | 267 | `declaration-track:d25604d6170e5a3032b3c3b80eddd9afbf6a9b0e8efc9e3515691e80b166fa97` |
| 46 | `theorem` | [comap_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/comap-apply--d7f0134e9470d7c3854f217d.md) | 277 | `result-track:d7f0134e9470d7c3854f217d7ab429efb982329e2ba7595a8e8083d063b9562b` |
| 47 | `theorem` | [comap_mono](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/comap-mono--1e2e9baaa97c7094ecb12e8f.md) | 281 | `result-track:1e2e9baaa97c7094ecb12e8f8379bd111badcb7c089e903a575f90650ba613c2` |
| 48 | `theorem` | [comap_iSup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/comap-isup--6219982f4aec09637760be23.md) | 284 | `result-track:6219982f4aec09637760be2333bd855079037758980d28f4b3cce22256e0bb16` |
| 49 | `def` | [restrict](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/restrict--fdbe883c46355f655f07eae8.md) | 289 | `declaration-track:fdbe883c46355f655f07eae891a1e870ba80e82b0411fd30dadcb34f04b08cf6` |
| 50 | `theorem` | [restrict_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/restrict-apply--2401f47ed3ad1052aa01a47f.md) | 294 | `result-track:2401f47ed3ad1052aa01a47f336c8e50427ce15133a91b6962edf9a653aea2cc` |
| 51 | `theorem` | [restrict_mono](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/restrict-mono--cbf2edd3d8db61c7f1f5cf23.md) | 298 | `result-track:cbf2edd3d8db61c7f1f5cf2311883aada07096263f5c8d3f94513f3fb5579121` |
| 52 | `theorem` | [restrict_univ](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/restrict-univ--452f519f66f2e69f709ac314.md) | 304 | `result-track:452f519f66f2e69f709ac31484fd1d5286f3c7f06591b23b555d786be693d93c` |
| 53 | `theorem` | [restrict_empty](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/restrict-empty--7ba1f6c4fd6b3cd75538e794.md) | 308 | `result-track:7ba1f6c4fd6b3cd75538e794224aa68d84627b67acd07acb181ab0f3704fce4d` |
| 54 | `theorem` | [restrict_iSup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/restrict-isup--d3e550c24304bd6e20355bc9.md) | 312 | `result-track:d3e550c24304bd6e20355bc9db24c9727aded651fe6a0a890674ddaeb9085684` |
| 55 | `theorem` | [map_comap](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-comap--6125b5710fd77e108d06b81b.md) | 315 | `result-track:6125b5710fd77e108d06b81b14ce02eee44bf9600ef5da8a5d47ef4b31abce2e` |
| 56 | `theorem` | [map_comap_le](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-comap-le--96cb865de219bbf7672fe2fd.md) | 318 | `result-track:96cb865de219bbf7672fe2fdd476603e32a4648112bfed0d66410082e5521b0f` |
| 57 | `theorem` | [restrict_le_self](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/restrict-le-self--308183270643096baf10f685.md) | 321 | `result-track:308183270643096baf10f6855c34346ea9a26b2e8132776523d4ac8b4dcec0cf` |
| 58 | `theorem` | [map_le_restrict_range](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-le-restrict-range--5c3bd97e5de541b686a4560f.md) | 325 | `result-track:5c3bd97e5de541b686a4560f0986de29822c6ca1e60bf5a5990522a8376db6ac` |
| 59 | `theorem` | [map_comap_of_surjective](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-comap-of-surjective--c99c8f645ca3f24cf6d528fa.md) | 329 | `result-track:c99c8f645ca3f24cf6d528faa85f270454fd97ea0aa1449b2f5bc2142539a90c` |
| 60 | `theorem` | [le_comap_map](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/le-comap-map--5af7c00f08532d3c82fde674.md) | 333 | `result-track:5af7c00f08532d3c82fde6743cd062c7c4e02b1089838ee98b680b40695a196f` |
| 61 | `theorem` | [comap_map](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/comap-map--90cb186b155c61305cba23c9.md) | 336 | `result-track:90cb186b155c61305cba23c90bbcedf5336ef3dd0bb7a3d0a2784c63dea33906` |
| 62 | `theorem` | [top_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/top-apply--31a02d88497aa69d4751d425.md) | 340 | `result-track:31a02d88497aa69d4751d4256c5480dee0a084c9463cf97bf4c1b02b057849c3` |
| 63 | `theorem` | [top_apply'](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/top-apply--3ad44e72a285d759ed158008.md) | 344 | `result-track:3ad44e72a285d759ed158008c4c30eb8d774eaa6997e9d181e7fa70587d6ecf0` |
| 64 | `theorem` | [comap_top](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/comap-top--ff559db758c98c4f06e9388b.md) | 348 | `result-track:ff559db758c98c4f06e9388b192c00e3f320dc1f2bfa66c8367bedea9bea48bf` |
| 65 | `theorem` | [map_top](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-top--8deb9db989fa6ae7bf363c8a.md) | 351 | `result-track:8deb9db989fa6ae7bf363c8a4c50505e322eaee2e0ffbf28aa2ed43df16338f5` |
| 66 | `theorem` | [map_top_of_surjective](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf2cec77449a5c56c5bc2172b6ed4a615265b7bdd88123a9a8717b30828794b11.lean/declarations/map-top-of-surjective--29abd51b093234ae36d8b211.md) | 357 | `result-track:29abd51b093234ae36d8b2116b34caf58b08a91609c1e937b3b16496688e8c31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
