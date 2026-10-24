# Verification target: GRWTSK.Algebra.RingTheory.FreeCommRing.Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b68557e5d7ca3d315137821baaf8ace708ad726",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b68557e5d7ca3d315137821baaf8ace708ad726`.

Source path: `GRWTSK/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Functor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FreeRing` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/freecommring--ec38245078c9d34351a87d5d.md) | 75 | `declaration-track:ec38245078c9d34351a87d5d03bfa02a1620d2576eae4ee6bd94b5b83d9bb7df` |
| 2 | `instance` | [FreeCommRing.instCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/freecommring-instcommring--85a46b13df6a30187724011d.md) | 80 | `declaration-track:85a46b13df6a30187724011d3ed98e557213daad62e809b226f2bf71a5ad2c16` |
| 3 | `instance` | [FreeCommRing.instInhabited](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/freecommring-instinhabited--33eca948301c6cbecb373503.md) | 83 | `declaration-track:33eca948301c6cbecb373503fd21eab31062baab001723b88f07e44927028bf2` |
| 4 | `def` | [of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/of--d9ca13ecdcc5fe0b10bf1f38.md) | 91 | `declaration-track:d9ca13ecdcc5fe0b10bf1f38455da8b6c20f453048b970c826291ba98e135585` |
| 5 | `theorem` | [of_injective](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/of-injective--942566e53be4d737ddb33235.md) | 94 | `result-track:942566e53be4d737ddb3323591d356184c7d684ae4dbc1776e911b0eabb43a1f` |
| 6 | `theorem` | [of_ne_zero](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/of-ne-zero--99e0beae011c56409448b079.md) | 99 | `result-track:99e0beae011c56409448b0797385ff001c1e258127ec6ed90dfe16e3f9e2d28f` |
| 7 | `theorem` | [zero_ne_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/zero-ne-of--9f79827577c6c8f21d39b59b.md) | 102 | `result-track:9f79827577c6c8f21d39b59b583c915f6892b0bf686cc534f398fcec8bbd7060` |
| 8 | `theorem` | [of_ne_one](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/of-ne-one--53ffa59f3ca5204d59067361.md) | 105 | `result-track:53ffa59f3ca5204d59067361da30fff06ee435cbdf98dbc64cf8742bde40fc02` |
| 9 | `theorem` | [one_ne_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/one-ne-of--e1ece2e353fa298231d8e6e9.md) | 109 | `result-track:e1ece2e353fa298231d8e6e91986c110221fdb6d3be8697f78cdc7ab73fcd51b` |
| 10 | `lemma` | [of_cons](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/of-cons--8e8010e7d094b15736c6a7b6.md) | 113 | `result-track:8e8010e7d094b15736c6a7b610b99f012fedc2ab7230d3581da5b57cff19d467` |
| 11 | `theorem` | [induction_on](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/induction-on--5903f3fef8c8f46671bb0700.md) | 121 | `result-track:5903f3fef8c8f46671bb0700abab9d6c9f83d5134cd42ebb4b9c014099b118b0` |
| 12 | `def` | [liftToMultiset](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/lifttomultiset--7da4c7d1acfbb22da93afcff.md) | 139 | `declaration-track:7da4c7d1acfbb22da93afcffe1b0f2891f91afdb5df2385cc235184cf0cb6753` |
| 13 | `def` | [lift](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/lift--393963b5f7a7655f42a83b9b.md) | 160 | `declaration-track:393963b5f7a7655f42a83b9b8871fa8b9a13b468e0b4257502cd650b45f4bf19` |
| 14 | `theorem` | [lift_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/lift-of--659ded28edbeaef3edce571d.md) | 164 | `result-track:659ded28edbeaef3edce571d7086a815f18c4f9b2e4492d3fa5a803758e23c8b` |
| 15 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/lift-comp-of--d8def960d2560f789b65949e.md) | 168 | `result-track:d8def960d2560f789b65949e1506baeb71e4c64ade66efbf9f24073d0c41ca0d` |
| 16 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/hom-ext--41c5fc59ff7efa52ae51db5d.md) | 175 | `result-track:41c5fc59ff7efa52ae51db5dc9dc83c809e2f8c1918ddb0773e310a733c4afcc` |
| 17 | `def` | [map](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/map--8f3b91e2d8faf3e98660031e.md) | 183 | `declaration-track:8f3b91e2d8faf3e98660031e44f5007397f8a154bc9f3dfaf5a0213a55a33a92` |
| 18 | `theorem` | [map_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/map-of--5ce225befb90a986ee2f005c.md) | 187 | `result-track:5ce225befb90a986ee2f005ccad9cda5617a8bce7722bcb5107ac9d7fe9184e4` |
| 19 | `def` | [IsSupported](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/issupported--0d4f1813871cee510e1f451f.md) | 191 | `declaration-track:0d4f1813871cee510e1f451f140699c8c01bac3b3b98f4a0ff611aaf47e8fbdd` |
| 20 | `theorem` | [isSupported_upwards](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/issupported-upwards--0b21cf04a61dec68cdb1b583.md) | 198 | `result-track:0b21cf04a61dec68cdb1b583db0333f9865c24b8557b56fc85521ce2cc570ceb` |
| 21 | `theorem` | [isSupported_add](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/issupported-add--332c35d36b21eed4ba1b4705.md) | 201 | `result-track:332c35d36b21eed4ba1b470536d4f07d44658ce8c6a66a46c8a42473bd39293c` |
| 22 | `theorem` | [isSupported_neg](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/issupported-neg--152d5030d4cd4ee2cfc02760.md) | 204 | `result-track:152d5030d4cd4ee2cfc027604aaa56f6a73a22e6b04af59378a32bb81771b4c5` |
| 23 | `theorem` | [isSupported_sub](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/issupported-sub--addea0a5f2605fce82ace200.md) | 207 | `result-track:addea0a5f2605fce82ace2007d3fc5378846f39c994ec0c7b1e0322053d5d7d7` |
| 24 | `theorem` | [isSupported_mul](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/issupported-mul--51007343998fb78aac77e810.md) | 210 | `result-track:51007343998fb78aac77e8100ae7b334d50ec3a7d387b0cfb5793a035780e9da` |
| 25 | `theorem` | [isSupported_zero](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/issupported-zero--1b3d24f2275aabe7b2dd3c44.md) | 213 | `result-track:1b3d24f2275aabe7b2dd3c4492c11be68fa0a1101842ad2e47edd9ed6d3647b9` |
| 26 | `theorem` | [isSupported_one](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/issupported-one--5da694f1bf5cae1f07f05645.md) | 216 | `result-track:5da694f1bf5cae1f07f0564578c692141e730a00b413c0f5778da10dac9460d8` |
| 27 | `theorem` | [isSupported_int](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/issupported-int--9adb4c830157f17a0ac30be9.md) | 219 | `result-track:9adb4c830157f17a0ac30be9b02be82e5c161dffaa697bfe7bcd756c75d0e99c` |
| 28 | `def` | [restriction](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/restriction--436f16c428fa8d6d11cc508b.md) | 228 | `declaration-track:436f16c428fa8d6d11cc508b7353a43d4a2d6ebaf20b999e89e99aec5422d0df` |
| 29 | `theorem` | [restriction_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/restriction-of--c5f51309d14108af79d7f91e.md) | 236 | `result-track:c5f51309d14108af79d7f91ee3575537cac436fac4f144c0c0409e3d846697fe` |
| 30 | `theorem` | [isSupported_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/issupported-of--50f58e01ed09725c3a0a836b.md) | 241 | `result-track:50f58e01ed09725c3a0a836b4b83eeb820e15383ebb86ca4169479661fa4d5f0` |
| 31 | `theorem` | [map_subtype_val_restriction](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/map-subtype-val-restriction--c5cba2ee18c227ac376309c4.md) | 275 | `result-track:c5cba2ee18c227ac376309c4dc9a5bb7b9025c22127299069b7dca17e1400ca1` |
| 32 | `theorem` | [exists_finite_support](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/exists-finite-support--b8741463d766ad3571894c25.md) | 287 | `result-track:b8741463d766ad3571894c253133371cdf72cd780a0636ce3bfabb36bc244347` |
| 33 | `theorem` | [exists_finset_support](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/exists-finset-support--5ef077180fad19d7d70e061e.md) | 299 | `result-track:5ef077180fad19d7d70e061e999810664ceddb8e52aa623048ae087ec495d226` |
| 34 | `def` | [toFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/tofreecommring--6ea500c0f2abdb677dfb3e44.md) | 311 | `declaration-track:6ea500c0f2abdb677dfb3e440b8e88fcf4ed53e3dc01baa52f41d029b5f609a0` |
| 35 | `def` | [castFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/castfreecommring--50a75c46f1ed97a8ede002f0.md) | 316 | `declaration-track:50a75c46f1ed97a8ede002f0c1c5b0d85d917b937829f237132b0ac1bbac7d09` |
| 36 | `instance` | [FreeCommRing.instCoe](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/freecommring-instcoe--c05c2849d34650d72356146b.md) | 318 | `declaration-track:c05c2849d34650d72356146b33bb654178fd16d1d8762bc54b929ce8b86307a4` |
| 37 | `def` | [coeRingHom](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/coeringhom--b8e3d685ca0d7d40b9d8e50e.md) | 322 | `declaration-track:b8e3d685ca0d7d40b9d8e50e3174d7e37bb61cbf2eb16ff75719f865672aadd7` |
| 38 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/coe-zero--8617e36cd96479b7b5f5824f.md) | 326 | `result-track:8617e36cd96479b7b5f5824f23ceb5ca90ee70763781f62699a11d53bfeb3cd9` |
| 39 | `theorem` | [coe_one](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/coe-one--adef28b1136911fa6b531f88.md) | 329 | `result-track:adef28b1136911fa6b531f889a5ada6342c0e09aca10bf4a2fc3ec61d1dd7c6e` |
| 40 | `theorem` | [coe_of](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/coe-of--b30685de363bb1f0bbfcf5ca.md) | 334 | `result-track:b30685de363bb1f0bbfcf5ca3b19c53165817eab2270a52d202f18c2d0c49aed` |
| 41 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/coe-neg--834ab80083aa38f552948436.md) | 338 | `result-track:834ab80083aa38f5529484368158b05bf62bf5a7aae925bc22f8e321e412787b` |
| 42 | `theorem` | [coe_add](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/coe-add--834a988fb282736260e3cdd5.md) | 342 | `result-track:834a988fb282736260e3cdd5a60b6ffc520704c554543ed85a1f2330c413bb0f` |
| 43 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/coe-sub--8ebf3a27026fad35ecccabef.md) | 346 | `result-track:8ebf3a27026fad35ecccabef1b2b61f1ea052a9cf590f0a6d50531c70e7a39d5` |
| 44 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/coe-mul--91ad743d09fca54654fd9552.md) | 350 | `result-track:91ad743d09fca54654fd9552aac41ee3b0ffd9ffd614fe2a7a17e3fb9c877f5d` |
| 45 | `theorem` | [coe_surjective](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/coe-surjective--2affeb62601eeafaeeb0343e.md) | 355 | `result-track:2affeb62601eeafaeeb0343efcb7d0a83ccffaf780f94c66687346700cfca0e4` |
| 46 | `theorem` | [coe_eq](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/coe-eq--141ef2d78291684ba669eebc.md) | 366 | `result-track:141ef2d78291684ba669eebc8610190544f04fe3d33372d581de23b3a6c73f7d` |
| 47 | `def` | [subsingletonEquivFreeCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/subsingletonequivfreecommring--b23ee13307ce010ed270d750.md) | 382 | `declaration-track:b23ee13307ce010ed270d750f0cd031a722013ef4dc2a288c51e74d4f0786733` |
| 48 | `instance` | [instCommRing](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/instcommring--cf474c7dbfbbee5aff269936.md) | 390 | `declaration-track:cf474c7dbfbbee5aff2699365c11cfab9caef1f98eb0372fc82ec7850af9769a` |
| 49 | `def` | [freeCommRingEquivMvPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/freecommringequivmvpolynomialint--efdf83dba4d6dec4751f0900.md) | 402 | `declaration-track:efdf83dba4d6dec4751f090010edba205c4edff6bd2b29f581980dacd5de02ba` |
| 50 | `def` | [freeCommRingPemptyEquivInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/freecommringpemptyequivint--18a64779cd14f11fa9c26bd3.md) | 408 | `declaration-track:18a64779cd14f11fa9c26bd346cdddd55699a0014d3b65c139d0267a95285663` |
| 51 | `def` | [freeCommRingPunitEquivPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/freecommringpunitequivpolynomialint--9c688d470afd5331fa6bde6c.md) | 412 | `declaration-track:9c688d470afd5331fa6bde6cbddd1dbaca2ad38db8e562ee9ff555faabf5ae30` |
| 52 | `def` | [freeRingPemptyEquivInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/freeringpemptyequivint--262ddcd3a75eea9193ee9966.md) | 418 | `declaration-track:262ddcd3a75eea9193ee99667824ed3c6b93279ee8d2d128731b2f7f51a0491a` |
| 53 | `def` | [freeRingPunitEquivPolynomialInt](../../../../../mathematics/Algebra/RingTheory/FreeCommRing/Variantf30815f2b1a952829b0660002f3d8d5e32a2f016535a8403105ff087e36e11f5.lean/declarations/freeringpunitequivpolynomialint--0b6af6919fee408b4924ea39.md) | 422 | `declaration-track:0b6af6919fee408b4924ea391af273b84e74c488158783aa8a6b6f72e922a50e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
