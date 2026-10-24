# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e738c47ba413379c707f0eb7aad86e866af8e43",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e738c47ba413379c707f0eb7aad86e866af8e43`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Instances` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Torsion` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Piecewise` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.range_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/set-range-one--5fe3621616f0ed3b21b11964.md) | 39 | `result-track:5fe3621616f0ed3b21b119649bf4204493749b4f2274714b7ae66a4eac977d31` |
| 2 | `theorem` | [Set.preimage_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/set-preimage-one--01cde306e30096de9cf5d22b.md) | 43 | `result-track:01cde306e30096de9cf5d22b3c84e5578ea39b17b7405ecc2fede798f5132c27` |
| 3 | `instance` | [instIsMulTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/instismultorsionfree--43289109324970751db450da.md) | 49 | `declaration-track:43289109324970751db450da11b71ff28df4178c0da56f65499702accee40f8d` |
| 4 | `lemma` | [one_mono](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/one-mono--fb54cbce2228f652dd570424.md) | 55 | `result-track:fb54cbce2228f652dd570424b267fdb87f2ff4cbb56a2952b2444434eef3591b` |
| 5 | `lemma` | [one_anti](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/one-anti--c87b15194842aa6e2a6eeb7b.md) | 56 | `result-track:c87b15194842aa6e2a6eeb7b8a5f9593a13b638d25cfd39242ac006a384eada7` |
| 6 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/coe-mul--13397309dc307dfd79d67dcb.md) | 63 | `result-track:13397309dc307dfd79d67dcb07423df411ad4b1ad809dd20752c20390093ce45` |
| 7 | `def` | [Pi.mulHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulhom--394c247ce61fb14933e24da0.md) | 75 | `declaration-track:394c247ce61fb14933e24da03d344636cc6de33f3721cf96549d5baa8a41f0d8` |
| 8 | `theorem` | [Pi.mulHom_injective](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulhom-injective--b29188b322a8a62a95d17849.md) | 80 | `result-track:b29188b322a8a62a95d178499bd36b2395c0b6f3522ad932f082410313362b75` |
| 9 | `def` | [Pi.monoidHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-monoidhom--20e96257750aeabe31e33302.md) | 90 | `declaration-track:20e96257750aeabe31e33302300c52ed9143a59307ce2587696144b24f6c37d6` |
| 10 | `theorem` | [Pi.monoidHom_injective](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-monoidhom-injective--1fb66c35c94b00b5202eb30d.md) | 97 | `result-track:1fb66c35c94b00b5202eb30d584033487be4a06f36b9326743639da079780fa2` |
| 11 | `def` | [Pi.evalMulHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-evalmulhom--3a97025e89e7a623ff3afecb.md) | 111 | `declaration-track:3a97025e89e7a623ff3afecb5afad9782335333accdd0c401b360e0381e1574d` |
| 12 | `def` | [Pi.constMulHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-constmulhom--d518c26b111c000fccbb35ff.md) | 117 | `declaration-track:d518c26b111c000fccbb35ffc631633648031560d5e225248675d4621c696f43` |
| 13 | `def` | [MulHom.coeFn](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/mulhom-coefn--5398de13a0116658006e13a9.md) | 128 | `declaration-track:5398de13a0116658006e13a96437d6a97995604164ccc634bc84edbb4d6f6d81` |
| 14 | `def` | [MulHom.compLeft](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/mulhom-compleft--96905b129d7871a3d28cb194.md) | 137 | `declaration-track:96905b129d7871a3d28cb194a111ba8d966893bb61f96a61c1af2aad5a0cdd8c` |
| 15 | `def` | [Pi.evalMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-evalmonoidhom--b9f654a4f177e4d8e221f2f8.md) | 155 | `declaration-track:b9f654a4f177e4d8e221f2f86e3ad146c87dcb8edef256a41aeecee1bc83c622` |
| 16 | `def` | [Pi.constMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-constmonoidhom--f9c388d7a5174ca6dad296cc.md) | 162 | `declaration-track:f9c388d7a5174ca6dad296cc9711e264e50b8e95b99f3ccc6fb5e4bbe271320b` |
| 17 | `def` | [MonoidHom.coeFn](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/monoidhom-coefn--4815248ab1020befdad3b2a1.md) | 174 | `declaration-track:4815248ab1020befdad3b2a13ed7202f2aa693e7789ebfbcae1b711089c3fa78` |
| 18 | `def` | [MonoidHom.compLeft](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/monoidhom-compleft--25c37027c000f72df3cb91db.md) | 184 | `declaration-track:25c37027c000f72df3cb91db41a3cdf9c8f6fb0685f0739ee67382d5cce876bd` |
| 19 | `def` | [OneHom.mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/onehom-mulsingle--0fb9acc64e1b0d85cd01b93f.md) | 209 | `declaration-track:0fb9acc64e1b0d85cd01b93fe576babc76af6b1a1df9424c2558ba86e52ebe5e` |
| 20 | `theorem` | [OneHom.mulSingle_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/onehom-mulsingle-apply--f754ee2533d61be275156f08.md) | 214 | `result-track:f754ee2533d61be275156f0881b63ab09fa4184b17336c79f89bebb98587f0d3` |
| 21 | `def` | [MonoidHom.mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/monoidhom-mulsingle--98b22204ed41970b0d2752bc.md) | 226 | `declaration-track:98b22204ed41970b0d2752bc8e4386d2aeb3c996a2d5de9aeb0c56bdf45da73a` |
| 22 | `theorem` | [MonoidHom.mulSingle_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/monoidhom-mulsingle-apply--29b1ba78d88aa130477bdf7c.md) | 230 | `result-track:29b1ba78d88aa130477bdf7c9e2e810a1640929d5709ecc65de8f9fadedd12a5` |
| 23 | `theorem` | [Pi.mulSingle_sup](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulsingle-sup--c06363abd787aca7ca68aa77.md) | 237 | `result-track:c06363abd787aca7ca68aa77d10b685407679907a6ef9a9d0bc94ea2f955cbee` |
| 24 | `theorem` | [Pi.mulSingle_inf](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulsingle-inf--8ba69655073158577bf2bb05.md) | 242 | `result-track:8ba69655073158577bf2bb052a88fb01ceb42edaf37bb1f558a58188cb5bcb75` |
| 25 | `theorem` | [Pi.mulSingle_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulsingle-mul--1fd4634ca60211ed0e3cf2bc.md) | 247 | `result-track:1fd4634ca60211ed0e3cf2bc0a44366013d89584bfc200d29de5c28781ef3fcd` |
| 26 | `theorem` | [Pi.mulSingle_inv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulsingle-inv--ec73265b4d41cdbad5084c1c.md) | 252 | `result-track:ec73265b4d41cdbad5084c1c103f686a322b1731fa0d3e99baa147fd016c35af` |
| 27 | `theorem` | [Pi.mulSingle_div](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulsingle-div--4c2107e6b92d4d911a0fe96e.md) | 257 | `result-track:4c2107e6b92d4d911a0fe96e32fcfc3a59d36fe2e2f27e13a84e51c2c3c186a8` |
| 28 | `theorem` | [Pi.mulSingle_pow](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulsingle-pow--d51668e6e44e962e15a05f2a.md) | 262 | `result-track:d51668e6e44e962e15a05f2a06477f24e13ad846b184b79093cf0cf902e5f7d4` |
| 29 | `theorem` | [Pi.mulSingle_zpow](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulsingle-zpow--6df65797304d24deda7f1cfd.md) | 267 | `result-track:6df65797304d24deda7f1cfd1d9c3522b1e07267bcb009ea640204fb9ed9fb79` |
| 30 | `theorem` | [Pi.mulSingle_commute](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulsingle-commute--51a1e61e81c4a8c916d24f50.md) | 278 | `result-track:51a1e61e81c4a8c916d24f50a12b913ff9b333a4f9d31961de012f9a09da43a1` |
| 31 | `theorem` | [Pi.mulSingle_apply_commute](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulsingle-apply-commute--24866782d25f57054e3c82de.md) | 291 | `result-track:24866782d25f57054e3c82dea23253472c24e2694138f685b65a165751795dba` |
| 32 | `theorem` | [Pi.update_eq_div_mul_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-update-eq-div-mul-mulsingle--68c2d42d56cfb58ccea8183c.md) | 298 | `result-track:68c2d42d56cfb58ccea8183c887e92616fe5be51d15f84dd95b429ca31344911` |
| 33 | `theorem` | [Pi.mulSingle_mul_mulSingle_eq_mulSingle_mul_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-mulsingle-mul-mulsingle-eq-mulsingle-mul-mulsingle--c100b7b5c8c502784adcbfbb.md) | 306 | `result-track:c100b7b5c8c502784adcbfbb26c939e97f50136ddfdbcc6b780c16136fa746ba` |
| 34 | `theorem` | [SemiconjBy.pi](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/semiconjby-pi--e7dba962693f0d0e52cd8d4b.md) | 344 | `result-track:e7dba962693f0d0e52cd8d4b1a47fb5e00848c9909741d7edec95464a09454a2` |
| 35 | `theorem` | [Pi.semiconjBy_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-semiconjby-iff--c8182fb5c2d76fecf869a33a.md) | 349 | `result-track:c8182fb5c2d76fecf869a33a2bd324c8a169025b90ac10440ada736117198239` |
| 36 | `theorem` | [Commute.pi](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/commute-pi--3e2b258ca4063820dbd41730.md) | 353 | `result-track:3e2b258ca4063820dbd417305b634f92069c8b434715e716ba90a709d61388e9` |
| 37 | `theorem` | [Pi.commute_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/pi-commute-iff--33d5800cc248c87381f71377.md) | 356 | `result-track:33d5800cc248c87381f71377726b6f35c0e488a72c875c691ae67cb8177ffd0f` |
| 38 | `theorem` | [update_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/update-one--ce05790492d529657ccc521e.md) | 363 | `result-track:ce05790492d529657ccc521e244bf4603f182a3fdb15e6f78cd50c2f08118b9e` |
| 39 | `theorem` | [update_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/update-mul--6c8874c3b4a3bc02b1e4f6d2.md) | 367 | `result-track:6c8874c3b4a3bc02b1e4f6d2345de216b69972bba88cec75c9680cabb41445d1` |
| 40 | `theorem` | [update_inv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/update-inv--de3ea2567b4ca6c82f3cb867.md) | 372 | `result-track:de3ea2567b4ca6c82f3cb867204485fab20898a7177b2b2d80c947d71473a84d` |
| 41 | `theorem` | [update_div](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/update-div--2e9a50462c376d31e4159605.md) | 377 | `result-track:2e9a50462c376d31e41596053e7c800950a1e2219cc25a45d2e1b9739b16df32` |
| 42 | `theorem` | [const_eq_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/const-eq-one--af5c2b1e0babd95354551ce9.md) | 384 | `result-track:af5c2b1e0babd95354551ce9fe202ff8fa126362503c1042d8613de02e7ac61d` |
| 43 | `theorem` | [const_ne_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/const-ne-one--a9440012db5c3710d15f8dbb.md) | 388 | `result-track:a9440012db5c3710d15f8dbb81ae6bcd2f704e384b02479065bf32292a66b580` |
| 44 | `theorem` | [Set.piecewise_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/set-piecewise-mul--8043f5744236892a36645254.md) | 396 | `result-track:8043f5744236892a36645254590ea45e8f5cc7173393e9271a78e81e35d9e481` |
| 45 | `theorem` | [Set.piecewise_inv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/set-piecewise-inv--1ce8cfb5fad0d0ad3547b52e.md) | 402 | `result-track:1ce8cfb5fad0d0ad3547b52ecb6abb5347916e02de37ec02a8976574552aaab3` |
| 46 | `theorem` | [Set.piecewise_div](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/set-piecewise-div--c766edb32943a274fd64b162.md) | 407 | `result-track:c766edb32943a274fd64b162e8a4235dc353e4361fa89847d19e7f34b9479692` |
| 47 | `def` | [Function.ExtendByOne.hom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/function-extendbyone-hom--de9bcac0a9cd01185a733e09.md) | 420 | `declaration-track:de9bcac0a9cd01185a733e099b7e5d3389d09c2e04c6ea5117915ec253ec4757` |
| 48 | `theorem` | [mulSingle_mono](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/mulsingle-mono--7c8bf2bd13ad4cff7185ffb0.md) | 433 | `result-track:7c8bf2bd13ad4cff7185ffb02f5bcb79fb8ae273bb47ec0868bdc9164b34508c` |
| 49 | `theorem` | [mulSingle_strictMono](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/mulsingle-strictmono--fa18300634d562c5d1c3d589.md) | 437 | `result-track:fa18300634d562c5d1c3d589fe37aec7d5e3cb5ea2376fb5ffecf6f00da2973d` |
| 50 | `lemma` | [mulSingle_comp_equiv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/mulsingle-comp-equiv--12fa5034ce4e23d24cb1721f.md) | 441 | `result-track:12fa5034ce4e23d24cb1721f64f88c364102dce510c951507d8db4d8281a47c0` |
| 51 | `theorem` | [curry_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/curry-one--6e0710341eb48b0cc53c9c53.md) | 453 | `result-track:6e0710341eb48b0cc53c9c53eb840abec8acbc53944983a81d55f711107a40a8` |
| 52 | `theorem` | [uncurry_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/uncurry-one--16dbed72bed6d2d5bcb24a86.md) | 457 | `result-track:16dbed72bed6d2d5bcb24a866ef1fe2a41df7358ed0614bec025a246ad644f22` |
| 53 | `theorem` | [curry_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/curry-mul--b7ff87924a6bb8938974b60d.md) | 461 | `result-track:b7ff87924a6bb8938974b60decd6ef4425acc0f9a15b39261c7c0c4695e31c01` |
| 54 | `theorem` | [uncurry_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/uncurry-mul--67b36b4968a5eca789f66079.md) | 466 | `result-track:67b36b4968a5eca789f66079511926b5e1857c87dffb7248c749aec686a82e8e` |
| 55 | `theorem` | [curry_inv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/curry-inv--7411317f0f83c385a30c2cae.md) | 471 | `result-track:7411317f0f83c385a30c2cae3b95ed31a25a236253af931a13379a8178874d81` |
| 56 | `theorem` | [uncurry_inv](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/uncurry-inv--0970ada3061a4e1841d66da3.md) | 476 | `result-track:0970ada3061a4e1841d66da37ef552242aee9c6fa95fe2677ad7b2d7025efa7e` |
| 57 | `theorem` | [curry_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/curry-mulsingle--ae8a8f998f2c79d5c4294ad6.md) | 481 | `result-track:ae8a8f998f2c79d5c4294ad6bcb22c6aa95d0e915c8a0c645bb3fe1e593bed8f` |
| 58 | `theorem` | [uncurry_mulSingle_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant4686193e138ca94726db66d29c9003c4e32d049bdb08817a1817eb98df36fe1e.lean/declarations/uncurry-mulsingle-mulsingle--d2390d2206543707556e27e3.md) | 487 | `result-track:d2390d2206543707556e27e3a46fecea5494ffe7e618ecbfa28140762c6d26d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
