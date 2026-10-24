# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lat.Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2951d344c9167953e75d8dbc72f78ef619e6ccc",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2951d344c9167953e75d8dbc72f78ef619e6ccc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.PartOrd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Lat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/lat--cf542d9bbb538cae454bcfc6.md) | 36 | `declaration-track:cf542d9bbb538cae454bcfc6bcc6b31a1c783aa83a82b42d85fae805fc04ab1b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/instance--8832e2c746c87f2f6920ca25.md) | 47 | `declaration-track:8832e2c746c87f2f6920ca25384c773adc9946808346e61969051d20487f2593` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/of--574d7af6999871a6e7090cba.md) | 53 | `declaration-track:574d7af6999871a6e7090cba02d7d50404d701740a8d61dba39b6953d1a9a1c8` |
| 4 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/hom--a8210707c058ff4a6ecd410b.md) | 57 | `declaration-track:a8210707c058ff4a6ecd410b19791f0958db68183df6eba67e0938a63fa37c7a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/instance--b669b1b616b03b295a9a926f.md) | 62 | `declaration-track:b669b1b616b03b295a9a926fd2373e993dd38b48373300e1a979040434bfaece` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/instance--0b75d74a1158839ae129d9d6.md) | 67 | `declaration-track:0b75d74a1158839ae129d9d60f505bfd2676341c04886f762a84c6431e55a2ad` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/hom-hom--e6a8f5ca672328cba7a4994c.md) | 72 | `declaration-track:e6a8f5ca672328cba7a4994c38aa2bb1a789ba31d5081b70c64f184ea06e063b` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/ofhom--0d4151ad85de6cb0e0fcee36.md) | 76 | `declaration-track:0d4151ad85de6cb0e0fcee36bf60af37286e01121a86f138d5d3153574d8580b` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/hom-simps-hom--0a301537c90d8a1edcf800d8.md) | 81 | `declaration-track:0a301537c90d8a1edcf800d8041170edd63ec8a805943f2fbec34776eda3a792` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/coe-id--eca7f17406c33ec122e1927e.md) | 91 | `result-track:eca7f17406c33ec122e1927e3224f01acfad7957ec8b1ffe77257005393e887c` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/coe-comp--694225e7c6d66fc97fc07308.md) | 94 | `result-track:694225e7c6d66fc97fc0730857865236a077e393e90283e6b4608f9ff92ee779` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/forget-map--53dfcbdda0a4b048b0e02504.md) | 97 | `result-track:53dfcbdda0a4b048b0e02504f666abb0488517e61205d677fd139b83af96c394` |
| 13 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/ext--7372ce52dbcc029efde2e3cf.md) | 101 | `result-track:7372ce52dbcc029efde2e3cf737996519301a53fafe07d4aa3cc69d34c2e0cf5` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/coe-of--c424019920293ecd2b5552b1.md) | 105 | `result-track:c424019920293ecd2b5552b1875f496062debb515526d771924c54c9907e12aa` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/hom-id--2b2db8c0c51d84699c84d523.md) | 108 | `result-track:2b2db8c0c51d84699c84d5232c9aa2b32281639713959c48ef54e0d0a24afe6d` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/id-apply--12649e24ddc8ba63f3b6f4d0.md) | 111 | `result-track:12649e24ddc8ba63f3b6f4d0a091c45d0081a6da8bd42f5e8020214ace3b0388` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/hom-comp--284ca24a95df4ca4eefc77c9.md) | 115 | `result-track:284ca24a95df4ca4eefc77c951a83f573528cdd1856adb50d5a47fe719aac2be` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/comp-apply--005fca4a8e37e55d6d116daf.md) | 119 | `result-track:005fca4a8e37e55d6d116dafc5159bd39e630a856c3e0b283e6a030e9f403610` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/hom-ext--733db6d263f396300174d721.md) | 123 | `result-track:733db6d263f396300174d721d7d07f26087b7981ab6de3e97305b093cc5e3bed` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/hom-ofhom--6ed390e640126ffd7e69719e.md) | 127 | `result-track:6ed390e640126ffd7e69719e0bf64a3b8aa90ec21be2df68f732961e8f386cc9` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/ofhom-hom--d09f9c51d35513598f43db47.md) | 131 | `result-track:d09f9c51d35513598f43db47d19b79d3c5a944c5f9e9ab98f986d2ab82bcf3b5` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/ofhom-id--c112eb69d9217833fa88658d.md) | 135 | `result-track:c112eb69d9217833fa88658ddc671f26255a518950b6cfac7b6eb8769bb7d17d` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/ofhom-comp--7609d7fa26600c387975448b.md) | 138 | `result-track:7609d7fa26600c387975448b9d6658da1f597760dc360e8efd2a1c24a00aaf14` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/ofhom-apply--e91b8cd9bd5f1f2226d020d4.md) | 143 | `result-track:e91b8cd9bd5f1f2226d020d447c4d94087333ca9bc229203dd20ed1ca5eefe75` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/inv-hom-apply--837e5cc779a8d0db9ce884ab.md) | 146 | `result-track:837e5cc779a8d0db9ce884ab8deeac324cdfef02b32aec0f2792692c7d05f2dd` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/hom-inv-apply--b820c14b1bfbec85a37d9802.md) | 149 | `result-track:b820c14b1bfbec85a37d98022676fc16f64b19864849b47248a8aee7823443e0` |
| 27 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/hasforgettopartord--18e1830d04d14d4767eb442d.md) | 152 | `declaration-track:18e1830d04d14d4767eb442d1945ebd6fd25bdb94b32da7dc45360c313d5af10` |
| 28 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/iso-mk--4cee603c0fdeadf98523ae44.md) | 158 | `declaration-track:4cee603c0fdeadf98523ae445873fc4f9f148729dd848352db5332426222ccc0` |
| 29 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/dual--a478709f602c7f2ddaffd103.md) | 164 | `declaration-track:a478709f602c7f2ddaffd1032e7ca47c747c09a84db5241ce7840a3cd65bd07d` |
| 30 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/dualequiv--c8233c40624364f9390caa54.md) | 170 | `declaration-track:c8233c40624364f9390caa54dd2f2d5ea0a00f958ab4d04bb2c12c6b8f24a6c9` |
| 31 | `theorem` | [Lat_dual_comp_forget_to_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lat/Variant68a4d5bf76fb45c8dffebda64131cd73950dcf74161ba1281f41a9bbd7728505.lean/declarations/lat-dual-comp-forget-to-partord--a509e04be1fee1ae0945a969.md) | 178 | `result-track:a509e04be1fee1ae0945a969f921413852c89f7d338e6b7add2b850659bf14b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
