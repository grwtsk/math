# Verification target: GRWTSK.Algebra.FreeAlgebra.Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63e0915a392dbdadd08df816094e9d114c84700d",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/index.md) · [Full source](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63e0915a392dbdadd08df816094e9d114c84700d`.

Source path: `GRWTSK/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Free` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Pre](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/pre--43be467a793c634ed19bdaac.md) | 61 | `declaration-track:43be467a793c634ed19bdaac90cf7d77b4d6e7b2b23d5dd3ec74fc82d5baec7b` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instance--25fe8e8af3d9699f6aa7e8e7.md) | 70 | `declaration-track:25fe8e8af3d9699f6aa7e8e72659ecd44d051bfd20e41b04ac6b5ab2427eb53d` |
| 3 | `def` | [hasCoeGenerator](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/hascoegenerator--1759608f864b0204d4047731.md) | 74 | `declaration-track:1759608f864b0204d4047731d7aa6b0c49bec601ac0f0080f6803ad919c9706f` |
| 4 | `def` | [hasCoeSemiring](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/hascoesemiring--746240cee9790a3b13d119ec.md) | 78 | `declaration-track:746240cee9790a3b13d119ec5f2ca3b97b374e2a00d12ddd2bdeedc55e56ea2a` |
| 5 | `def` | [hasMul](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/hasmul--c9d611797e6060d26b6551dd.md) | 82 | `declaration-track:c9d611797e6060d26b6551dde943889fa725efbb7ab800b53ce5f168ad8a61e8` |
| 6 | `def` | [hasAdd](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/hasadd--906648570b643f120160e8f7.md) | 86 | `declaration-track:906648570b643f120160e8f77043688946205390e367a8673264a183d7aab3d2` |
| 7 | `def` | [hasZero](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/haszero--d12148b2faf48a3f467b9fec.md) | 90 | `declaration-track:d12148b2faf48a3f467b9fec6033e7e5644db2ca0404449415d351e66531f248` |
| 8 | `def` | [hasOne](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/hasone--832e735cde21f6a7ae9b05bd.md) | 94 | `declaration-track:832e735cde21f6a7ae9b05bd8102f2602701280ef3a84148aa8ccab3e2800332` |
| 9 | `def` | [hasSmul](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/hassmul--7342c17aae22db44cd099094.md) | 100 | `declaration-track:7342c17aae22db44cd09909453caea38b25ae852fc141215f1fe4b6f6923b7b2` |
| 10 | `def` | [liftFun](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/liftfun--e446c05460cae7a707708802.md) | 112 | `declaration-track:e446c05460cae7a707708802b4ac7d88889682e9823cbc73457bdb782fa4ff88` |
| 11 | `inductive` | [Rel](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/rel--9384d1838b8bc31a4a33c29e.md) | 123 | `declaration-track:9384d1838b8bc31a4a33c29e6b10c1515d5196a9bec8b458c71e1d86dc783cad` |
| 12 | `def` | [FreeAlgebra](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/freealgebra--aeca68e34d2e15530dd7dc10.md) | 154 | `declaration-track:aeca68e34d2e15530dd7dc10fe919c25085ceae358e30ba5860e96921a6fcabf` |
| 13 | `instance` | [instSMul](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instsmul--cdcf5cbc26238f0202450bad.md) | 165 | `declaration-track:cdcf5cbc26238f0202450baddd72c03ece3e666148801d0b9c0c628d15c99ae5` |
| 14 | `instance` | [instZero](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instzero--e447e87a9ae74cc4b1413194.md) | 168 | `declaration-track:e447e87a9ae74cc4b14131940769f36f7931a1184edccf8467f46568fc62a34a` |
| 15 | `instance` | [instOne](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instone--d6a17b212a37feaf3c56b118.md) | 170 | `declaration-track:d6a17b212a37feaf3c56b118f850c0fb388b470ca89d935a6362414b36e781bd` |
| 16 | `instance` | [instAdd](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instadd--54f2eb953721427acc4545e8.md) | 172 | `declaration-track:54f2eb953721427acc4545e82df677531d4ec0f16ada6aa4e72bc8a85ac3b3b5` |
| 17 | `instance` | [instMul](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instmul--0219101c699e31844b7e672f.md) | 175 | `declaration-track:0219101c699e31844b7e672ff3b02d5898697ed0ae4eca5612018262a4dbcd8f` |
| 18 | `theorem` | [mk_mul](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/mk-mul--e825dd09ca3a535b8fbd5a22.md) | 179 | `result-track:e825dd09ca3a535b8fbd5a2263eb86841e769c15026b681f93a6b5597108cfbd` |
| 19 | `instance` | [instMonoidWithZero](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instmonoidwithzero--a115e9f66351c49b2e31f24e.md) | 187 | `declaration-track:a115e9f66351c49b2e31f24ee03b0140bab667a3c743ffcd3fd0481ac34a124b` |
| 20 | `instance` | [instDistrib](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instdistrib--294589088d0125d102f45ccc.md) | 205 | `declaration-track:294589088d0125d102f45cccab4dd8ac905f850f44afcfb1f71ddd613a2a8c54` |
| 21 | `instance` | [instAddCommMonoid](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instaddcommmonoid--7c023c5461e6af1b9397d9cb.md) | 213 | `declaration-track:7c023c5461e6af1b9397d9cbe0e13fb4e6e6814a2c0d868ce74cab6099080434` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instance--31aea2a94a1198474094f71c.md) | 240 | `declaration-track:31aea2a94a1198474094f71cd3729e5822236e3bffca6281a745b5503263417d` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instance--9a81e63460bdb51755d2b744.md) | 248 | `declaration-track:9a81e63460bdb51755d2b744b94a34e64071f5e88a9395281e62078db5bd3860` |
| 24 | `instance` | [instAlgebra](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instalgebra--e019a7ae7f562b6b9ed68ed9.md) | 251 | `declaration-track:e019a7ae7f562b6b9ed68ed9a788fe6ebec692e88d7ade1b59b64cb788dc302b` |
| 25 | `example` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/example--167b04d63c6716cb0bea1667.md) | 266 | `declaration-track:167b04d63c6716cb0bea16675e463119d3b632acaf162733b6fea0f6dc3ee56f` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instance--3fd48cd29ef1796af6ccab39.md) | 268 | `declaration-track:3fd48cd29ef1796af6ccab39622e2caffff450460dabcf095641540c43bfa595` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instance--f63068f20004ce9d336d7c75.md) | 278 | `declaration-track:f63068f20004ce9d336d7c75a1c294386bdcdff202c2406a904e9c5195f99122` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instance--acd70a9fb58a559f56c1201a.md) | 283 | `declaration-track:acd70a9fb58a559f56c1201ae72e38ad66810795a266c53525beab8b128375f6` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/example--2b4858eda94d23d34d1d4b39.md) | 288 | `declaration-track:2b4858eda94d23d34d1d4b398285042a7fde54315019e72a2f8de217497a2a94` |
| 30 | `theorem` | [quot_mk_eq_ι](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/quot-mk-eq--9ad5fe1299a6a5f3da327a40.md) | 298 | `result-track:9ad5fe1299a6a5f3da327a4060635e2af1b9ae8be3ea8792b1eaa1da4ebaecf8` |
| 31 | `def` | [liftAux](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/liftaux--f63b90a71bd90f89b6c65519.md) | 304 | `declaration-track:f63b90a71bd90f89b6c6551942f4dc34777078dcd2743d67e46274ffc3ff077a` |
| 32 | `def` | [lift](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/lift--147d4399cb5ec25df39241ed.md) | 359 | `declaration-track:147d4399cb5ec25df39241ed6d7df80ca7fd4f912785e97ab9286a03c028aa8c` |
| 33 | `theorem` | [liftAux_eq](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/liftaux-eq--bfe6d824c9243c4b0bb61161.md) | 391 | `result-track:bfe6d824c9243c4b0bb61161236cd299b0f84cc24710b95f4bfe1bf454111ad1` |
| 34 | `theorem` | [lift_symm_apply](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/lift-symm-apply--70a478e9b9f4ca84f1150294.md) | 397 | `result-track:70a478e9b9f4ca84f11502945ee48a492754317bc3d72e9cafc202dd7fe43b91` |
| 35 | `theorem` | [ι_comp_lift](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/comp-lift--30f279dff51458811d944415.md) | 405 | `result-track:30f279dff51458811d944415d1789d9c60af3fd91bac6c1f498407624ce7ca41` |
| 36 | `theorem` | [lift_ι_apply](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/lift-apply--2bcc9d9052a053c3f4b50616.md) | 412 | `result-track:2bcc9d9052a053c3f4b5061686c906b1f4012050d1a66da33e5f96a9d37745e1` |
| 37 | `theorem` | [lift_unique](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/lift-unique--0716ae43d9e9a87884b492b6.md) | 418 | `result-track:0716ae43d9e9a87884b492b6376b8ad0f027a5ce64ccd78d38b3df00fbcfed62` |
| 38 | `theorem` | [lift_comp_ι](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/lift-comp--ce5448658634b6bce7b46210.md) | 434 | `result-track:ce5448658634b6bce7b46210bdfef3fb69c106d9d126c3a6569e66b5cfa1c34d` |
| 39 | `theorem` | [hom_ext](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/hom-ext--7cc1b4bac43a45df4e88cd0c.md) | 442 | `result-track:7cc1b4bac43a45df4e88cd0c27e93c2ef9178ec869b9a9011bc91648af817409` |
| 40 | `def` | [equivMonoidAlgebraFreeMonoid](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/equivmonoidalgebrafreemonoid--e78997244fbf6b01c09fedce.md) | 453 | `declaration-track:e78997244fbf6b01c09fedce4987004f444b3b3a025af928e7483ff54f621249` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/instance--8b4b3681d8f2bd9ca2e3e786.md) | 470 | `declaration-track:8b4b3681d8f2bd9ca2e3e786a76416ebd13e5427bbc12f106b9a7b84d5546f98` |
| 42 | `def` | [algebraMapInv](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/algebramapinv--c4a38cd7576e17b5efe93b40.md) | 476 | `declaration-track:c4a38cd7576e17b5efe93b40e7a8e45a7ec2d9ee27e11b83929f849940d2e8c5` |
| 43 | `theorem` | [algebraMap_leftInverse](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/algebramap-leftinverse--1c5750c3b2586098072b3a4a.md) | 480 | `result-track:1c5750c3b2586098072b3a4aa059e07fbe238d2fe490d06913103773daedca03` |
| 44 | `theorem` | [algebraMap_inj](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/algebramap-inj--9a6b7b868105f0cbd3d7ec3c.md) | 486 | `result-track:9a6b7b868105f0cbd3d7ec3c6bbe10bd6fdcb5e7d05151070c70a5850baf2941` |
| 45 | `theorem` | [algebraMap_eq_zero_iff](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/algebramap-eq-zero-iff--3372cf04552d410523e7eafe.md) | 492 | `result-track:3372cf04552d410523e7eafe3e09519d40420d1866f55cc6a53041849c3faa92` |
| 46 | `theorem` | [algebraMap_eq_one_iff](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/algebramap-eq-one-iff--c3f5b822163ee0cee4189626.md) | 497 | `result-track:c3f5b822163ee0cee418962640d309103d9d810f51a7ac71211ccbfd37bfe139` |
| 47 | `theorem` | [ι_injective](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/injective--3d173680f5e8cf9c0b0faf05.md) | 502 | `result-track:3d173680f5e8cf9c0b0faf05502721cdcc5d8e216f26e514ec823f4dbabbc816` |
| 48 | `theorem` | [ι_inj](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/inj--b1cc7a99f2609c638e31091e.md) | 514 | `result-track:b1cc7a99f2609c638e31091efec868229011567b9a291499b59eadfa28494ce7` |
| 49 | `theorem` | [ι_ne_algebraMap](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/ne-algebramap--07f2a82c0a380d55838e1542.md) | 519 | `result-track:07f2a82c0a380d55838e15420a34e6dac3498a41d545202377653543f7921176` |
| 50 | `theorem` | [ι_ne_zero](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/ne-zero--1d340a8a3694da42349f1375.md) | 530 | `result-track:1d340a8a3694da42349f13751cda5004398728016c73d9a74ca5ceaa05c26d21` |
| 51 | `theorem` | [ι_ne_one](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/ne-one--50314b495d37f5bfad9c4d79.md) | 535 | `result-track:50314b495d37f5bfad9c4d79ec36dba2987958afe8908a5f4ffbc547844d8c7c` |
| 52 | `theorem` | [induction](../../../../mathematics/Algebra/FreeAlgebra/Variantf5f97ede1b21ec44e2136f54426057dbea2739f727cf8ae99565bb5bfb5902b1.lean/declarations/induction--be0f2bafedae405540c93c6f.md) | 553 | `result-track:be0f2bafedae405540c93c6f5bc9242bad7099d191dda4e2194c9b5209591e74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
