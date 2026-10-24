# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f820dbadfdc2c9c6e78b829d9a6f870b52e3e51",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f820dbadfdc2c9c6e78b829d9a6f870b52e3e51`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Univariate.M` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QPF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/qpf--7ff55eedd51ab9785bd7b7a1.md) | 57 | `declaration-track:7ff55eedd51ab9785bd7b7a1504b1bfb010d48ad7255df9d7643e97d5af340e6` |
| 2 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/id-map--c32a88401d8eed407cc4021c.md) | 76 | `result-track:c32a88401d8eed407cc4021cfe26c66aae59381913dba5526f18adb67ccb61e5` |
| 3 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/comp-map--3667f85eab13d036b5231895.md) | 82 | `result-track:3667f85eab13d036b52318955360021f6ad66a17f70595454d2cd430dc926526` |
| 4 | `theorem` | [lawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/lawfulfunctor--53ad9bcffd15dc77a9e77aff.md) | 89 | `result-track:53ad9bcffd15dc77a9e77aff7d781cfdc3602e821a6eae6210a38578a4b6f990` |
| 5 | `theorem` | [liftp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/liftp-iff--29ac989861f00160fcc7b511.md) | 103 | `result-track:29ac989861f00160fcc7b511dd76768cd26ac1e3912d58d33ad73e39b38350d7` |
| 6 | `theorem` | [liftp_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/liftp-iff--2a15c5564e76c76e05a89375.md) | 118 | `result-track:2a15c5564e76c76e05a893757168b78f648364a644f356bdbd4ff040cd46bfba` |
| 7 | `theorem` | [liftr_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/liftr-iff--23f8ceab10cf229324f01a12.md) | 134 | `result-track:23f8ceab10cf229324f01a12d25b74fab0c6ba0b749253b6d34106270db038ba` |
| 8 | `def` | [recF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/recf--df3ec40101b9daee1188cb6e.md) | 163 | `declaration-track:df3ec40101b9daee1188cb6e2b0aff89491d02082c9644f83cb20dbf8e473401` |
| 9 | `theorem` | [recF_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/recf-eq--1f744ae331f8e44872fe819e.md) | 166 | `result-track:1f744ae331f8e44872fe819ec6e17b426b03b6a1fbeb85e33397f4e36333f85f` |
| 10 | `theorem` | [recF_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/recf-eq--4e9f7f1a17813c213ef9a73d.md) | 171 | `result-track:4e9f7f1a17813c213ef9a73d3cc26ed30cd9ae351ddf136c8d556f428dc983bf` |
| 11 | `inductive` | [Wequiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/wequiv--8b6c8c1fa307dd51264e2790.md) | 176 | `declaration-track:8b6c8c1fa307dd51264e2790dab5d411e54175bad0ac0ea94ffd03270f0a8485` |
| 12 | `theorem` | [recF_eq_of_Wequiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/recf-eq-of-wequiv--55b970f4070f7e0bfb8a4300.md) | 183 | `result-track:55b970f4070f7e0bfb8a4300ac50cf9664e0f25bbd3805f1928caec85726bd4f` |
| 13 | `theorem` | [Wequiv.abs'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/wequiv-abs--5119eec68a4a9063cd5a48cc.md) | 191 | `result-track:5119eec68a4a9063cd5a48cc1cc7028062b3bab449d9cedb9da04e883c9c7ac8` |
| 14 | `theorem` | [Wequiv.refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/wequiv-refl--398956238e14b3f4555ad571.md) | 197 | `result-track:398956238e14b3f4555ad5711c54e7e882a9c45109c4a0f9722bc489c121d884` |
| 15 | `theorem` | [Wequiv.symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/wequiv-symm--473adc80edce3c3b6d8a45bc.md) | 201 | `result-track:473adc80edce3c3b6d8a45bc2c6d78e81bd3f4d034627abfac57b2abc8799d8d` |
| 16 | `def` | [Wrepr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/wrepr--8e32c5f58676e6b9a387043a.md) | 209 | `declaration-track:8e32c5f58676e6b9a387043a8b4d622134d43ff69dcffe5f33f713e8ca56aab4` |
| 17 | `theorem` | [Wrepr_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/wrepr-equiv--24c16e58448cc6b35e982dc0.md) | 212 | `result-track:24c16e58448cc6b35e982dc0b4fb06e17ed337137fa7b5bd36821fc60849fe7f` |
| 18 | `def` | [Wsetoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/wsetoid--b6057fa0df4f52a93fe25360.md) | 223 | `declaration-track:b6057fa0df4f52a93fe25360b41c477b5b0416f24be1411c6959e7e2e140094a` |
| 19 | `def` | [Fix](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fix--9a6a3dfde20d7622c6a8241c.md) | 229 | `declaration-track:9a6a3dfde20d7622c6a8241ce5e540764498c1a22f3418921689b2e56810fa3f` |
| 20 | `def` | [Fix.rec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fix-rec--cf8595e34917ff99108f32c5.md) | 233 | `declaration-track:cf8595e34917ff99108f32c50e6d5a96aa1565bb777c61ef50e651aad8b91f74` |
| 21 | `def` | [fixToW](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fixtow--58edabfb9a435b04b95ed624.md) | 237 | `declaration-track:58edabfb9a435b04b95ed624fc2d8cf3d1f66559ef2f354e3fafcce91d7060dd` |
| 22 | `def` | [Fix.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fix-mk--6b354f528123ef094680ffa6.md) | 241 | `declaration-track:6b354f528123ef094680ffa68ca9b28e856c9aa4784e0c291beeca8a1b3cac72` |
| 23 | `def` | [Fix.dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fix-dest--c3838988eddffac8e819e458.md) | 245 | `declaration-track:c3838988eddffac8e819e458d758ffab06527f282ca8332edaae900bf556ea9e` |
| 24 | `theorem` | [Fix.rec_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fix-rec-eq--78527d2cd7f78d2a21740b65.md) | 248 | `result-track:78527d2cd7f78d2a21740b65bc7269b1b421c7b09f2e69bc998e5efd70bb8527` |
| 25 | `theorem` | [Fix.ind_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fix-ind-aux--5c3af7df324403f2fa75b047.md) | 263 | `result-track:5c3af7df324403f2fa75b04713d704a0b39cf68a6f55f8ed8b953c24f185d438` |
| 26 | `theorem` | [Fix.ind_rec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fix-ind-rec--2e26031bf3271e67222784cd.md) | 274 | `result-track:2e26031bf3271e67222784cd994547285d4973cc6e3d77dce9e8310ca49faf3e` |
| 27 | `theorem` | [Fix.rec_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fix-rec-unique--c050b6e6515d46693d460198.md) | 285 | `result-track:c050b6e6515d46693d4601985d14c5541185dca3080d45cc506f44f2a60ad8a2` |
| 28 | `theorem` | [Fix.mk_dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fix-mk-dest--cfaf1c21628450543f94610e.md) | 292 | `result-track:cfaf1c21628450543f94610ed0da516021f28cf8458c456ab5003cce91fe7c4b` |
| 29 | `theorem` | [Fix.dest_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fix-dest-mk--4fc2b4bf035270000d2f8d44.md) | 300 | `result-track:4fc2b4bf035270000d2f8d44d801cae9371ce1b549da7ede878c1607c35b6425` |
| 30 | `theorem` | [Fix.ind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/fix-ind--ea7b2ed42fc78895baae48b2.md) | 308 | `result-track:ea7b2ed42fc78895baae48b25ba230a43f37d400dcf33c8b385631bb4ddb84f8` |
| 31 | `def` | [corecF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/corecf--f7660f5aa5badd689e179ddb.md) | 330 | `declaration-track:f7660f5aa5badd689e179ddbd3f907167a226a4f252fc9f16e1c71172b3f866c` |
| 32 | `theorem` | [corecF_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/corecf-eq--4a145516923a7617c215c0ad.md) | 333 | `result-track:4a145516923a7617c215c0ad79e2667af56a09a37dbcd9db79d7c54380e9a45b` |
| 33 | `def` | [IsPrecongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/isprecongr--3e156d65bae48c853dbf876c.md) | 339 | `declaration-track:3e156d65bae48c853dbf876cc4544360efceab3cdc1880532d28746786a0e83b` |
| 34 | `def` | [Mcongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/mcongr--cf094c7f7d48dc0e9f3fa149.md) | 344 | `declaration-track:cf094c7f7d48dc0e9f3fa149b38f0eb49b918de0e152a41808603a2db7b104a8` |
| 35 | `def` | [Cofix](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/cofix--5810ffb449c6aaebf6455190.md) | 347 | `declaration-track:5810ffb449c6aaebf64551902c5408d8cf704ce6a7738404eb1a0704202ccdd9` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/instance--504df845ed14a9a5dda13504.md) | 350 | `declaration-track:504df845ed14a9a5dda13504c844c2c4dd56f4395dfa75e14bd7703b323189c9` |
| 37 | `def` | [Cofix.corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/cofix-corec--e6f2675932b55282729b50db.md) | 354 | `declaration-track:e6f2675932b55282729b50db613adbfa4cbab20af99b1b144a7b75d8ecbecc05` |
| 38 | `def` | [Cofix.dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/cofix-dest--38d0bf28ad10292d374353f9.md) | 358 | `declaration-track:38d0bf28ad10292d374353f99e6a5e8887fbcb916180992d46872feed7e31ec4` |
| 39 | `theorem` | [Cofix.dest_corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/cofix-dest-corec--727cc6439bda640ed1cf3f78.md) | 371 | `result-track:727cc6439bda640ed1cf3f78b04bad82fb4d1aa191cdc1b246ff1118bab0a4b5` |
| 40 | `theorem` | [Cofix.bisim_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/cofix-bisim-aux--b3eba154b9a76ef073f3c8c4.md) | 379 | `result-track:b3eba154b9a76ef073f3c8c4940462a7cf839b7821378baf0f10bb21f96922d4` |
| 41 | `theorem` | [Cofix.bisim_rel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/cofix-bisim-rel--ff321724c327c25de5271b79.md) | 407 | `result-track:ff321724c327c25de5271b797af6c6d73e32403bea3ad9aa982c2455d29c816f` |
| 42 | `theorem` | [Cofix.bisim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/cofix-bisim--0e59719b0148f17ab7252c58.md) | 426 | `result-track:0e59719b0148f17ab7252c582693c27159f90e9961312e38f39eff3b817c0764` |
| 43 | `theorem` | [Cofix.bisim'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/cofix-bisim--63f90ee846ac5d1266df347c.md) | 436 | `result-track:63f90ee846ac5d1266df347c92db90dea4330a801a65cafa058b5af03b1972bc` |
| 44 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/comp--f65c71fe6a3927b81788e295.md) | 459 | `declaration-track:f65c71fe6a3927b81788e2957c1d4a6470b981aa26affb7de8e040a6949372ba` |
| 45 | `def` | [quotientQPF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/quotientqpf--b1b29552922977d3ace54d60.md) | 518 | `declaration-track:b1b29552922977d3ace54d60ce9e2d139001d87f43e31e52270490562a5263a9` |
| 46 | `theorem` | [mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/mem-supp--a3772562b6ac4fb186e01fbd.md) | 539 | `result-track:a3772562b6ac4fb186e01fbd003276c7392b730654fd0d2c1e506e69acc09de4` |
| 47 | `theorem` | [supp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/supp-eq--1ac008174ecbcbca924ededd.md) | 552 | `result-track:1ac008174ecbcbca924ededd3dacbc0ec84bbdf6ea7eae74543d091bf645144f` |
| 48 | `theorem` | [has_good_supp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/has-good-supp-iff--40eeb48fc941debfe11e89db.md) | 557 | `result-track:40eeb48fc941debfe11e89db10960ac891f146cdc80d37c68265f7556e4f549e` |
| 49 | `def` | [IsUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/isuniform--a5733982424b7e476b1c9680.md) | 584 | `declaration-track:a5733982424b7e476b1c9680681e52e69bfcfdeff18799e31d95b4b50e722e86` |
| 50 | `def` | [LiftpPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/liftppreservation--282943bb33a4ebbc080b25e9.md) | 589 | `declaration-track:282943bb33a4ebbc080b25e9244e9f002b80779f2f6a57434ff97362047d1312` |
| 51 | `def` | [SuppPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/supppreservation--145a57383cbbc61e13dde92d.md) | 593 | `declaration-track:145a57383cbbc61e13dde92d078f663ef5d62f5868721bb9a6779234f75eeaac` |
| 52 | `theorem` | [supp_eq_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/supp-eq-of-isuniform--28bc70d020aa2211c690b163.md) | 596 | `result-track:28bc70d020aa2211c690b1633b72077d6471c0540fea82212b79570111f16aef` |
| 53 | `theorem` | [liftp_iff_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/liftp-iff-of-isuniform--1638f3a9f14d94351e7d6bec.md) | 604 | `result-track:1638f3a9f14d94351e7d6becddef917e2d265ddd16adbdf0da2ae55641d4c2e9` |
| 54 | `theorem` | [supp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/supp-map--7e3f46d1871e271eaf8eaf92.md) | 618 | `result-track:7e3f46d1871e271eaf8eaf92d4d62e5adf80b2671c34a532999709fb54a96020` |
| 55 | `theorem` | [suppPreservation_iff_uniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/supppreservation-iff-uniform--3679f116594ea4cf7a5d6a04.md) | 623 | `result-track:3679f116594ea4cf7a5d6a043e64e19ed3ae02c87794f1f0df473451a23f9884` |
| 56 | `theorem` | [suppPreservation_iff_liftpPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/supppreservation-iff-liftppreservation--707c97114aa09a5ec04c5ace.md) | 630 | `result-track:707c97114aa09a5ec04c5acedcdf6846128f912323af32dba7cda960f648f4f0` |
| 57 | `theorem` | [liftpPreservation_iff_uniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean/declarations/liftppreservation-iff-uniform--59bcbf6bd02da0c1e59e0df9.md) | 643 | `result-track:59bcbf6bd02da0c1e59e0df97e5c52829c8aa3e4a4b703d87e22f41e4ec55f61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
