# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Substitution.Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85e5a401fe760068af6d4189c7386ba2154b3bf5",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85e5a401fe760068af6d4189c7386ba2154b3bf5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Substitution` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Evaluation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasSubst](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst--1f926566c1d1dc742fc316c5.md) | 34 | `declaration-track:1f926566c1d1dc742fc316c5552357079f3426a569b4162c58795520a32f8e02` |
| 2 | `theorem` | [hasSubst_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-iff--587e93a611c45b50019658f6.md) | 37 | `result-track:587e93a611c45b50019658f612cccf1bc4427ab89197ce79d42b3155ac147338` |
| 3 | `theorem` | [HasSubst.const](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-const--f49cdac9bbb998506c345fab.md) | 42 | `result-track:f49cdac9bbb998506c345fabcfe9d742c9028417ffa06613184f9ad483565161` |
| 4 | `theorem` | [hasSubst_iff_hasEval_of_discreteTopology](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-iff-haseval-of-discretetopology--4ed3e4e84f3c13041889074b.md) | 46 | `result-track:4ed3e4e84f3c13041889074b87ec2db7aa0a99361fdca821ac83b72d3ef2b52b` |
| 5 | `theorem` | [HasSubst.hasEval](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-haseval--ef09d2c1111a639bb9025417.md) | 52 | `result-track:ef09d2c1111a639bb90254171224aedf7a9f105d527782699c4a85698a869193` |
| 6 | `theorem` | [HasSubst.of_constantCoeff_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-of-constantcoeff-zero--3ce5e683fa6766192de7139a.md) | 58 | `result-track:3ce5e683fa6766192de7139ab42506838952005b3348eaeb8ca44089d044bc2c` |
| 7 | `theorem` | [HasSubst.of_constantCoeff_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-of-constantcoeff-zero--f6b0dda280d95e6fd6f8ef46.md) | 64 | `result-track:f6b0dda280d95e6fd6f8ef4656d604de4384e4d9be09782927e547ad9dcb78ef` |
| 8 | `theorem` | [HasSubst.X](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-x--2acdc30bb035155163574fc0.md) | 68 | `result-track:2acdc30bb035155163574fc0f1c91ef412333d0c7d10bc49a35a47d36323acb2` |
| 9 | `theorem` | [HasSubst.X'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-x--ea846f1b69cd829fbc6656b8.md) | 75 | `result-track:ea846f1b69cd829fbc6656b8ae9f5b76bae582dc53ee6521080a154c5489ee9e` |
| 10 | `theorem` | [HasSubst.X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-x-pow--4305d18a7c0fb11e67a1c83e.md) | 78 | `result-track:4305d18a7c0fb11e67a1c83e08a969868ff5b74abb1a462720d282cdb49fcf82` |
| 11 | `theorem` | [HasSubst.monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-monomial--c7d1aefdf212b30496cf0121.md) | 81 | `result-track:c7d1aefdf212b30496cf0121cc4c1482321b76010f2f5698be34781d2cad6cd0` |
| 12 | `theorem` | [HasSubst.monomial'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-monomial--81a1815b16cafa6f9ff7d37d.md) | 89 | `result-track:81a1815b16cafa6f9ff7d37da719855d96fd3705f899d8296a85d04222820fae` |
| 13 | `theorem` | [HasSubst.zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-zero--52c7851fb75760bc6cbcdaab.md) | 93 | `result-track:52c7851fb75760bc6cbcdaaba23a8cf782c410560a4d7bc71109a9ac54c7e92a` |
| 14 | `theorem` | [HasSubst.zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-zero--b7a20834b7873d86469c8ee9.md) | 98 | `result-track:b7a20834b7873d86469c8ee96dd11c3809cd0e9f23a7abce62dc15127434ca4b` |
| 15 | `theorem` | [HasSubst.add](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-add--05fa4d0846741aea712f21cf.md) | 103 | `result-track:05fa4d0846741aea712f21cf75df9b27ce798f10e2baeb8775134ee9c9988fc6` |
| 16 | `theorem` | [HasSubst.mul_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-mul-left--338a6ee04fee324d68c6d059.md) | 108 | `result-track:338a6ee04fee324d68c6d059951e66988d5083d7cb072b875f8cb6fa2816c837` |
| 17 | `theorem` | [HasSubst.mul_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-mul-right--db96bf7927b23f26538e31a8.md) | 113 | `result-track:db96bf7927b23f26538e31a809d008dfb093745d9ee31096bffe962ca0dd9c9b` |
| 18 | `theorem` | [HasSubst.smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-smul--c88047fe766922c68dbc2b7f.md) | 118 | `result-track:c88047fe766922c68dbc2b7f1140b1b7645ad9a0ddabd0cb68eef9148c8a89da` |
| 19 | `def` | [HasSubst.ideal](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-ideal--b7c698c0c4c27e7480a39e1f.md) | 123 | `declaration-track:b7c698c0c4c27e7480a39e1fd6b2aeda3fb041ef00f52fba28862648f7e19e7c` |
| 20 | `theorem` | [HasSubst.smul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-smul--ad15275e81d42f25582fcfed.md) | 130 | `result-track:ad15275e81d42f25582fcfedd59344f55a56ee697151982b1f2e054bc1f94b5f` |
| 21 | `theorem` | [HasSubst.smul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-smul-x--5652af5d96e1444d6993ff31.md) | 135 | `result-track:5652af5d96e1444d6993ff31a8c38d43318dfbdec83a98dd5c7c44e5b7a2237e` |
| 22 | `theorem` | [HasSubst.smul_X'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-smul-x--8ea226855a114c4df9b1cc54.md) | 139 | `result-track:8ea226855a114c4df9b1cc54f27422b5f679f5b7cb65606e94c38de47a16256a` |
| 23 | `def` | [subst](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/subst--7ca87893f120b10b2b0543bb.md) | 145 | `declaration-track:7ca87893f120b10b2b0543bb1ca5505652fcb1953022610154c6ed37f85b9007` |
| 24 | `def` | [substAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/substalghom--8848d28b9c79f94055295579.md) | 152 | `declaration-track:8848d28b9c79f9405529557967f38c3ac24644e277d817431af6ca173a902845` |
| 25 | `theorem` | [coe_substAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/coe-substalghom--724236e760bfd5a8c959893d.md) | 156 | `result-track:724236e760bfd5a8c959893dbfa3778ae51df54be09306dcfc345f407e6767f6` |
| 26 | `theorem` | [substAlgHom_eq_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/substalghom-eq-aeval--a9fd4cc4f2ebc53abfa027c2.md) | 165 | `result-track:a9fd4cc4f2ebc53abfa027c297c574f3ea9d96bb708911249cae3d82afd64856` |
| 27 | `theorem` | [subst_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/subst-add--7e05415fca3b5702475fec20.md) | 172 | `result-track:7e05415fca3b5702475fec20e5485b5065fa40b7cd55b6dbf112c203814d05a0` |
| 28 | `theorem` | [subst_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/subst-pow--25513c13787f4d50e40903fb.md) | 176 | `result-track:25513c13787f4d50e40903fbbca5b745fb1db9891ea2386600474e016408d96a` |
| 29 | `theorem` | [subst_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/subst-mul--aed5e4a922c9517a0db1b4f3.md) | 180 | `result-track:aed5e4a922c9517a0db1b4f3c2aa450cdecaa703e3915ed9896e78dfd4a7ef63` |
| 30 | `theorem` | [subst_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/subst-smul--cd60367d94ffe05b296ab70c.md) | 184 | `result-track:cd60367d94ffe05b296ab70c4543c454c7f4ef938277dcbacce83c3869a47867` |
| 31 | `theorem` | [coeff_subst_finite](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/coeff-subst-finite--b69906148d017880e4b27555.md) | 189 | `result-track:b69906148d017880e4b27555c2fd0ad49f2e65a91619ca7ecfbe24ff460520a5` |
| 32 | `theorem` | [coeff_subst_finite'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/coeff-subst-finite--2e0eef1078275e2d4df2edeb.md) | 199 | `result-track:2e0eef1078275e2d4df2edebd0f1cf957fa6ec6a213cefe1f29101a0c102080b` |
| 33 | `theorem` | [coeff_subst](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/coeff-subst--80df6317fa0b372bc3738ec8.md) | 203 | `result-track:80df6317fa0b372bc3738ec88176f4ff3aa64761c647dfc980f9d368c592efa6` |
| 34 | `theorem` | [coeff_subst'](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/coeff-subst--38a98456d7b9e74f2dfffc5c.md) | 213 | `result-track:38a98456d7b9e74f2dfffc5c7090390279562daf9d0f8764383d2713744bac28` |
| 35 | `theorem` | [constantCoeff_subst](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/constantcoeff-subst--ca9d7723b506b424eceab7d2.md) | 219 | `result-track:ca9d7723b506b424eceab7d29b2cccb10be358bb1c73144b741494d36fc67753` |
| 36 | `theorem` | [map_algebraMap_eq_subst_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/map-algebramap-eq-subst-x--ad6c9cb05a67accae0e48bf7.md) | 224 | `result-track:ad6c9cb05a67accae0e48bf72799009c24c9aa09e08457e7d64dfdff461ea02b` |
| 37 | `theorem` | [_root_.Polynomial.toPowerSeries_toMvPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/root-polynomial-topowerseries-tomvpowerseries--f0a94bab3cb030b793d725ef.md) | 228 | `result-track:f0a94bab3cb030b793d725ef21639069d49795b2a41d006d2f61a70e4d33e120` |
| 38 | `theorem` | [substAlgHom_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/substalghom-coe--80b30944dae92d8f1402c1b1.md) | 239 | `result-track:80b30944dae92d8f1402c1b1080bfaabcd148214d7a952ebb27841e0c0b7acea` |
| 39 | `theorem` | [substAlgHom_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/substalghom-x--47d9102f6e3a0ce0f206e2ee.md) | 247 | `result-track:47d9102f6e3a0ce0f206e2ee7f832956ec7588fb8c624f382cdb0726d4ad6aaf` |
| 40 | `theorem` | [subst_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/subst-coe--495706ab70619aeaf57be195.md) | 251 | `result-track:495706ab70619aeaf57be1951e73d24100e64b3d24fcd903e66d5ebd06bdbd89` |
| 41 | `theorem` | [subst_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/subst-x--5b2878d015c6e51cba0920fe.md) | 255 | `result-track:5b2878d015c6e51cba0920fef7f04d74b978ab376b6d0545f61f419362b02306` |
| 42 | `theorem` | [HasSubst.comp](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/hassubst-comp--a44e31605cd5c70b2d2685d3.md) | 259 | `result-track:a44e31605cd5c70b2d2685d32f291ea1b4e7452748e7420a08a0d254e20cc7f5` |
| 43 | `theorem` | [substAlgHom_comp_substAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/substalghom-comp-substalghom--efa9f825d1b7f90b5d246106.md) | 267 | `result-track:efa9f825d1b7f90b5d246106a059cbb56e00a33cb42f483e572aae38795ad9ee` |
| 44 | `theorem` | [substAlgHom_comp_substAlgHom_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/substalghom-comp-substalghom-apply--36a34652ec02128d121d1774.md) | 273 | `result-track:36a34652ec02128d121d1774b799a8c29a1e9aec98483b53d1c826688bfc8be0` |
| 45 | `theorem` | [subst_comp_subst](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/subst-comp-subst--dc7498445da8075546c5b037.md) | 278 | `result-track:dc7498445da8075546c5b03764b635bee5b8bb9758e84429910f9ec02b03eb6d` |
| 46 | `theorem` | [subst_comp_subst_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/subst-comp-subst-apply--53dc0084aba9d537c9d4830f.md) | 282 | `result-track:53dc0084aba9d537c9d4830f7900559c60385a5ee5f4b8da84c41483bdf045a8` |
| 47 | `theorem` | [_root_.MvPowerSeries.rescaleUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Substitution/Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.lean/declarations/root-mvpowerseries-rescaleunit--c19e3579054b606a991f7e5e.md) | 287 | `result-track:c19e3579054b606a991f7e5e43e2fd086f571d5194eb4e4332b79cdafb97c462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
