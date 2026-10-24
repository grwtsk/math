# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PGroup.Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd3698d4f1049d776ffb2485c0a03a9ee8e17956",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd3698d4f1049d776ffb2485c0a03a9ee8e17956`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPGroup](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/ispgroup--55152ed0caecd8eab3c99d50.md) | 30 | `declaration-track:55152ed0caecd8eab3c99d5034396f0055401b521f45f65710441b0dee3b91ec` |
| 2 | `theorem` | [iff_orderOf](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/iff-orderof--40cd905f570b1f11c6cf7439.md) | 37 | `result-track:40cd905f570b1f11c6cf7439000984caae9767db2543931aead4a0215d98581f` |
| 3 | `theorem` | [of_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/of-card--94417cdaff36e4478e235270.md) | 44 | `result-track:94417cdaff36e4478e235270dc3dd5e7cf6a71d4b01e2d20d08f1db1fd25e1af` |
| 4 | `theorem` | [of_bot](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/of-bot--db5328458a0217c0b4edaabe.md) | 47 | `result-track:db5328458a0217c0b4edaabe300dbedd4a1ba4a7fa798746af967a9440240f9c` |
| 5 | `theorem` | [iff_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/iff-card--b3b721e15b606357ce82341f.md) | 50 | `result-track:b3b721e15b606357ce82341fff9e19ed4fd61acb3d420ebadce0c20724639ea2` |
| 6 | `theorem` | [of_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/of-injective--cf7aa1d757360d74380d3e58.md) | 70 | `result-track:cf7aa1d757360d74380d3e5807835ee2e11ca884ec57cb55cf5e4ecb4e3239b5` |
| 7 | `theorem` | [to_subgroup](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/to-subgroup--b4369a8b0f94f01543d9e960.md) | 75 | `result-track:b4369a8b0f94f01543d9e960572adff6841b66df4202729e860cab9ac8ba3e61` |
| 8 | `theorem` | [of_surjective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/of-surjective--785ec3161dc7a2ecce7f1b66.md) | 78 | `result-track:785ec3161dc7a2ecce7f1b665bef0b653016e0845e4244d03d0034418bcdabf9` |
| 9 | `theorem` | [to_quotient](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/to-quotient--c8fd21392d3a04ddf4b1f9a2.md) | 83 | `result-track:c8fd21392d3a04ddf4b1f9a2caceafb044f2bc70c0703c8194cb983fcb3d0f07` |
| 10 | `theorem` | [of_equiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/of-equiv--38a5c8645a2791177d9a35e8.md) | 86 | `result-track:38a5c8645a2791177d9a35e8985d3f86d4a18443b508f2bf4039fb6ac7ade3e8` |
| 11 | `theorem` | [orderOf_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/orderof-coprime--960c01b0dc75a157a40d637a.md) | 89 | `result-track:960c01b0dc75a157a40d637a040b71d83d959144655fd971bf91a4ea3ed600d0` |
| 12 | `def` | [powEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/powequiv--0aad6ad91162bb3f295b9497.md) | 94 | `declaration-track:0aad6ad91162bb3f295b9497e885902f5b4cbd5b41f4faa98aa626c6c3f7f3b6` |
| 13 | `theorem` | [powEquiv_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/powequiv-apply--219eeb279351495f1601552a.md) | 107 | `result-track:219eeb279351495f1601552a390174be29c188faf74dfa6668fef2004c539b24` |
| 14 | `theorem` | [powEquiv_symm_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/powequiv-symm-apply--b0603c89d8293b5a7d550bbe.md) | 111 | `result-track:b0603c89d8293b5a7d550bbe80611b5ca3acd2c97fcca086df2a663e6a9f11ea` |
| 15 | `abbrev` | [powEquiv'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/powequiv--87757819817b3f2a6650901e.md) | 117 | `declaration-track:87757819817b3f2a6650901e6be5c098cfc346503e2723fc1858548c3811b78a` |
| 16 | `theorem` | [index](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/index--ef522c04340540a57e330ec7.md) | 120 | `result-track:ef522c04340540a57e330ec789e07771d0eb332bcd59d3641e0b0aba86ea14f3` |
| 17 | `theorem` | [card_eq_or_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/card-eq-or-dvd--f9ca1f12b0be8c18cd1a25a6.md) | 128 | `result-track:f9ca1f12b0be8c18cd1a25a62459b31d75e35c6ecfe2a7fa189453afa18938ce` |
| 18 | `theorem` | [nontrivial_iff_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/nontrivial-iff-card--79e2f6ae82ab14d3ea6ee4b4.md) | 138 | `result-track:79e2f6ae82ab14d3ea6ee4b46c8f3f543c3a1a169e5af8e70b901ba3c1400ba9` |
| 19 | `theorem` | [card_orbit](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/card-orbit--168f1cbcbd12ce2b6367762d.md) | 151 | `result-track:168f1cbcbd12ce2b6367762d6942af695b3657441648eab59cb80872e2de2120` |
| 20 | `theorem` | [card_modEq_card_fixedPoints](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/card-modeq-card-fixedpoints--5d0d1b55a05974811721733a.md) | 162 | `result-track:5d0d1b55a05974811721733ad2f5a0cb808d4f14368b2cdce8473be05aa13305` |
| 21 | `theorem` | [nonempty_fixed_point_of_prime_not_dvd_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/nonempty-fixed-point-of-prime-not-dvd-card--5a521243b64f6511490e1daa.md) | 197 | `result-track:5a521243b64f6511490e1daad69c560425ab78475eff332e64a314744976dd5a` |
| 22 | `theorem` | [exists_fixed_point_of_prime_dvd_card_of_fixed_point](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/exists-fixed-point-of-prime-dvd-card-of-fixed-point--eb2ecc398bace15b2c081bf2.md) | 209 | `result-track:eb2ecc398bace15b2c081bf27c8cab11a6287201704edd8ba34e14711c88789f` |
| 23 | `theorem` | [center_nontrivial](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/center-nontrivial--1afc5c3ce378021a4fbbde0f.md) | 220 | `result-track:1afc5c3ce378021a4fbbde0f60880b8afa155d56f7034d6e79b3cb59cadb7d84` |
| 24 | `theorem` | [bot_lt_center](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/bot-lt-center--6a3cd4c69fc63f2d4cd5a4ad.md) | 230 | `result-track:6a3cd4c69fc63f2d4cd5a4ad853fe3ae49ae0837f8b4a6289d80d07a5774ac98` |
| 25 | `theorem` | [to_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/to-le--0f21a4e28e3ead309944515f.md) | 237 | `result-track:0f21a4e28e3ead309944515f85fa3e0107ea158e8370bef4137c6cc75b4a5a9d` |
| 26 | `theorem` | [to_inf_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/to-inf-left--a85229e34da41655b54854e7.md) | 243 | `result-track:a85229e34da41655b54854e7fb0785c00bc660a4842b7f0a5822d06718c515fd` |
| 27 | `theorem` | [to_inf_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/to-inf-right--c24dc90c38d428d5a5101bc2.md) | 246 | `result-track:c24dc90c38d428d5a5101bc203f80684640bc94b3dbae9c7c58bca40bff2f256` |
| 28 | `theorem` | [map](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/map--565d5a12f3d0bdef28b645cd.md) | 249 | `result-track:565d5a12f3d0bdef28b645cd6ba2229d6415926ea9f6bcb2809515cfbefad8bb` |
| 29 | `theorem` | [comap_of_ker_isPGroup](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/comap-of-ker-ispgroup--9764b2e35185c57fc6b24449.md) | 254 | `result-track:9764b2e35185c57fc6b24449711838e2c0a641eee54203e9a7ac93204157334b` |
| 30 | `theorem` | [ker_isPGroup_of_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/ker-ispgroup-of-injective--1b31207d55f338ee024f99a6.md) | 263 | `result-track:1b31207d55f338ee024f99a6b399643258a12fbbd581c37ec7e4f4b7aefa820a` |
| 31 | `theorem` | [comap_of_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/comap-of-injective--48982229f5f7d4c867a839c0.md) | 267 | `result-track:48982229f5f7d4c867a839c0b859e9449f49ae8817722236bdda8c238d4ad8cf` |
| 32 | `theorem` | [comap_subtype](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/comap-subtype--7faaeed543bf46d8d36c79a8.md) | 271 | `result-track:7faaeed543bf46d8d36c79a8379a2e40cd9d45babe7049b0ee8c4187be7c2c67` |
| 33 | `theorem` | [to_sup_of_normal_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/to-sup-of-normal-right--c1d6415744a3dc03403290e8.md) | 275 | `result-track:c1d6415744a3dc03403290e8a3cbaf8662f06b4360c729acbeee61222f2db93f` |
| 34 | `theorem` | [to_sup_of_normal_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/to-sup-of-normal-left--250c597c01dd37f4611619a3.md) | 281 | `result-track:250c597c01dd37f4611619a3b8c51cf83b69347d4d364d6020a193efc306b0a3` |
| 35 | `theorem` | [to_sup_of_normal_right'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/to-sup-of-normal-right--f374c48b810762b72780634a.md) | 284 | `result-track:f374c48b810762b72780634ad3e427639432c802c5ce83c444727d8dddfef1af` |
| 36 | `theorem` | [to_sup_of_normal_left'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/to-sup-of-normal-left--e61d956d5be22521295e6360.md) | 294 | `result-track:e61d956d5be22521295e63604be92416957b822907c3e3e892ee7b8195505e89` |
| 37 | `theorem` | [coprime_card_of_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/coprime-card-of-ne--3c69708297ad13cc7695f1e0.md) | 299 | `result-track:3c69708297ad13cc7695f1e091584c66cd2ef6bff3e18b94a7937ffda34029f0` |
| 38 | `theorem` | [disjoint_of_ne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/disjoint-of-ne--857476cf3ffde27d2692be36.md) | 308 | `result-track:857476cf3ffde27d2692be36136ed68fa9f297ff51f72861399c8ade7ff1940c` |
| 39 | `theorem` | [le_or_disjoint_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/le-or-disjoint-of-coprime--9c0afab21b1761bf7ecf7302.md) | 320 | `result-track:9c0afab21b1761bf7ecf73025bc9b23925ae8b06375f2b7df37a62c876023eae` |
| 40 | `theorem` | [card_center_eq_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/card-center-eq-prime-pow--583ba377901436cde5c7c068.md) | 353 | `result-track:583ba377901436cde5c7c068155bdca930ace4dbb755aaad3b57a34430634202` |
| 41 | `theorem` | [cyclic_center_quotient_of_card_eq_prime_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/cyclic-center-quotient-of-card-eq-prime-sq--b38dcbab460649ae683b5f5c.md) | 362 | `result-track:b38dcbab460649ae683b5f5ca3ff49c4ef50090a6807e5b8a5c30b948ec0a569` |
| 42 | `def` | [commGroupOfCardEqPrimeSq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/commgroupofcardeqprimesq--57c5719827320ef7638d1f4f.md) | 373 | `declaration-track:57c5719827320ef7638d1f4fcfc6066d44e255ba199f6b14156a15fd937a8b58` |
| 43 | `theorem` | [commutative_of_card_eq_prime_sq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/commutative-of-card-eq-prime-sq--f6148235b625bf47f4354179.md) | 379 | `result-track:f6148235b625bf47f4354179f4b8b03e1325a8331c2e0a7c8fd66a874a496def` |
| 44 | `lemma` | [isPGroup_multiplicative](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/declarations/ispgroup-multiplicative--16d9636989b33def768a4b35.md) | 389 | `result-track:16d9636989b33def768a4b355aa08d1febe9a47cda08ecf240dbbc937815fa46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
