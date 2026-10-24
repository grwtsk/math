# Verification target: GRWTSK.Topology.GeneralTopology.ClosedSubmodule.Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "883ffef9136c6c83d3c8130e509d53c996849d78",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `883ffef9136c6c83d3c8130e509d53c996849d78`.

Source path: `GRWTSK/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClosedSubmodule](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/closedsubmodule--33d1878d52cf22796041740c.md) | 32 | `declaration-track:33d1878d52cf22796041740c32413ae6824747d5617a77c24498882d7c60ca74` |
| 2 | `lemma` | [toSubmodule_injective](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/tosubmodule-injective--4eb48b3f7b22321e2c04f314.md) | 45 | `result-track:4eb48b3f7b22321e2c04f314d298206586f13c7faa123aa62ef17f3283266f08` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/instance--bf30a03566a9c47b0292ba25.md) | 48 | `declaration-track:bf30a03566a9c47b0292ba257953c2e3180723a18df95b0ba67e159b4a83c4db` |
| 4 | `lemma` | [toCloseds_injective](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/tocloseds-injective--1ca0a0be8d09a9e216001492.md) | 52 | `result-track:1ca0a0be8d09a9e216001492ce21bde867bc8ad20e2d23d3461f3bdc1d5af821` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/instance--91b0c13b1478a93abac86782.md) | 55 | `declaration-track:91b0c13b1478a93abac867827f4df9bbb9aac3890b98dc7f88403dbcd1571818` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/instance--fb14acdd208c90e78cb18f42.md) | 59 | `declaration-track:fb14acdd208c90e78cb18f4215ce573f7c42c6f32d130cd54cee1099c8c2144d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/instance--b1bf96a91dd795cdefe9e365.md) | 62 | `declaration-track:b1bf96a91dd795cdefe9e3659d4cc6a57f334edd78f4ad964c0bee39fdbc72d9` |
| 8 | `lemma` | [carrier_eq_coe](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/carrier-eq-coe--1dac93709a1a6ae81348e658.md) | 65 | `result-track:1dac93709a1a6ae81348e658428857c8f18263063565c2752639016267f39e08` |
| 9 | `lemma` | [mem_mk](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/mem-mk--04bffdc9218a3ec7641103a5.md) | 67 | `result-track:04bffdc9218a3ec7641103a54aa651b41bb16cef081f9393add7f56550cb1416` |
| 10 | `lemma` | [coe_toSubmodule](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/coe-tosubmodule--3c7973f0770bf158efe9892b.md) | 70 | `result-track:3c7973f0770bf158efe9892b91cccdf62cdae1e9138aadcfbf00d0eb88ccd9ca` |
| 11 | `lemma` | [coe_toCloseds](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/coe-tocloseds--3a4d34616fbb40edbda565e8.md) | 73 | `result-track:3a4d34616fbb40edbda565e857596fc63a252b3eb500ff1df9b4fd22d60738e7` |
| 12 | `lemma` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/isclosed--7190d5399f384d4b59124963.md) | 75 | `result-track:7190d5399f384d4b591249638d1ff2f366262718b896c72647c0b5f45eea04e6` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/instance--86be4350025ce36a05632605.md) | 79 | `declaration-track:86be4350025ce36a056326055bbf96538013ffe2de252f5b0bc73fd3c9ae537c` |
| 14 | `lemma` | [toSubmodule_le_toSubmodule](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/tosubmodule-le-tosubmodule--ca10bb952d832bfda8542ec1.md) | 82 | `result-track:ca10bb952d832bfda8542ec12011dbac2cf949a796123e2902e822dc5e0a56b1` |
| 15 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/comap--6752115f949adf3926b58f5e.md) | 87 | `declaration-track:6752115f949adf3926b58f5ef09d0e872b89e51a8308cee655041a646a1113c1` |
| 16 | `lemma` | [mem_comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/mem-comap--71eea6d0119599c237278a9f.md) | 92 | `result-track:71eea6d0119599c237278a9f217b305ee172a99a88587df7535b4de7b05d9b83` |
| 17 | `lemma` | [toSubmodule_comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/tosubmodule-comap--9444412526d2af123a3e6e4c.md) | 94 | `result-track:9444412526d2af123a3e6e4cc90a052cf54345f33dc11ef380056ac6a93c8927` |
| 18 | `lemma` | [comap_id](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/comap-id--4cb9369664e266caf50f7607.md) | 97 | `result-track:4cb9369664e266caf50f76073cbe68f52fb49ff2f8fa4406db494bf3a12166cd` |
| 19 | `lemma` | [comap_comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/comap-comap--024b7771e68eb8ded35b704a.md) | 99 | `result-track:024b7771e68eb8ded35b704a0b18f861dfedeba37c9f67faa6e5015ea9ca43ab` |
| 20 | `instance` | [instInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/instinf--ee4452ec91b17324ecc3ed26.md) | 102 | `declaration-track:ee4452ec91b17324ecc3ed26ed7c80726afc9150c6e5532513dd7116fb3bd9e7` |
| 21 | `instance` | [instInfSet](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/instinfset--43695cb3916be57c9eb964ea.md) | 105 | `declaration-track:43695cb3916be57c9eb964eaa82a2c1b703607ab4c6ffd72942c1ac83482ebd9` |
| 22 | `lemma` | [toSubmodule_sInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/tosubmodule-sinf--bf6a267dcc3fe40bb4b2d8ca.md) | 109 | `result-track:bf6a267dcc3fe40bb4b2d8caa32c692a4cd43996f652c51d8d29f473fdc342fd` |
| 23 | `lemma` | [toSubmodule_iInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/tosubmodule-iinf--e94421683c1e1a4b6d233c21.md) | 113 | `result-track:e94421683c1e1a4b6d233c214db7fbba12d957637401922be96e05fdd5057c64` |
| 24 | `lemma` | [coe_sInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/coe-sinf--d0599f2e71aaeebf11ac9747.md) | 117 | `result-track:d0599f2e71aaeebf11ac9747c0643c21c6a8faf0272975548cca6df189338d5c` |
| 25 | `lemma` | [coe_iInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/coe-iinf--bf28e0be0b5a73276d82992b.md) | 121 | `result-track:bf28e0be0b5a73276d82992b8c4ac3594a3c24348df3c7bfb0db56b4830793b8` |
| 26 | `lemma` | [mem_sInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/mem-sinf--d21e1dbc7eba5a1940f01f1d.md) | 124 | `result-track:d21e1dbc7eba5a1940f01f1d839d9ac76db7e09de466c2f043e526bf532e3af3` |
| 27 | `lemma` | [mem_iInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/mem-iinf--58037aa92d958c1c77c5aaa3.md) | 127 | `result-track:58037aa92d958c1c77c5aaa32161d66713d95c65917ca1788192268d69a76129` |
| 28 | `instance` | [instSemilatticeInf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/instsemilatticeinf--e6db26c717f8035877322333.md) | 130 | `declaration-track:e6db26c717f8035877322333fdb328a55580f69c64e6ed0311f5a0a4a6c369fb` |
| 29 | `lemma` | [toSubmodule_inf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/tosubmodule-inf--d55cf9f9137eaacc466a2e50.md) | 134 | `result-track:d55cf9f9137eaacc466a2e50da1c4ea2baf8ccf54fbd74a3517b2166b7687134` |
| 30 | `lemma` | [coe_inf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/coe-inf--f78890593af3bd190f4d3384.md) | 137 | `result-track:f78890593af3bd190f4d3384546c0a54b0e9242a94325532a7dd3b568d75f214` |
| 31 | `lemma` | [mem_inf](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/mem-inf--9ed8b1335f671c3d92ce7235.md) | 139 | `result-track:9ed8b1335f671c3d92ce7235f0f5083d77c81a8404cf02fdbe387658e20ebbad` |
| 32 | `instance` | [instTop](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/insttop--25473a73244a774649d4a249.md) | 141 | `declaration-track:25473a73244a774649d4a249846a9d11c067a7d71963617b649112c5b9615912` |
| 33 | `lemma` | [toSubmodule_top](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/tosubmodule-top--ae3b8252f80b374f1b2cee1e.md) | 143 | `result-track:ae3b8252f80b374f1b2cee1e2b74c74f5d0b021b971171fa8b1809d963834483` |
| 34 | `lemma` | [coe_top](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/coe-top--15727aa786ff9dbde17a0bfa.md) | 145 | `result-track:15727aa786ff9dbde17a0bfa7f27fb7334769fa188f0b141f8e0e384fadc1109` |
| 35 | `lemma` | [mem_top](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/mem-top--2adfb462ded7f26536839bbc.md) | 147 | `result-track:2adfb462ded7f26536839bbc8574820b915825536d0cd1e6fc10b1737adbf443` |
| 36 | `instance` | [instOrderBot](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/instorderbot--3458a588b0f4470ff81404fe.md) | 152 | `declaration-track:3458a588b0f4470ff81404fe5719d6f6c025ead39a1ca74b445418e3d0332cf5` |
| 37 | `lemma` | [toSubmodule_bot](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/tosubmodule-bot--b835ea723890b669da416ff5.md) | 156 | `result-track:b835ea723890b669da416ff51b174ed01578720349c8743750401d34451ebacd` |
| 38 | `lemma` | [coe_bot](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/coe-bot--c44650553f6f577618fe74c1.md) | 158 | `result-track:c44650553f6f577618fe74c1f0f1d60953ad0304ad910880fc0001e8b7ea6084` |
| 39 | `lemma` | [mem_bot](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/mem-bot--e49f24a4470cd628f20d197a.md) | 160 | `result-track:e49f24a4470cd628f20d197a43f5c3795fade2d8c936ef3514576df151886b7e` |
| 40 | `def` | [closure](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/closure--a50d9a0780fde1594d8d0244.md) | 170 | `declaration-track:a50d9a0780fde1594d8d02443ca8869dd656d35086a69297c24ac4612c3b8c69` |
| 41 | `lemma` | [closure_le](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/closure-le--ebebda19509f4fe3673ea2ba.md) | 174 | `result-track:ebebda19509f4fe3673ea2ba5cdc4cc463520298a308a1781f6c4cd0d4e1806f` |
| 42 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/map--44200368bda4d18c912a9277.md) | 187 | `declaration-track:44200368bda4d18c912a9277fbe80ddde8a41209d3079aa8b486681cc7375e54` |
| 43 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/map-id--5e6ed1fe14a8d14be1a9aa9c.md) | 191 | `result-track:5e6ed1fe14a8d14be1a9aa9cd96fe58902d491362f9b3de20274bdaedd4b6c14` |
| 44 | `lemma` | [map_le_iff_le_comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/map-le-iff-le-comap--8200e6d69adc7502f894bec6.md) | 194 | `result-track:8200e6d69adc7502f894bec612483215cd027927b0429852814cadd48ec8ae08` |
| 45 | `lemma` | [gc_map_comap](../../../../../mathematics/Topology/GeneralTopology/ClosedSubmodule/Variantcd8db6c8814193cc061c5ba10a0d056e6ad755a9c4db6fd0eb274ca617f4b1b7.lean/declarations/gc-map-comap--74b3dab3af7108b78a503d6f.md) | 198 | `result-track:74b3dab3af7108b78a503d6f4b80dbc556c89c4095918fe863a0e4fbca836e38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
