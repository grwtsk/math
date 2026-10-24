# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddLat.Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd87670def7f658117197b9e0527b0805b8aa97c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd87670def7f658117197b9e0527b0805b8aa97c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Unique` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BddOrd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.Lat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.Semilat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.WithTopBot` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/bddlat--455222d4a59c1adb820eaca6.md) | 27 | `declaration-track:455222d4a59c1adb820eaca64251925268c6f72c7f1b207f99969caf9f30efde` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/instance--24c271672a716aeb1dc560c3.md) | 35 | `declaration-track:24c271672a716aeb1dc560c3802183cae9351e8e7d29e8c36e10d0b3331c62ce` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/of--243f37f1bec6c1d4a5063865.md) | 41 | `declaration-track:243f37f1bec6c1d4a5063865564384703b693ddb6cd9a902bbd2e28f48a9bcf1` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/coe-of--480a5a3f795d9e7ff61323b4.md) | 44 | `result-track:480a5a3f795d9e7ff61323b40cd2516bebea718c2958eb8f82279c0a054f67bd` |
| 5 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/hom--c74e5adfa9f27183664d9d48.md) | 49 | `declaration-track:c74e5adfa9f27183664d9d487ce010deb64b61ab374e34fa56055fe4a291a0f3` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/instance--999ce290698e953df5ee43c7.md) | 54 | `declaration-track:999ce290698e953df5ee43c7851d073367a8536c81d267636074dfeaad14d054` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/instance--89ddd449a606bd61d63ae332.md) | 57 | `declaration-track:89ddd449a606bd61d63ae33208e22d4ff0214c01a901620fbe3ec5af3e1108f5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/instance--3166ca5e431fd0b7edc3146a.md) | 62 | `declaration-track:3166ca5e431fd0b7edc3146a813c09c8c234f15df057932e06a7d169063164a1` |
| 9 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/hom-hom--88da3ab34212d2eabd826286.md) | 67 | `declaration-track:88da3ab34212d2eabd82628672bbfeed369ed96cfc2da0093f07f39c58780703` |
| 10 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/ofhom--0212823d26903a3fe0ac5145.md) | 71 | `declaration-track:0212823d26903a3fe0ac51454075f2deaf455fe90bede36c81154626dddb9c4e` |
| 11 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/hom-simps-hom--3735644c4e47c012f4cd701c.md) | 77 | `declaration-track:3735644c4e47c012f4cd701c59f69f1b3aab151e95870e029ad79bc495935205` |
| 12 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/hom-id--ac79547f8c3cb7a7ce3f7e24.md) | 83 | `result-track:ac79547f8c3cb7a7ce3f7e2451def234f55e21167a195719423ccb083d99f0d5` |
| 13 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/id-apply--2ac3f48d511c27fe1200bbd2.md) | 86 | `result-track:2ac3f48d511c27fe1200bbd27450f84a839aa2da2b051a3398b0665d405cb2f5` |
| 14 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/hom-comp--d3c1525a0888115e44880f6c.md) | 90 | `result-track:d3c1525a0888115e44880f6c53e4f07e829956de91700607d96c5f1b9bac4e56` |
| 15 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/comp-apply--59c6e2bd2a2e6655b16cb70d.md) | 94 | `result-track:59c6e2bd2a2e6655b16cb70d0affea1133aa4500e4f0bf1fc9f45e4b38fae32a` |
| 16 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/ext--db7b6e77ebdc8f8fbe1c048e.md) | 98 | `result-track:db7b6e77ebdc8f8fbe1c048e33d70e2344bce2eb00931289120d72fc76f13662` |
| 17 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/hom-ext--74680d1b3c03746f3367b2bf.md) | 102 | `result-track:74680d1b3c03746f3367b2bf02ece8b628ccb5f42b2cc94f33ebe378e4fb7ff8` |
| 18 | `instance` | [hasForgetToBddOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/hasforgettobddord--d375eec9fc2d4c806f7e5ccd.md) | 105 | `declaration-track:d375eec9fc2d4c806f7e5ccd2f840ea10f1be90133361d527c3d6a00d520bd25` |
| 19 | `instance` | [hasForgetToLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/hasforgettolat--a7d9b7da96f9bb25bd0cbb46.md) | 109 | `declaration-track:a7d9b7da96f9bb25bd0cbb46c08b04f6916ae95823841bcb1ee2ba69b80558ea` |
| 20 | `instance` | [hasForgetToSemilatSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/hasforgettosemilatsup--cda1b3252e8671b107bfa6ec.md) | 113 | `declaration-track:cda1b3252e8671b107bfa6ec6cf084c875114bffd51f5cbe688d9dfb8c62fb2b` |
| 21 | `instance` | [hasForgetToSemilatInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/hasforgettosemilatinf--d7b19bc59956bfe28081ad13.md) | 117 | `declaration-track:d7b19bc59956bfe28081ad13b5f4fa860224aead834adc499ce3a6cfc436495a` |
| 22 | `theorem` | [coe_forget_to_bddOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/coe-forget-to-bddord--81909a1c2b314210a33ac6ca.md) | 122 | `result-track:81909a1c2b314210a33ac6cae49da356cb6a18fe925f74bea6f71c7a0b80e0ff` |
| 23 | `theorem` | [coe_forget_to_lat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/coe-forget-to-lat--dd681334af527a7db30e64c8.md) | 126 | `result-track:dd681334af527a7db30e64c83b7d990bed893346536ba7ffe0cce042d22e4aac` |
| 24 | `theorem` | [coe_forget_to_semilatSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/coe-forget-to-semilatsup--6d39dd71e8a22589a4a19803.md) | 130 | `result-track:6d39dd71e8a22589a4a19803776175ce1242ce1969491b62c6056ae1264d239c` |
| 25 | `theorem` | [coe_forget_to_semilatInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/coe-forget-to-semilatinf--a68c969385f0328271df46cc.md) | 135 | `result-track:a68c969385f0328271df46cc26a7ddf9aace44cc26d77595f6a140761a4ba9f4` |
| 26 | `theorem` | [forget_lat_partOrd_eq_forget_bddOrd_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/forget-lat-partord-eq-forget-bddord-partord--ff99799ab315d41294962cad.md) | 139 | `result-track:ff99799ab315d41294962cade6b0691bf3bad3ca7dfec93bb942ccb8eaf4bf0a` |
| 27 | `theorem` | [forget_semilatSup_partOrd_eq_forget_bddOrd_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/forget-semilatsup-partord-eq-forget-bddord-partord--a66ddc09bb6dda61a05709b8.md) | 144 | `result-track:a66ddc09bb6dda61a05709b833b6c6911fa10936c407b5a881a2f62f15b77048` |
| 28 | `theorem` | [forget_semilatInf_partOrd_eq_forget_bddOrd_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/forget-semilatinf-partord-eq-forget-bddord-partord--f1e9768663db4c5a6de83672.md) | 149 | `result-track:f1e9768663db4c5a6de83672ab225664d798608dec62f2f176f99ee9f929ed03` |
| 29 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/iso-mk--96c70789bba4d30adee634be.md) | 157 | `declaration-track:96c70789bba4d30adee634be833952d371bca18aaca1180800bdd9484ce18530` |
| 30 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/dual--6e91103ab5730d0ac51529b2.md) | 165 | `declaration-track:6e91103ab5730d0ac51529b2516a4bc3f0b19a8335ec182f889048740c149b74` |
| 31 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/dualequiv--80a9e1d547c86a553f584c25.md) | 171 | `declaration-track:80a9e1d547c86a553f584c252bf15f80e712b8f7be60bdeb62a74152b7954c3f` |
| 32 | `theorem` | [bddLat_dual_comp_forget_to_bddOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/bddlat-dual-comp-forget-to-bddord--e9a1ab5b4cb5c3517aa1ddd9.md) | 179 | `result-track:e9a1ab5b4cb5c3517aa1ddd960b7312b6382741e6e74e0719e81f0b631c2afaf` |
| 33 | `theorem` | [bddLat_dual_comp_forget_to_lat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/bddlat-dual-comp-forget-to-lat--cfa0a43e15cb96afccf4fd33.md) | 184 | `result-track:cfa0a43e15cb96afccf4fd33219d97160c2c99e686b12d77410b8be32603cc49` |
| 34 | `theorem` | [bddLat_dual_comp_forget_to_semilatSupCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/bddlat-dual-comp-forget-to-semilatsupcat--d147bcbe1b1af102392ef723.md) | 188 | `result-track:d147bcbe1b1af102392ef7238887d128abf7414df0d21d64c515bf035df1c94c` |
| 35 | `theorem` | [bddLat_dual_comp_forget_to_semilatInfCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/bddlat-dual-comp-forget-to-semilatinfcat--9ad2fd06e34e055fb67e9c33.md) | 193 | `result-track:9ad2fd06e34e055fb67e9c33643ffc8aee2940708197bb33d3bcbd6e0d83ac9e` |
| 36 | `def` | [latToBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/lattobddlat--8f4964c96ba72d14732baba7.md) | 199 | `declaration-track:8f4964c96ba72d14732baba7a11d264fffb9f48231ee418de274487959104992` |
| 37 | `def` | [latToBddLatForgetAdjunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/lattobddlatforgetadjunction--06c189537b6827332da11196.md) | 205 | `declaration-track:06c189537b6827332da1119695065845bf777d44306fb8734a9c2fa2a7de098a` |
| 38 | `def` | [latToBddLatCompDualIsoDualCompLatToBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variantcb16a4f4f8bae31bde02e7d782b85b63bddadb2655fd762cfafed69b30419800.lean/declarations/lattobddlatcompdualisodualcomplattobddlat--1f1287effec752e6e43420b1.md) | 229 | `declaration-track:1f1287effec752e6e43420b1a6ac78237ab83b8bd15bc497b1f313c02a61c8b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
