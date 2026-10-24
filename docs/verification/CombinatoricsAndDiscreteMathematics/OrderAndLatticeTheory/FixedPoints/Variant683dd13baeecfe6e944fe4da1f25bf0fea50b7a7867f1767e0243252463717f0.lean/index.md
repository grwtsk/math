# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FixedPoints.Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c42f0332dfb318a1d77b32c04e3e5439d00e4614",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c42f0332dfb318a1d77b32c04e3e5439d00e4614`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/lfp--ef7769dd918ebc7e6a265611.md) | 54 | `declaration-track:ef7769dd918ebc7e6a2656111747bddba2429e3ef4e690a2452f261ffb21f8a6` |
| 2 | `def` | [gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/gfp--072917aa10523c16fd251877.md) | 60 | `declaration-track:072917aa10523c16fd251877d2fb23b86728b566fe25c208c3cc62cbe87afd3a` |
| 3 | `theorem` | [lfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/lfp-le--22de8549cefe7a4db7f7cbd0.md) | 65 | `result-track:22de8549cefe7a4db7f7cbd0daacbc13859914ac6e84625c52239ca29699bf00` |
| 4 | `theorem` | [lfp_le_fixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/lfp-le-fixed--84c26c8441dcbf6d459121a4.md) | 69 | `result-track:84c26c8441dcbf6d459121a44ff3ad22d7cbf92be7332d1879f6e7249f1ebdbb` |
| 5 | `theorem` | [le_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/le-lfp--0f6133c77829ec7bc04c4bb4.md) | 73 | `result-track:0f6133c77829ec7bc04c4bb44e9e93fb7756530caaeb25fac5ab07a86255c567` |
| 6 | `theorem` | [map_le_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/map-le-lfp--2ee358c380a55da5a57c13e6.md) | 80 | `result-track:2ee358c380a55da5a57c13e678f9a83664b5622338b741a3bb0b7637659a0926` |
| 7 | `theorem` | [map_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/map-lfp--265c9d90b9e4e3982dc00f6b.md) | 85 | `result-track:265c9d90b9e4e3982dc00f6b47c8f3c3174bbdd165bf6e7fc0565bde03376899` |
| 8 | `theorem` | [isFixedPt_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/isfixedpt-lfp--2da8839af3585e6ba1b40678.md) | 90 | `result-track:2da8839af3585e6ba1b40678f2586c6d94acae58273d3683abc44e19bdde54a7` |
| 9 | `theorem` | [lfp_le_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/lfp-le-map--219a0d98f4988780706c94e0.md) | 94 | `result-track:219a0d98f4988780706c94e0ec5d34fce15b35e07b34b4629b8464a00287acaa` |
| 10 | `theorem` | [isLeast_lfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/isleast-lfp-le--835c8604357cac20a7b9cd3c.md) | 100 | `result-track:835c8604357cac20a7b9cd3cd134d009d53930b51269ea0df850af5fe1494caa` |
| 11 | `theorem` | [isLeast_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/isleast-lfp--1c49ac0fc77c5ee8c1d70850.md) | 104 | `result-track:1c49ac0fc77c5ee8c1d70850252a4f28e121b218aae9beb6a50868e7555aefd2` |
| 12 | `theorem` | [lfp_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/lfp-induction--0fb9aadeffc4d921c5b480fb.md) | 108 | `result-track:0fb9aadeffc4d921c5b480fb2b0bd82090d45e2ac45ca3fe22e4663295279045` |
| 13 | `theorem` | [le_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/le-gfp--5ac3c372e7c49b0c2f86b265.md) | 119 | `result-track:5ac3c372e7c49b0c2f86b2652b530395f6ae9cd0f1ca82b127d5720999301da8` |
| 14 | `theorem` | [gfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/gfp-le--b82bf22da0b08a6284129a33.md) | 123 | `result-track:b82bf22da0b08a6284129a33d5cdcdeb1e266be51887747c09ac6683f5dadad6` |
| 15 | `theorem` | [isFixedPt_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/isfixedpt-gfp--a6291faebc8c57b7e354c6c6.md) | 127 | `result-track:a6291faebc8c57b7e354c6c62a53060cd09b58d0729b591ac0538aea0f11a0e5` |
| 16 | `theorem` | [map_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/map-gfp--e23a3b5832e0a319f8bafd3a.md) | 132 | `result-track:e23a3b5832e0a319f8bafd3a0bd99febe93115b0f39aa87399cadb6029d5d5cf` |
| 17 | `theorem` | [map_le_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/map-le-gfp--07213e225f8012ed50eaf1d0.md) | 136 | `result-track:07213e225f8012ed50eaf1d0e26b41daab02c55a7e91e4e83bf0571e783288f5` |
| 18 | `theorem` | [gfp_le_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/gfp-le-map--2093929c3c0479cad480a91c.md) | 140 | `result-track:2093929c3c0479cad480a91c53004f7197ed85241d6e286d11ec83c63ab0796b` |
| 19 | `theorem` | [isGreatest_gfp_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/isgreatest-gfp-le--4d392065cf4ceeecd642e1f5.md) | 144 | `result-track:4d392065cf4ceeecd642e1f53c71a107f09b4b7e04149871874a51220f1ebe2f` |
| 20 | `theorem` | [isGreatest_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/isgreatest-gfp--5f97299f4d37ac8ca7d32888.md) | 148 | `result-track:5f97299f4d37ac8ca7d32888bdeceaada7339b823517df68232695edea2f9e6c` |
| 21 | `theorem` | [gfp_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/gfp-induction--7b1a8e62faeea7bec9a25519.md) | 152 | `result-track:7b1a8e62faeea7bec9a255192bd40d2a7787880a7da2575303a55a3e575395b1` |
| 22 | `theorem` | [map_lfp_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/map-lfp-comp--a124ed2e9e928d02dd36b898.md) | 164 | `result-track:a124ed2e9e928d02dd36b89803cf44b821cd86f07e9f5cbd3dd81dc0cfc59709` |
| 23 | `theorem` | [map_gfp_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/map-gfp-comp--fb379492bd6c68ac78f5e8c6.md) | 169 | `result-track:fb379492bd6c68ac78f5e8c61f4332b8baee252437cb8b2aacdc36b5802fa404` |
| 24 | `theorem` | [lfp_lfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/lfp-lfp--0f20958f73ac2974507f13b4.md) | 174 | `result-track:0f20958f73ac2974507f13b4c7a553dbc42ace1c4e84b96fec849c76d5147448` |
| 25 | `theorem` | [gfp_gfp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/gfp-gfp--1c656f7d474b7169838d65c6.md) | 185 | `result-track:1c656f7d474b7169838d65c60a7b4dbf36a86177e6e4ecdc9ea1a3228c9229c8` |
| 26 | `theorem` | [gfp_const_inf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/gfp-const-inf-le--91999c3ebe8a0ca11296b2de.md) | 196 | `result-track:91999c3ebe8a0ca11296b2deb726e48c92d80693148b7fa4049252f55c9d2a80` |
| 27 | `def` | [prevFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/prevfixed--dc67a1bf8835bc9b76dfebc7.md) | 203 | `declaration-track:dc67a1bf8835bc9b76dfebc74d6736cf76c90ede6ce47e59fe8d8051e10587d7` |
| 28 | `def` | [nextFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/nextfixed--2dbcac2011e5caa33785528b.md) | 215 | `declaration-track:2dbcac2011e5caa33785528bb60467a6643bad27279eedb505f63a6c43130d4f` |
| 29 | `theorem` | [prevFixed_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/prevfixed-le--6c92803dccf80e70432c1539.md) | 219 | `result-track:6c92803dccf80e70432c1539d7662deeb8ee2be88fc0f6b5147ba1c8272d91e2` |
| 30 | `theorem` | [le_nextFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/le-nextfixed--f7ab8f65f43e583efa8ac758.md) | 223 | `result-track:f7ab8f65f43e583efa8ac7585318677461b4643bdae95302fd0ed3559b46226c` |
| 31 | `theorem` | [nextFixed_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/nextfixed-le--5b89b0cacee666ea4f15618f.md) | 227 | `result-track:5b89b0cacee666ea4f15618f522e741a65ea8e1c310570b08a41ad0fd5a43d8f` |
| 32 | `theorem` | [nextFixed_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/nextfixed-le-iff--ec4ae43635767eeee58d201e.md) | 233 | `result-track:ec4ae43635767eeee58d201e892c4e73078f9ed7d977d8597ad68d20738ef887` |
| 33 | `theorem` | [le_prevFixed_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/le-prevfixed-iff--7f51ccfb3c01a47e9a576bf2.md) | 239 | `result-track:7f51ccfb3c01a47e9a576bf2ecb48e66228c2405c5937def0f7f912e1c9c2208` |
| 34 | `theorem` | [le_prevFixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/le-prevfixed--580aafe34ae3173e4fd3e065.md) | 244 | `result-track:580aafe34ae3173e4fd3e065aa37417b1c7f5dba963d3d1708575f3e236f8aec` |
| 35 | `theorem` | [le_map_sup_fixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/le-map-sup-fixedpoints--8c363c729a2a7001bb3987f0.md) | 249 | `result-track:8c363c729a2a7001bb3987f0e40858d9cf15527884d3a11b12f7d1566792d9ef` |
| 36 | `theorem` | [map_inf_fixedPoints_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/map-inf-fixedpoints-le--d8df24056e8735762d98e32d.md) | 256 | `result-track:d8df24056e8735762d98e32d72de3e53debceab0891189dd079dcd8cc8c0217b` |
| 37 | `theorem` | [le_map_sSup_subset_fixedPoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/le-map-ssup-subset-fixedpoints--f53308f42cb84795ed69ad53.md) | 260 | `result-track:f53308f42cb84795ed69ad530df231cb39f1a4e9b9f81db68fb1efdb2f8f9903` |
| 38 | `theorem` | [map_sInf_subset_fixedPoints_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/map-sinf-subset-fixedpoints-le--d674139497a6e8a17ad4a04a.md) | 265 | `result-track:d674139497a6e8a17ad4a04aaed5a77db531e06747c4eb289e3e18d853d5a7c5` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/instance--2975931c3c78a7afe848abb6.md) | 280 | `declaration-track:2975931c3c78a7afe848abb63c7c52aa51a5c384095102c041921797a2fba2ff` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/instance--4709cf35895d7713ae4d28ea.md) | 290 | `declaration-track:4709cf35895d7713ae4d28eaa211a139e55ccab19411306a9832c8d0cddb83c6` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/instance--157d72ebaeb149de333d0ded.md) | 295 | `declaration-track:157d72ebaeb149de333d0ded392e831f08e3c4a8e610eec2e50332c92e5e838a` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/instance--64b07d7c511d5101dd0e0b72.md) | 305 | `declaration-track:64b07d7c511d5101dd0e0b7294a3346a61ed732ab4135c466312bb034df182b2` |
| 43 | `instance` | [completeLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant683dd13baeecfe6e944fe4da1f25bf0fea50b7a7867f1767e0243252463717f0.lean/declarations/completelattice--c86790b942387fbb589e0384.md) | 317 | `declaration-track:c86790b942387fbb589e03848f3ae095eb2074bef0ef1eb0d51273a1e63a735e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
