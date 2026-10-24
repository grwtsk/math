# Verification target: GRWTSK.Algebra.Ext.Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89d5f7394d4ed11f040cef3ef8dae2048c8e5c1e",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89d5f7394d4ed11f040cef3ef8dae2048c8e5c1e`.

Source path: `GRWTSK/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Ext` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--31d28d456df6def823dbf01b.md) | 50 | `result-track:31d28d456df6def823dbf01b45b42f8d86104c71d9effb47df732870a132ad15` |
| 2 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--25a82aabe11de68a00742ac9.md) | 65 | `result-track:25a82aabe11de68a00742ac9a34ec913665a7d37803527db3b9c035930cdf0aa` |
| 3 | `theorem` | [toDistrib_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/todistrib-injective--0b09c4ae3f00a747413182be.md) | 75 | `result-track:0b09c4ae3f00a747413182bef6f428fb3626f3e19c49c3b74fba2041fcdc3a90` |
| 4 | `theorem` | [toNonUnitalNonAssocSemiring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalnonassocsemiring-injective--4d29d2802eae5e1ea3bf5c81.md) | 86 | `result-track:4d29d2802eae5e1ea3bf5c8183e300698787fe44d4b97e99ef4f43b81ff2e3bf` |
| 5 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--ecee41305488f3940a3f7b68.md) | 90 | `result-track:ecee41305488f3940a3f7b68ec0316e56fdb35004c1d145465c9259c85f4d3a2` |
| 6 | `theorem` | [AddMonoidWithOne.ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/addmonoidwithone-ext--40568e3de8d47106df6659d2.md) | 106 | `result-track:40568e3de8d47106df6659d2de228ca31f8899bc42fe814f0b07bc56b5f3252d` |
| 7 | `theorem` | [AddCommMonoidWithOne.toAddMonoidWithOne_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/addcommmonoidwithone-toaddmonoidwithone-injective--4a4d8e3bcd6fdff66541285a.md) | 123 | `result-track:4a4d8e3bcd6fdff66541285aa262e61be06a182303373b38ec9ca662df1009ec` |
| 8 | `theorem` | [AddCommMonoidWithOne.ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/addcommmonoidwithone-ext--aa97afaac2da5580326ac99b.md) | 127 | `result-track:aa97afaac2da5580326ac99bbbeaee958a02241e8c5b66d2a6aefa5b9fb8067e` |
| 9 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--805913bed0d96442c7f4644e.md) | 139 | `result-track:805913bed0d96442c7f4644ecb585690ac9570e257d97aeda29470e29f3e9d9b` |
| 10 | `theorem` | [toNonUnitalNonAssocSemiring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalnonassocsemiring-injective--854201e4f59869e1b4a37c19.md) | 161 | `result-track:854201e4f59869e1b4a37c1957b6266094636cc1372bbaa2b460baff9513ac6d` |
| 11 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--02657486265e7e84768697f4.md) | 171 | `result-track:02657486265e7e84768697f431950ed1e74acc1eb9ccdc6ba7816f38d11dc667` |
| 12 | `theorem` | [toNonUnitalNonAssocSemiring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalnonassocsemiring-injective--a268fc2092c9a9fbaf4c2bdd.md) | 179 | `result-track:a268fc2092c9a9fbaf4c2bddb6926fecddc404895e5d74172e240e217aef9d6f` |
| 13 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--4602021ab2ad83fc84e2961c.md) | 192 | `result-track:4602021ab2ad83fc84e2961c53f75295ec9edfa012dc7bcf0bd2349e22d693d7` |
| 14 | `theorem` | [toNonUnitalSemiring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalsemiring-injective--b20b03ac43b337ab127a4453.md) | 202 | `result-track:b20b03ac43b337ab127a44539630fc8e0d5bb1cd03753b91989d5bf4734a2e3d` |
| 15 | `theorem` | [toNonUnitalNonAssocring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalnonassocring-injective--733262a4bab0ac09d26db1f9.md) | 209 | `result-track:733262a4bab0ac09d26db1f97aab9de17d32a21ca0ece0c36cec08098edb679d` |
| 16 | `theorem` | [AddGroupWithOne.ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/addgroupwithone-ext--94f2df499064c3d4e3f6ea92.md) | 221 | `result-track:94f2df499064c3d4e3f6ea922e2503d0a2db0df35b7343a74c0d132bf527e1e0` |
| 17 | `theorem` | [AddCommGroupWithOne.ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/addcommgroupwithone-ext--f694b6ff71e8fe38f8ea9cf5.md) | 238 | `result-track:f694b6ff71e8fe38f8ea9cf51c480177839c45f7c029448ba12915f0d75cd6dd` |
| 18 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--d0e395872756e14aa25601fd.md) | 252 | `result-track:d0e395872756e14aa25601fd62efa7774bebc797be5a9b5ca62c19a16885fd85` |
| 19 | `theorem` | [toNonAssocSemiring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononassocsemiring-injective--cc4ad671d9621e9eb4750778.md) | 266 | `result-track:cc4ad671d9621e9eb4750778c5c31c522e85b30cf61a59c1b8934bf8fd5ade32` |
| 20 | `theorem` | [toNonUnitalNonAssocring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalnonassocring-injective--2428dfd36575940640e264ce.md) | 273 | `result-track:2428dfd36575940640e264ce2e28a440f4f142ace7458b73068930d9b2a17d33` |
| 21 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--21ac0c79e4025bb4eb84af85.md) | 283 | `result-track:21ac0c79e4025bb4eb84af85063a8f87aa16c6d7b66b6a99954f92893b593caf` |
| 22 | `theorem` | [toNonUnitalSemiring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalsemiring-injective--cc343f8680e60ae9cec6354a.md) | 298 | `result-track:cc343f8680e60ae9cec6354aeb2668abf7d9e0d40808885f079f8fd0758e96f1` |
| 23 | `theorem` | [toNonAssocSemiring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononassocsemiring-injective--b7807c4dab53ae7f128aa84c.md) | 305 | `result-track:b7807c4dab53ae7f128aa84ce2bf3483e16d07d0e82e31078c649ac65346bed7` |
| 24 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--18a27614e9d1b4ef72e80e19.md) | 317 | `result-track:18a27614e9d1b4ef72e80e194ea2c03798d189262bacee34b3043c26e3ccd619` |
| 25 | `theorem` | [toNonUnitalRing_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalring-injective--616bf7a506797c6c3ff54e9a.md) | 335 | `result-track:616bf7a506797c6c3ff54e9a2b18b504c629017cc0658744da85895710fc1f78` |
| 26 | `theorem` | [toNonAssocRing_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononassocring-injective--4b6037874731a1f4a99f9153.md) | 342 | `result-track:4b6037874731a1f4a99f9153339b2cfc6a8a5b097d2dda54dad8d0a0c0f53de2` |
| 27 | `theorem` | [toSemiring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tosemiring-injective--7a6221c4b7bd75e22d632828.md) | 347 | `result-track:7a6221c4b7bd75e22d6328288d461e9b9cdffa693cd1cf0d5cab291a058458eb` |
| 28 | `theorem` | [toNonUnitalNonAssocSemiring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalnonassocsemiring-injective--c86114b5cfb8b48524fd55a6.md) | 359 | `result-track:c86114b5cfb8b48524fd55a62d155786ccc401268152051ca7e78cd0eaeef1dd` |
| 29 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--d1a609528c0c0f7ca012cdd0.md) | 363 | `result-track:d1a609528c0c0f7ca012cdd08f3cf75d65e567e523d0635530ec1393da22ac50` |
| 30 | `theorem` | [toNonUnitalSemiring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalsemiring-injective--3f8174cc082cb56b16af9544.md) | 375 | `result-track:3f8174cc082cb56b16af95447f6c32261fec85c4bfb64088b330f17df4a7794b` |
| 31 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--1315a26091d7ccb823213650.md) | 379 | `result-track:1315a26091d7ccb8232136502b0c039185e3f9bc47974d0f7658c084323a433f` |
| 32 | `theorem` | [toNonUnitalNonAssocRing_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalnonassocring-injective--6e5fda644227f76983365a16.md) | 393 | `result-track:6e5fda644227f76983365a168b9c1629c105f63ed936a783d250a1cc2f113985` |
| 33 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--d820040e6e195cf6105cf830.md) | 397 | `result-track:d820040e6e195cf6105cf830914446ddcb13b879364340129fd115cdc71b23cd` |
| 34 | `theorem` | [toNonUnitalRing_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tononunitalring-injective--a7c97fd4181090962114650b.md) | 409 | `result-track:a7c97fd4181090962114650b1d5aaeb7626d3b8ab7698e213ba4cab1b8b1060c` |
| 35 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--b6672354bd128d3297e67bd6.md) | 413 | `result-track:b6672354bd128d3297e67bd6034e33154e7b517a530b2641db76cd9d8bfef282` |
| 36 | `theorem` | [toSemiring_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/tosemiring-injective--756fd5bdcc4faabbae851bef.md) | 427 | `result-track:756fd5bdcc4faabbae851bef63b11bac89b2bc7eed5b289239ff371d1cc77c32` |
| 37 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--92350a741343ad1ac389252b.md) | 431 | `result-track:92350a741343ad1ac389252bc23f5ba9de628cbcbbdf9011acc5d9395bf9389a` |
| 38 | `theorem` | [toRing_injective](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/toring-injective--24c727556dd5f7811c14a817.md) | 443 | `result-track:24c727556dd5f7811c14a817d03d92c55e0d6ea15a6db7abc7bf3c2a6d15e6a7` |
| 39 | `theorem` | [ext](../../../../mathematics/Algebra/Ext/Variante24af52f1610af83979afd255fe160c4b05192fa57b2ab2a14fc40bf0d2b3af4.lean/declarations/ext--5ce0e4b2e43a11e4c78acdc4.md) | 446 | `result-track:5ce0e4b2e43a11e4c78acdc46cc442bab63180c4c9a37ae6ac3842c7a8d6ed6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
