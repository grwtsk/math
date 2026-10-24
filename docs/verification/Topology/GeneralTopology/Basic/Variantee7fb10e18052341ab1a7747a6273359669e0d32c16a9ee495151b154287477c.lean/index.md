# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d388e507ce641d9e8489e17822f487996c0a1f43",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d388e507ce641d9e8489e17822f487996c0a1f43`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UpperHalfPlane](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/upperhalfplane--f52cfee3e5c3fe12d514dbfc.md) | 25 | `declaration-track:f52cfee3e5c3fe12d514dbfc5f098459ea4b509992a7ae343ba9021b8d573578` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/instance--0681159c64f553fae586950c.md) | 38 | `declaration-track:0681159c64f553fae586950c68a551b1e082e18311fe525908b64f68ca2bbac4` |
| 3 | `def` | [I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/i--e6e16040524e2e9300573389.md) | 41 | `declaration-track:e6e16040524e2e9300573389733ae5c8ddc1eb3fd09dcba4c91442bb4ec99512` |
| 4 | `def` | [ρ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/anonymous--94cc82f95ab203b655e2a85b.md) | 44 | `declaration-track:94cc82f95ab203b655e2a85bbea9b63023648ab5c650a1e4a694d09346a05823` |
| 5 | `lemma` | [ρ_sq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/sq--815ad22afd84e21a6810e4c8.md) | 46 | `result-track:815ad22afd84e21a6810e4c860924b3ba53066fb14bad97a4417216f55b8ad9a` |
| 6 | `lemma` | [norm_ρ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/norm--829063407bc743f43c296b3d.md) | 50 | `result-track:829063407bc743f43c296b3d12e747feac065da03ee95e4f7628a032186d7363` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/instance--f8a9a291c7d7797c3fe47ce8.md) | 52 | `declaration-track:f8a9a291c7d7797c3fe47ce864aedaabdd561666b04379d92a5f074974be1e76` |
| 8 | `theorem` | [coe_inj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/coe-inj--2cdb735ad98bb8260d2bf461.md) | 54 | `result-track:2cdb735ad98bb8260d2bf4615c07dba92228271b315134553f9d65c8c6f0ee66` |
| 9 | `theorem` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/coe-injective--2a5ab66673a306f0fe236bf5.md) | 56 | `result-track:2a5ab66673a306f0fe236bf53a7bb33596e461192e3c57e05d815bf3e809a46c` |
| 10 | `instance` | [canLift](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/canlift--ea4c92820cdf25129172b86e.md) | 58 | `declaration-track:ea4c92820cdf25129172b86e81e510e5e6eb418e9c9154b6a9ef2934095c67d5` |
| 11 | `theorem` | [«forall»](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/forall--cbfa957767a57894fd628356.md) | 61 | `result-track:cbfa957767a57894fd62835618208310fa4a93967e9597d2d6cb51310b0238b1` |
| 12 | `theorem` | [«exists»](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/exists--ede1b7a787859023ffbe100c.md) | 64 | `result-track:ede1b7a787859023ffbe100c6e0f77f7232814f3216fb8cc340680c464f68ca3` |
| 13 | `def` | [im](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/im--36f77512f9bac239ae6f09e7.md) | 68 | `declaration-track:36f77512f9bac239ae6f09e73eb4f8865ec17f816afa03f4e86dbda4e1fb82f3` |
| 14 | `def` | [re](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/re--1b4fb4f2470cb2c6fa5b2c6b.md) | 72 | `declaration-track:1b4fb4f2470cb2c6fa5b2c6bc005579b8ff326b52132dbab0709c461a4effa95` |
| 15 | `theorem` | [ext_re_im](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/ext-re-im--e50bf87439ad15548a52b75c.md) | 76 | `result-track:e50bf87439ad15548a52b75ccaf6ea5cd7a5b6e771b0bb34f77d1081da4d6cf6` |
| 16 | `theorem` | [coe_im](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/coe-im--66d5cd0797720366e02cb9ef.md) | 80 | `result-track:66d5cd0797720366e02cb9ef1c1ffc8b765534a29019543394ed4d8378ce8830` |
| 17 | `theorem` | [coe_re](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/coe-re--68c43cfb11104d46c62fb181.md) | 84 | `result-track:68c43cfb11104d46c62fb181dd16b1c1fde9cb8830ba44afcde008a98308b2b7` |
| 18 | `theorem` | [mk_re](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/mk-re--08445a3844a7c220546520f2.md) | 88 | `result-track:08445a3844a7c220546520f2de36e38a7d9c0b68f97225f605a96ecf1b0f559a` |
| 19 | `theorem` | [mk_im](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/mk-im--ebc9e1334a9035bb95fc3694.md) | 92 | `result-track:ebc9e1334a9035bb95fc3694bb2efb6791d2c32e4335b03ba024826650395302` |
| 20 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/coe-mk--547677f13b1c7d4fa9041a9c.md) | 95 | `result-track:547677f13b1c7d4fa9041a9cd8b8a65bdb36647cd3346a8b487066ec48488ab3` |
| 21 | `theorem` | [mk_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/mk-coe--32c67882e8a51a070fb2bc84.md) | 99 | `result-track:32c67882e8a51a070fb2bc84aaf7ecc2eab782b227edd4405dac573d31c42303` |
| 22 | `lemma` | [I_im](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/i-im--d54b57b477ce17ffec790303.md) | 103 | `result-track:d54b57b477ce17ffec79030393d92e21840318207f6994f5dde92c08bdb6a398` |
| 23 | `lemma` | [I_re](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/i-re--1488f7f9f749dc06d0fd54d1.md) | 106 | `result-track:1488f7f9f749dc06d0fd54d130ceea05266d8edb2f72c0509cf19aa46f3f5c6e` |
| 24 | `lemma` | [coe_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/coe-i--36610490630b54eb15901687.md) | 109 | `result-track:36610490630b54eb15901687d079f5f1f23a09a318c1fcc71b2597a2fc5eac0b` |
| 25 | `theorem` | [re_add_im](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/re-add-im--75b603aa775c308aa91d5870.md) | 111 | `result-track:75b603aa775c308aa91d5870d6ccfd6af116f1df563dad04e0548661ca7d6d56` |
| 26 | `theorem` | [im_pos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/im-pos--771f9ecf414a73ce5da91a5e.md) | 114 | `result-track:771f9ecf414a73ce5da91a5edc1286c104dc18db0e9124e5cb42fb8cb81bd26a` |
| 27 | `theorem` | [im_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/im-ne-zero--9c9c7a410766ff82c779314f.md) | 116 | `result-track:9c9c7a410766ff82c779314fcd14ed93237d9b3a576e5784f02a8a6ac372fa4b` |
| 28 | `theorem` | [ne_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/ne-zero--475f2d332d4ac71fa6abc6f7.md) | 119 | `result-track:475f2d332d4ac71fa6abc6f797a046d30e330601b252f9d00912484e30a6f5af` |
| 29 | `lemma` | [mem_slitPlane](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/mem-slitplane--4dd532180a1169611e424b75.md) | 122 | `result-track:4dd532180a1169611e424b752eef60ea0b68139bff36c2bfbefe4bba623aaa7e` |
| 30 | `lemma` | [eq_of_re_of_norm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/eq-of-re-of-norm--2ac1b1a41ff4627fdfe8778d.md) | 127 | `result-track:2ac1b1a41ff4627fdfe8778d5be1b69fa3dff6149112006ac9253dc4f0ddbcbe` |
| 31 | `def` | [evalUpperHalfPlaneIm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/evalupperhalfplaneim--7aae1d544519ef42c8030684.md) | 141 | `declaration-track:7aae1d544519ef42c8030684efebdb55d72d0d35b7e8aaa0ccd5054b182477a3` |
| 32 | `def` | [evalUpperHalfPlaneCoe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/evalupperhalfplanecoe--c1eff8cb632650d523c1fdef.md) | 151 | `declaration-track:c1eff8cb632650d523c1fdefe82de2be7f4a0a8d1d5c09cbc898aec24e8b9a63` |
| 33 | `theorem` | [normSq_pos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/normsq-pos--becbc5ef9524ce9fea86f070.md) | 163 | `result-track:becbc5ef9524ce9fea86f0708f8b86b9a46f34f07f44b0b16aea193bb35a23e1` |
| 34 | `theorem` | [normSq_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/normsq-ne-zero--d00f25c481ed6f58ce3ff049.md) | 166 | `result-track:d00f25c481ed6f58ce3ff049e9a30397c3199dfebf5de9a1023bccaa153846ff` |
| 35 | `theorem` | [im_inv_neg_coe_pos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/im-inv-neg-coe-pos--aec28589ac5f56511e5a2472.md) | 169 | `result-track:aec28589ac5f56511e5a24723721bb26a8d91e3151dac11841c967578c6865b2` |
| 36 | `lemma` | [im_pnat_div_pos](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/im-pnat-div-pos--553365c1436721047569da57.md) | 172 | `result-track:553365c1436721047569da57f2b200d453fa6e78ee104313931b7cb3fda2c840` |
| 37 | `lemma` | [ne_ofReal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/ne-ofreal--68934429e2847459bad4b939.md) | 176 | `result-track:68934429e2847459bad4b9390e2fa5115aec9b6cf6606c4c152d705145ea0e01` |
| 38 | `lemma` | [ne_intCast](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/ne-intcast--d2c78df963c9b38742e564e3.md) | 179 | `result-track:d2c78df963c9b38742e564e3013acf3ceaf480b738687bcdb27e7d7a41e7acab` |
| 39 | `lemma` | [ne_natCast](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/ne-natcast--a017bbddb04612fe2a235bf0.md) | 181 | `result-track:a017bbddb04612fe2a235bf073c2c8604ad4d0f48b856e4152e179a95db8d67f` |
| 40 | `instance` | [posRealAction](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/posrealaction--96ea893495bcf2ec8b81cdf8.md) | 185 | `declaration-track:96ea893495bcf2ec8b81cdf890b2867e08a91d9da148fe9ef2963e54157afc89` |
| 41 | `theorem` | [coe_pos_real_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/coe-pos-real-smul--e7e9f27f5414f8c8df3ec5d7.md) | 193 | `result-track:e7e9f27f5414f8c8df3ec5d7fb2b773de65ee900da145fc83b62a1c4138539d1` |
| 42 | `theorem` | [pos_real_im](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/pos-real-im--bda9337076fcc9da1200b75a.md) | 197 | `result-track:bda9337076fcc9da1200b75aac10438033df66231725406ec30faa0776b79509` |
| 43 | `theorem` | [pos_real_re](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/pos-real-re--5b8fa6ed1865fe21f81ea6de.md) | 201 | `result-track:5b8fa6ed1865fe21f81ea6debc24c2d33a2c38b334d426f55752e94c0ec11e2d` |
| 44 | `theorem` | [pos_real_smul_injective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/pos-real-smul-injective--43a77d8dfe6bec5fc340d078.md) | 204 | `result-track:43a77d8dfe6bec5fc340d078e2c1d8bf1cbfe9799a4e73cc7d9362fb50db5467` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/instance--53fb7e3fcf6826799ca08f5c.md) | 213 | `declaration-track:53fb7e3fcf6826799ca08f5cc3b9d9f48782901781c7990838c68d5b471834a2` |
| 46 | `theorem` | [coe_vadd](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/coe-vadd--55028e99dc511f7ef51f80d0.md) | 221 | `result-track:55028e99dc511f7ef51f80d0568e2dd14ff5d52b15b195f5435ba6ed0c787778` |
| 47 | `theorem` | [vadd_re](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/vadd-re--3a4afef18d50aca0792b10be.md) | 225 | `result-track:3a4afef18d50aca0792b10be6f09f386bb8bfdd7afddae9c89b92fc46ba8f677` |
| 48 | `theorem` | [vadd_im](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/vadd-im--d8e89bf4fd70f107f64604a8.md) | 229 | `result-track:d8e89bf4fd70f107f64604a833a7f0a09dbb5a9bb1f2834e72ca4b539785c030` |
| 49 | `theorem` | [vadd_right_cancel_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/vadd-right-cancel-iff--13d2f7d56c4419410102f470.md) | 233 | `result-track:13d2f7d56c4419410102f470d38662a22785ce62757ef05dc1b7abed97c451cc` |
| 50 | `theorem` | [vadd_left_injective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/vadd-left-injective--5d1ffc14837b08dcb37bbf98.md) | 236 | `result-track:5d1ffc14837b08dcb37bbf9859ce10408c1fc614368f2bacb198ac2b521454bc` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/instance--40f93763244364b772cf1b96.md) | 239 | `declaration-track:40f93763244364b772cf1b96405568ac4b47889784fcf336eb3a81f0ca66e280` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/instance--70dbf71bd3aae389870b4d6f.md) | 242 | `declaration-track:70dbf71bd3aae389870b4d6f42e8eeb4e10f95ea54b72717c702203a71937c85` |
| 53 | `abbrev` | [upperHalfPlaneSet](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/upperhalfplaneset--0f34144a5937115ca455f0fb.md) | 250 | `declaration-track:0f34144a5937115ca455f0fb6ea72b05b1e226ee503f91d5ea37776fa03f5ef4` |
| 54 | `lemma` | [isOpen_upperHalfPlaneSet](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/isopen-upperhalfplaneset--451772fa0212e1c0daacd005.md) | 254 | `result-track:451772fa0212e1c0daacd0058a6817f20fef410c3619b4accf26b9747b297f37` |
| 55 | `theorem` | [range_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantee7fb10e18052341ab1a7747a6273359669e0d32c16a9ee495151b154287477c.lean/declarations/range-coe--628fa82b5f2c43f122bf0789.md) | 257 | `result-track:628fa82b5f2c43f122bf0789e10c713a747cb90ac54fd38230ea9d0bee45b093` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
