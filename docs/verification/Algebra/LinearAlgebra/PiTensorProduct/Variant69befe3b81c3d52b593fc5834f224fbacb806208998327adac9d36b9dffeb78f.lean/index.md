# Verification target: GRWTSK.Algebra.LinearAlgebra.PiTensorProduct.Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afb286db93a11610857257f2ff02737ee2cd52be",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afb286db93a11610857257f2ff02737ee2cd52be`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Congruence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.TensorProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LibrarySearch` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Eqv](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/eqv--ab5764c52b50b2e75045ba93.md) | 90 | `declaration-track:ab5764c52b50b2e75045ba9393d1854d6b87e7862470b2056819d932e025bd10` |
| 2 | `def` | [PiTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/pitensorproduct--d1c3d16fb2625e4d6f4efe77.md) | 109 | `declaration-track:d1c3d16fb2625e4d6f4efe77faceae241e4fc0e130f19b0c1dca26e8ac5df8e2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/instance--a16ee16ca105082b73f9fd6c.md) | 126 | `declaration-track:a16ee16ca105082b73f9fd6c10ebb2c8bf3d49bc7561b6c4f38d47194b422e07` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/instance--b8dcf812acb72562525c3246.md) | 132 | `declaration-track:b8dcf812acb72562525c32464c768ab0c1a690243f8feef8b9a30178d34b2638` |
| 5 | `def` | [tprodCoeff](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/tprodcoeff--31e67d5362cd2f3da72d9600.md) | 139 | `declaration-track:31e67d5362cd2f3da72d9600280a87022176f6641c4431f0f17730522ff9be21` |
| 6 | `theorem` | [zero_tprodCoeff](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/zero-tprodcoeff--60aef0131ee6f594c4da42a6.md) | 145 | `result-track:60aef0131ee6f594c4da42a6d0235335bc18bb55cdf22b641b617af322149665` |
| 7 | `theorem` | [zero_tprodCoeff'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/zero-tprodcoeff--78f7bd6232c4d79d9c3d4067.md) | 149 | `result-track:78f7bd6232c4d79d9c3d406713366a8ab8d59a496432351134f1afb85a3f9b18` |
| 8 | `theorem` | [add_tprodCoeff](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/add-tprodcoeff--76c7c83afb917d93b128f52d.md) | 153 | `result-track:76c7c83afb917d93b128f52d493f8694a1662e5da2eb2218c98f5aa390b605ad` |
| 9 | `theorem` | [add_tprodCoeff'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/add-tprodcoeff--d22b0ea44c786d428bb8cf1e.md) | 159 | `result-track:d22b0ea44c786d428bb8cf1e03db4f9816395e665568395c30bc7f5f3abd0ed1` |
| 10 | `theorem` | [smul_tprodCoeff_aux](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/smul-tprodcoeff-aux--74944ceb8899d8bc555e4827.md) | 164 | `result-track:74944ceb8899d8bc555e4827e43dc55b3b60daad4828d2849d7cbfdb4084c666` |
| 11 | `theorem` | [smul_tprodCoeff](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/smul-tprodcoeff--61821e4f19b740bed386ea36.md) | 169 | `result-track:61821e4f19b740bed386ea3613872b0bb6b4d6678f8b7216d77fa1a9f729b6ad` |
| 12 | `def` | [liftAddHom](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/liftaddhom--51436a05fdd312a450cd5a67.md) | 180 | `declaration-track:51436a05fdd312a450cd5a67c4adec27430f541eda4674e91d67422f7944f3a8` |
| 13 | `theorem` | [induction_on'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/induction-on--60f180ce7735c5ad01e4441d.md) | 207 | `result-track:60f180ce7735c5ad01e4441d2808fe4958fdc59592937de2ae99793adfeeeb33` |
| 14 | `instance` | [hasSMul'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/hassmul--fdf697b053436791fd23e3e6.md) | 227 | `declaration-track:fdf697b053436791fd23e3e616e0e744886404c73c05dc88ab8e8c4920cc0658` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/instance--e3d5fbd0b68270586183e5cb.md) | 236 | `declaration-track:e3d5fbd0b68270586183e5cb944b8649a42685041660debfcc7b2dcffcdf144a` |
| 16 | `theorem` | [smul_tprodCoeff'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/smul-tprodcoeff--574c0f7b45dd006b200ae035.md) | 239 | `result-track:574c0f7b45dd006b200ae035221f9a603662c4e4480cffa0f7ba3b00d34b6e1a` |
| 17 | `theorem` | [smul_add](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/smul-add--c92893af6711199c2b4308bb.md) | 243 | `result-track:c92893af6711199c2b4308bb1363a9f80a39fb8e339785bbdf9c64d6eb47459b` |
| 18 | `instance` | [distribMulAction'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/distribmulaction--0ea9ae41f70f511374053604.md) | 247 | `declaration-track:0ea9ae41f70f5113740536049e120db6a800f6f0cb956e68c61321242442c2b1` |
| 19 | `instance` | [smulCommClass'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/smulcommclass--97157aad230bd52f77ce9a5c.md) | 259 | `declaration-track:97157aad230bd52f77ce9a5c9a002a95efe567bf6d9b814d642e83453214fdfc` |
| 20 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/isscalartower--3875ab7bb0c41b41d74b7108.md) | 265 | `declaration-track:3875ab7bb0c41b41d74b71081406d61f247702f660ea33b361d7b0fa9eee4ec9` |
| 21 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/module--e2b1234936219b33b054548a.md) | 276 | `declaration-track:e2b1234936219b33b054548aadd3ef1dcbb708872d8b41787727d9780b52303a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/instance--1f0c63480b8a62e09e7233bc.md) | 290 | `declaration-track:1f0c63480b8a62e09e7233bc64eeaf791b7c77598852957f0ad52c32005443ce` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/instance--4611d8b6675aa494a8d4c0a3.md) | 293 | `declaration-track:4611d8b6675aa494a8d4c0a39ebd4ec9a7439608911e8d87da250c44bd3afa29` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/instance--cc6af72f4cc7a1c2131e361d.md) | 296 | `declaration-track:cc6af72f4cc7a1c2131e361d613fd72ca66373f3c981e6593b6f66d78921444c` |
| 25 | `def` | [tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/tprod--7e121031217efe361b64d770.md) | 302 | `declaration-track:7e121031217efe361b64d7701e78015df10a864f0e2094616f4f5a9c1b8bf982` |
| 26 | `theorem` | [tprod_eq_tprodCoeff_one](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/tprod-eq-tprodcoeff-one--3d4e039395928a6bd986fa2f.md) | 317 | `result-track:3d4e039395928a6bd986fa2fd16b408d4b0632f2d87c4b05f785de20be62e39e` |
| 27 | `theorem` | [tprodCoeff_eq_smul_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/tprodcoeff-eq-smul-tprod--165e4391297bcd55917b2afb.md) | 321 | `result-track:165e4391297bcd55917b2afbf129ff117818cf6f3177b775f718e1a29fa21eb3` |
| 28 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/induction-on--5c21bbfb3c7b8dc6719865eb.md) | 327 | `result-track:5c21bbfb3c7b8dc6719865ebdd68824a9cb7018b3c505d98a0afb18732c1db4f` |
| 29 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/ext--1f4f80f03b0aec7a24d49070.md) | 335 | `result-track:1f4f80f03b0aec7a24d490705b2e3fd67d9a1b1b6c3d45fdb95580e91b891511` |
| 30 | `def` | [liftAux](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/liftaux--94df7974d157115731164aab.md) | 357 | `declaration-track:94df7974d157115731164aabd22bd3fde395ed410118bd366111a97efb947e2d` |
| 31 | `theorem` | [liftAux_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/liftaux-tprod--bd037b9a97d849d315f5b72e.md) | 366 | `result-track:bd037b9a97d849d315f5b72ea81be50159db7d6787678f6c79e0b7111c8d9273` |
| 32 | `theorem` | [liftAux_tprodCoeff](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/liftaux-tprodcoeff--63f7faaad650d540b0109609.md) | 374 | `result-track:63f7faaad650d540b0109609d42abad792693cb70e70df8f715c55bd27d29ded` |
| 33 | `theorem` | [liftAux.smul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/liftaux-smul--6eb6b91e7c56b8cf8890dc1e.md) | 378 | `result-track:6eb6b91e7c56b8cf8890dc1e594f0034b3d2581ef7d18bc3c20c5e943ebba8a0` |
| 34 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/lift--42ed2e3f74b209ef14fa9d80.md) | 390 | `declaration-track:42ed2e3f74b209ef14fa9d80b4409f52699389b3f189d35fba734205f9e94001` |
| 35 | `theorem` | [lift.tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/lift-tprod--7581f40b2b451f9006753e42.md) | 410 | `result-track:7581f40b2b451f9006753e428684b117bb386fc02c09b83b593ba636fc317b99` |
| 36 | `theorem` | [lift.unique'](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/lift-unique--4515971a50dc893d2211e7e9.md) | 414 | `result-track:4515971a50dc893d2211e7e94c23e62afd30a1d85d94516d230c9873eb32ebcf` |
| 37 | `theorem` | [lift.unique](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/lift-unique--82b8c7b9df2a0e0a120caa37.md) | 419 | `result-track:82b8c7b9df2a0e0a120caa37e75e41dc37781f0049b596e281a146f1671c0814` |
| 38 | `theorem` | [lift_symm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/lift-symm--6c1b69dcc1f81d8a96d08da3.md) | 425 | `result-track:6c1b69dcc1f81d8a96d08da3b21a4cbe18a0700decb9bd4f53869a5380f1ee20` |
| 39 | `theorem` | [lift_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/lift-tprod--f436634f7cb7bba9382bed4a.md) | 430 | `result-track:f436634f7cb7bba9382bed4abefbb2971a24bb5701576dd6102a54475093fb8d` |
| 40 | `def` | [reindex](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/reindex--a598bd6cac0655f584d76f6d.md) | 442 | `declaration-track:a598bd6cac0655f584d76f6d551585a173913662f37641821558225fa8b71a3c` |
| 41 | `theorem` | [reindex_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/reindex-tprod--717686c5393489555afea690.md) | 464 | `result-track:717686c5393489555afea69093c1044ec7917c1658b83bdc1a9d18eba98828a6` |
| 42 | `theorem` | [reindex_comp_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/reindex-comp-tprod--c810c052baab55b97975da81.md) | 471 | `result-track:c810c052baab55b97975da81c4cb4799da6e473b8acc7c4c018b4dca93340b19` |
| 43 | `theorem` | [lift_comp_reindex](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/lift-comp-reindex--32ce986ad9a549c91a528c79.md) | 478 | `result-track:32ce986ad9a549c91a528c7968d5bf15e89887a9e09b3b9a993ee3ca77aae338` |
| 44 | `theorem` | [lift_reindex](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/lift-reindex--32dcda0f8e727a5bdc257ed3.md) | 485 | `result-track:32dcda0f8e727a5bdc257ed3ec45f44ba1772340568894812192267f89a6031f` |
| 45 | `theorem` | [reindex_trans](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/reindex-trans--495b23aa411a1ac758d5248e.md) | 491 | `result-track:495b23aa411a1ac758d5248e3fc73639715ed685cc55680590616a350f2cda72` |
| 46 | `theorem` | [reindex_reindex](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/reindex-reindex--81ed10d9fbf4591acd5121ba.md) | 502 | `result-track:81ed10d9fbf4591acd5121ba29f8077acec164d5dfb3deb53df34e48702cd12d` |
| 47 | `theorem` | [reindex_symm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/reindex-symm--22a6bae9990930b09d54530a.md) | 508 | `result-track:22a6bae9990930b09d54530ab959d4c6257fb7ff93b894387d034b602e1e4a07` |
| 48 | `theorem` | [reindex_refl](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/reindex-refl--083d06ab6565699a4d5ae372.md) | 512 | `result-track:083d06ab6565699a4d5ae372ca617c9748fbcdeca2dceb26da67f9620dd60e12` |
| 49 | `def` | [isEmptyEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/isemptyequiv--0cd2711e0ab4144c642d2b08.md) | 523 | `declaration-track:0cd2711e0ab4144c642d2b08fb5fd4258fc27c1f436cd84dbeb455c7f8c19854` |
| 50 | `theorem` | [isEmptyEquiv_apply_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/isemptyequiv-apply-tprod--d04a84378419c9f67da89fdd.md) | 544 | `result-track:d04a84378419c9f67da89fddcc9af4e857b5599e2a470cbcb1c1af50dfe40175` |
| 51 | `def` | [subsingletonEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/subsingletonequiv--e805b3aaeaeef8536b511910.md) | 554 | `declaration-track:e805b3aaeaeef8536b511910c6bb5f7d7531e598061478d4946460393af747f3` |
| 52 | `theorem` | [subsingletonEquiv_apply_tprod](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/subsingletonequiv-apply-tprod--62e1e86f5b89c7c401b7d180.md) | 578 | `result-track:62e1e86f5b89c7c401b7d180d0efdf38a015c6edb22061a1e47b677a0c1de335` |
| 53 | `def` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/tmul--c3709984454ae587089251e1.md) | 586 | `declaration-track:c3709984454ae587089251e11d6ba1be6edf14a3f0db0e392dde2e4290709bbc` |
| 54 | `theorem` | [tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/tmul-apply--5d2850e51f67bdf72e9f4edd.md) | 595 | `result-track:5d2850e51f67bdf72e9f4eddc3c69ebb64afd573162a4e30c164338f84656614` |
| 55 | `def` | [tmulSymm](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/tmulsymm--f57346260de78530a7b11f4e.md) | 601 | `declaration-track:f57346260de78530a7b11f4edeb0dc258576aa1400e6503899cd8d1430599fd3` |
| 56 | `theorem` | [tmulSymm_apply](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/tmulsymm-apply--61f33659af22b38acd76351e.md) | 605 | `result-track:61f33659af22b38acd76351ebb3079a6f8fb9aece153459c008ea402a133e167` |
| 57 | `def` | [tmulEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/tmulequiv--41dc8ea51a1a6e2fa6212fc4.md) | 618 | `declaration-track:41dc8ea51a1a6e2fa6212fc434b537a5926c964522b40fcf77f312e27f1993e0` |
| 58 | `theorem` | [tmulEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/tmulequiv-apply--591cb116703f0bfe206ebc6f.md) | 634 | `result-track:591cb116703f0bfe206ebc6fe0c97c52243be204328d2fac06af74b006d54a52` |
| 59 | `theorem` | [tmulEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/tmulequiv-symm-apply--b4b2a6520332677e0a2e91b9.md) | 641 | `result-track:b4b2a6520332677e0a2e91b990ecadd94491600cb32f6817859b2218537078ed` |
| 60 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PiTensorProduct/Variant69befe3b81c3d52b593fc5834f224fbacb806208998327adac9d36b9dffeb78f.lean/declarations/instance--ea0d57026c4e4b21a1fb5ecc.md) | 669 | `declaration-track:ea0d57026c4e4b21a1fb5ecc71d1fa874aca5658184c13853c703cfee3c10d3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
