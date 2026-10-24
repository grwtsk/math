# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b66efedc8feeaa53bc16902e3237decda19d440f",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b66efedc8feeaa53bc16902e3237decda19d440f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Derivation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/derivation--2ed2f948fea47fd728dc8f8a.md) | 43 | `declaration-track:2ed2f948fea47fd728dc8f8a378db24080f922c211477591ab8d23eedf94f621` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--fa1f4fd591ace5aaf18ca23e.md) | 64 | `declaration-track:fa1f4fd591ace5aaf18ca23e65e59694cd273330319113e3587cdeb1264d361d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--fc8be5ea484de8d27839d70f.md) | 72 | `declaration-track:fc8be5ea484de8d27839d70f9de171ffa0e3efaa1f54e6082e557ff1d70f0c2f` |
| 4 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/tofun-eq-coe--d5f951f303ac9de301ae105b.md) | 76 | `result-track:d5f951f303ac9de301ae105b4dc36e5d6c0d100c61ae89df917cc189fdf0aaeb` |
| 5 | `instance` | [hasCoeToLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/hascoetolinearmap--ec08e77b056b624ea3dc11b4.md) | 82 | `declaration-track:ec08e77b056b624ea3dc11b4c8ecdb8d1b3056db5a8efe54607174bc387619ff` |
| 6 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/mk-coe--f05662c99911c5f7041a4283.md) | 89 | `result-track:f05662c99911c5f7041a428358d0c54d1abdcb97dddec8cc72cd9d2d6c16c69c` |
| 7 | `theorem` | [coeFn_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coefn-coe--b421965ecfd7a386dce9231b.md) | 94 | `result-track:b421965ecfd7a386dce9231b8560aa27f7b8c89e610bad15ebea80f92b30fa4b` |
| 8 | `theorem` | [coe_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-injective--c10f1c32c382031d99219b2f.md) | 98 | `result-track:c10f1c32c382031d99219b2f22a583d75d426e6c3dc15f6065068ed965d84bff` |
| 9 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/ext--558e80ddecd8f1872ef32f65.md) | 103 | `result-track:558e80ddecd8f1872ef32f657de169d23ce623bc06996ea6a76e636c05e97a13` |
| 10 | `theorem` | [congr_fun](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/congr-fun--ec22ce22775a36ce97f99efa.md) | 107 | `result-track:ec22ce22775a36ce97f99efa7ac08748182eaed3b86c0e63017a3ccae331555d` |
| 11 | `theorem` | [map_add](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/map-add--f8afc04751055678bd17b668.md) | 111 | `result-track:f8afc04751055678bd17b6684f3a817b0c82a60d514500fa40129ba23935714d` |
| 12 | `theorem` | [map_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/map-zero--de5c45467155c521893a2b63.md) | 115 | `result-track:de5c45467155c521893a2b6354a9c3922e7b41469fc7bdb6f7711ea28df195bf` |
| 13 | `theorem` | [map_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/map-smul--6e9669cd7c14668d3321328e.md) | 120 | `result-track:6e9669cd7c14668d3321328e762a756582c5b3523b7bf11dcc29da3eb0a2ed85` |
| 14 | `theorem` | [leibniz](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/leibniz--e84e8686a1718c25254d801a.md) | 125 | `result-track:e84e8686a1718c25254d801a16dbaa620c27886f08c1adf4a513ac969fc22edc` |
| 15 | `theorem` | [map_sum](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/map-sum--c9ff79ece03ee621ed12bc39.md) | 129 | `result-track:c9ff79ece03ee621ed12bc3975f885b28da769580fa4e8ae998d2cdc4b2b8084` |
| 16 | `theorem` | [map_smul_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/map-smul-of-tower--6a1ecfeb309e7dc44af94131.md) | 134 | `result-track:6a1ecfeb309e7dc44af941319780cf08ae0275d48c2ed7a45c4c8c21d60b1305` |
| 17 | `theorem` | [map_one_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/map-one-eq-zero--9c9f26f6ebfd893c07e899e8.md) | 140 | `result-track:9c9f26f6ebfd893c07e899e8244711c2163a1fa394e544169c3fe4518c931856` |
| 18 | `theorem` | [map_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/map-algebramap--0ce2469fe44b9fea5f3f1cab.md) | 145 | `result-track:0ce2469fe44b9fea5f3f1caba38849320c5e6d2be05907cae05acdaa67f76013` |
| 19 | `theorem` | [map_coe_nat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/map-coe-nat--7c1dc9176a1ef31532be5d12.md) | 151 | `result-track:7c1dc9176a1ef31532be5d126f60abfdaafe4b02fc89cbc6537869594af45774` |
| 20 | `theorem` | [leibniz_pow](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/leibniz-pow--f15cfb5df5086503766820ff.md) | 156 | `result-track:f15cfb5df5086503766820ff092a67167398a48003cba166cf52a0f2285a2f68` |
| 21 | `theorem` | [eqOn_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/eqon-adjoin--a6314b7b106a3c675acf6eef.md) | 166 | `result-track:a6314b7b106a3c675acf6eefd4f556d7bf830c3ac76bfe9cf643ac6bc5472b2c` |
| 22 | `theorem` | [ext_of_adjoin_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/ext-of-adjoin-eq-top--18a6fbd11c8972b6f8b45999.md) | 173 | `result-track:18a6fbd11c8972b6f8b45999be16158ed85b8004d646d2545d36cbd880c06887` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--76c165d754792836d293379d.md) | 178 | `declaration-track:76c165d754792836d293379d44fbc50933961c535de496bba424ef56fed8325a` |
| 24 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-zero--198a2963810603711302cd88.md) | 184 | `result-track:198a2963810603711302cd881162b61e465da9134660691dc9698fdd50c8e170` |
| 25 | `theorem` | [coe_zero_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-zero-linearmap--ebca222371e8090f5db3b7c0.md) | 189 | `result-track:ebca222371e8090f5db3b7c080cf5f933af47abcabe58e8e4bdb71973d5a0992` |
| 26 | `theorem` | [zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/zero-apply--cc625b3b7b336a1194e361f5.md) | 193 | `result-track:cc625b3b7b336a1194e361f55107545736af0946f2d0bf75dd22afc8910e1a13` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--e1b69bd0d1c5d7be392152bb.md) | 197 | `declaration-track:e1b69bd0d1c5d7be392152bb4311fbc28b1324d45455b41c8d2dea5adec172ea` |
| 28 | `theorem` | [coe_add](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-add--83b2ca33e2fbf37f4fc27130.md) | 205 | `result-track:83b2ca33e2fbf37f4fc27130f63738b4d387efe22d2a7f1ff6859eee42fac94b` |
| 29 | `theorem` | [coe_add_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-add-linearmap--61674c0e12c650e291fff67f.md) | 210 | `result-track:61674c0e12c650e291fff67f127f961284b350e3bb6d7e58675666fe86938e65` |
| 30 | `theorem` | [add_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/add-apply--750506dd20b90c314b7a5f4c.md) | 214 | `result-track:750506dd20b90c314b7a5f4c5fc2b59f09040ff1ff6fca23ff1cb03726dc2fbd` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--0f055b1c4876948fa9ca6eff.md) | 218 | `declaration-track:0f055b1c4876948fa9ca6effb66cad89e80d3474dfcf9721fce25658993bb590` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--af30d9f9579a6fb28410cdd0.md) | 229 | `declaration-track:af30d9f9579a6fb28410cdd02dd2a139458c58ec860b361de337ebcc3149731d` |
| 33 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-smul--4c1371982e64b35afd918961.md) | 237 | `result-track:4c1371982e64b35afd918961043497ff3fe8d04e0e1f917181def17c8909fbc2` |
| 34 | `theorem` | [coe_smul_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-smul-linearmap--98ce09934c08ffb63dc25cef.md) | 242 | `result-track:98ce09934c08ffb63dc25cef36adea96876c711ecd7c4b7f511a0cb60292f2df` |
| 35 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/smul-apply--ac8271a78cc163d312a333e9.md) | 246 | `result-track:ac8271a78cc163d312a333e973e0bbc1890a5c5d80bf8af9218f35bd020fbaa7` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--3007327cf8500fb7580cec02.md) | 250 | `declaration-track:3007327cf8500fb7580cec0232113eeb7c4d0343ee63eb970ab1efcfeb6f8ba4` |
| 37 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coefnaddmonoidhom--52211b31c3bc0ea0d9df04df.md) | 254 | `declaration-track:52211b31c3bc0ea0d9df04df3acaa14ba49efd38fdf9c343eaff1bc3be3406d3` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--b30ed79e2da5343ec6c74b93.md) | 260 | `declaration-track:b30ed79e2da5343ec6c74b935bfa84b759f610eec81a74b103685188bbe1e86f` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--55a59f4af7ba747216860c08.md) | 263 | `declaration-track:55a59f4af7ba747216860c087f0d622f73a83a89954170631bec1ad4a212d490` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--def199545cc80ec66dc64ee6.md) | 266 | `declaration-track:def199545cc80ec66dc64ee637f3a411c3835537b509ceea7ab54ca1f71cd453` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--864b4da01969d45e5d76b85e.md) | 269 | `declaration-track:864b4da01969d45e5d76b85ef1a118dca191081fdcf8d813f2d0a2122fb20ef0` |
| 42 | `instance` | [instModule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instmodule--dfd74bd60fecb24c814d8cb4.md) | 274 | `declaration-track:dfd74bd60fecb24c814d8cb49e88997110b6f551d738f3a9cf5dedc96aa5be20` |
| 43 | `def` | [_root_.LinearMap.compDer](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/root-linearmap-compder--92621bdf8741490597ed7a5f.md) | 287 | `declaration-track:92621bdf8741490597ed7a5f689e2b53c9b35673cd33b862a33ea904e9b20622` |
| 44 | `theorem` | [coe_to_linearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-to-linearmap-comp--5427ce06c13ebdb703cb068a.md) | 299 | `result-track:5427ce06c13ebdb703cb068a26a4005682b3dec94396e89e2e416772a128e412` |
| 45 | `theorem` | [coe_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-comp--c8ad26516b25dc5b676f667a.md) | 304 | `result-track:c8ad26516b25dc5b676f667af07b2f66773a51055e9019c1c173e15471977d34` |
| 46 | `def` | [llcomp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/llcomp--23e7fe986872f40d869ee7de.md) | 310 | `declaration-track:23e7fe986872f40d869ee7debfd00c8ce275cb790578041debcb24413459ae4b` |
| 47 | `def` | [_root_.LinearEquiv.compDer](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/root-linearequiv-compder--79c9669721d36ba4af43e5fd.md) | 317 | `declaration-track:79c9669721d36ba4af43e5fdd27768c7efb207aae56a520cc7522a0cb1b7a630` |
| 48 | `def` | [restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/restrictscalars--b8e5abf29e4ab3be048c7ecc.md) | 336 | `declaration-track:b8e5abf29e4ab3be048c7eccf4d6831385a0189281ac987623b04cec3113f4a6` |
| 49 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/mk--7dad96464c2dbef87916db61.md) | 353 | `declaration-track:7dad96464c2dbef87916db611a38aeeaa94832f93facdd69af0cd51dea1b8d5f` |
| 50 | `theorem` | [coe_mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-mk--c85602676fe2ff78251723c5.md) | 360 | `result-track:c85602676fe2ff78251723c5e2f348f1bf15a3918d9bae831ca8f517bcf986a9` |
| 51 | `theorem` | [coe_mk'_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-mk-linearmap--b8333e257ccfc8b59678454c.md) | 365 | `result-track:b8333e257ccfc8b59678454c6dcbef6a5dd85172001c6d4d957edd9b54333756` |
| 52 | `theorem` | [map_neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/map-neg--bb6d4bb248d8187551b344e4.md) | 383 | `result-track:bb6d4bb248d8187551b344e465d4711d0786a5fa67f0e99c25afccc1915eac30` |
| 53 | `theorem` | [map_sub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/map-sub--2bbca8a3aaf156fd95cb60bf.md) | 387 | `result-track:2bbca8a3aaf156fd95cb60bf123f95971ea2bf01f5bf2cb8ae2796e5ad2ee968` |
| 54 | `theorem` | [map_coe_int](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/map-coe-int--e08f637a24f5f9701789ca7c.md) | 392 | `result-track:e08f637a24f5f9701789ca7c37c1d19cd6ceb325b79e06a433743c75dadfefbc` |
| 55 | `theorem` | [leibniz_of_mul_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/leibniz-of-mul-eq-one--676395363b0bd98a7b679f06.md) | 396 | `result-track:676395363b0bd98a7b679f06bb9e821c0ba41e3fa5cf91a9fe2c77dcbd8b3406` |
| 56 | `theorem` | [leibniz_invOf](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/leibniz-invof--d67dd42e872cbdcbf08f722a.md) | 406 | `result-track:d67dd42e872cbdcbf08f722a7df691a77cce33a887a1a5ea049021a0ee0837a6` |
| 57 | `theorem` | [leibniz_inv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/leibniz-inv--6ccfaaca90d41c60e1c8f9cc.md) | 410 | `result-track:6ccfaaca90d41c60e1c8f9cc13fbf54f5aa173681811003652b9532af7ddc9b6` |
| 58 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--735e1baa7c7554646ab2a08b.md) | 417 | `declaration-track:735e1baa7c7554646ab2a08bf53cea3e499ec9acd65d1ade5194c362367ee28c` |
| 59 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-neg--4dad1ddcbb76143d90de65f2.md) | 423 | `result-track:4dad1ddcbb76143d90de65f2508059e1dee9ed1e3db8414d686de2212452165d` |
| 60 | `theorem` | [coe_neg_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-neg-linearmap--a31d056d049c3f8b5847c244.md) | 428 | `result-track:a31d056d049c3f8b5847c244eeb18425841c2547c404f2cbdcc1cb5ec690bbd8` |
| 61 | `theorem` | [neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/neg-apply--6cc3c88782d92910092480a2.md) | 432 | `result-track:6cc3c88782d92910092480a2e207e5f543491ce38ee3d788b0b054ddda78697d` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--957b58b6192dc97d1be90c91.md) | 436 | `declaration-track:957b58b6192dc97d1be90c91f4e9e34108ba7a7866a23c2c3c71c9ea4ed88f89` |
| 63 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-sub--953931e0efbb7707949efd52.md) | 442 | `result-track:953931e0efbb7707949efd524ac76750d62f23fac7fe8617d57fa39187f8e4c8` |
| 64 | `theorem` | [coe_sub_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/coe-sub-linearmap--06b54e7f786c0a9196488a25.md) | 447 | `result-track:06b54e7f786c0a9196488a252572947143a7aa3bbcf2c14ec73fe177381b2578` |
| 65 | `theorem` | [sub_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/sub-apply--499a414a99e4fd5cfac2a74d.md) | 451 | `result-track:499a414a99e4fd5cfac2a74ddaddbdabba1ce4c98110d6ef1ebb8d56644c7cfc` |
| 66 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant9e1fdf926e712333bae491e89586a5ed0d3be1aa1e65aafd8596cd3b418fb6de.lean/declarations/instance--ec8c48e4d6701c07fcfcefc5.md) | 455 | `declaration-track:ec8c48e4d6701c07fcfcefc58f0e0d075526662555a42df40c551f3bb7e63e1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
