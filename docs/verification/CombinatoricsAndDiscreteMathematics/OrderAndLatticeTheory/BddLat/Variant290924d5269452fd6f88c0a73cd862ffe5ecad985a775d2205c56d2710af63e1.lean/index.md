# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BddLat.Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b6739a73c1ce719ef015c37ee3997bd428a70cb",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b6739a73c1ce719ef015c37ee3997bd428a70cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Unique` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BddOrd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.Lat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.Semilat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.WithTopBot` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/bddlat--1ce920c43dbe18d5c5a1a454.md) | 35 | `declaration-track:1ce920c43dbe18d5c5a1a4541d32046f7bd9ef35275252891593cf478128b252` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/instance--167d7562b2dd41636fa9dc78.md) | 43 | `declaration-track:167d7562b2dd41636fa9dc78ac9d50d3b17de50c260a4e9b5fe428cb2b8bac10` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/of--4adb3ee8a20fc00ad5a154f2.md) | 49 | `declaration-track:4adb3ee8a20fc00ad5a154f2a502def2c67d58901856811622639a15dd7ff812` |
| 4 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/coe-of--91f38a556290d82e57bd1ea9.md) | 52 | `result-track:91f38a556290d82e57bd1ea91dba2bd5780489b6aebb1a5bb3826b61fa145060` |
| 5 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/hom--fcc45f10a8b926c9a4c3e329.md) | 57 | `declaration-track:fcc45f10a8b926c9a4c3e329dc28bfd46f235b73eacfb10a2e1b797520b2858e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/instance--081bcd7a4d4be575bad38e87.md) | 62 | `declaration-track:081bcd7a4d4be575bad38e8720587f97e1dc3a6a6f7278edadb071df66cabf50` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/instance--03987a9e21d218adaf831363.md) | 65 | `declaration-track:03987a9e21d218adaf83136336d1803ed6e1678992f8144b5834f55ee989f8b6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/instance--8e37f43eaa63dc594392af3d.md) | 70 | `declaration-track:8e37f43eaa63dc594392af3d45866173eae479a2e681215c6ebb191091ad8a8c` |
| 9 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/hom-hom--e754dead28ad4b3e5974437b.md) | 75 | `declaration-track:e754dead28ad4b3e5974437b2839f7bbc975713219e612af0a88a38aca340ad9` |
| 10 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/ofhom--03a0d83841e38e872eb047c8.md) | 79 | `declaration-track:03a0d83841e38e872eb047c8785514fa2cb9820995f08c7b1efa2e4082f141d1` |
| 11 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/hom-simps-hom--016b086edffd63658cbc7598.md) | 85 | `declaration-track:016b086edffd63658cbc7598b8f7b6fc993f5a713c0931f110f86c476f956bf8` |
| 12 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/hom-id--72183abebafb1f33d0794339.md) | 91 | `result-track:72183abebafb1f33d0794339e4d347e3edca67914cef74460fb514e5c01175ff` |
| 13 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/id-apply--78914f82817ac119f5e37ff2.md) | 94 | `result-track:78914f82817ac119f5e37ff26f82dab141ea087512dca49025dfd2938760fe49` |
| 14 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/hom-comp--edea0c85ea9ab444755c67a4.md) | 98 | `result-track:edea0c85ea9ab444755c67a457f45f04da50941266cabdedc0a785211b6336cf` |
| 15 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/comp-apply--16b811947325968ac6da3715.md) | 102 | `result-track:16b811947325968ac6da3715fc3bb2f205328b5d5abfb1da56146c6f5b7d87a3` |
| 16 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/ext--3391e33c158cd14ad0826a99.md) | 106 | `result-track:3391e33c158cd14ad0826a99598c8937cec79af0cea9fd4b2069536f8be29b9b` |
| 17 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/hom-ext--25d8f55ad9e6439013dae2d9.md) | 110 | `result-track:25d8f55ad9e6439013dae2d909aa7a740f60911b6c602fd052726776042edcbf` |
| 18 | `instance` | [hasForgetToBddOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/hasforgettobddord--d83301a8492e5ff47c5c2b47.md) | 113 | `declaration-track:d83301a8492e5ff47c5c2b479021aae76ef3131cb4eb2a6c3f64ea4a984e3703` |
| 19 | `instance` | [hasForgetToLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/hasforgettolat--a25e1591a82a73706a7cc6b6.md) | 117 | `declaration-track:a25e1591a82a73706a7cc6b6687171344d9dc38c5f04968262cf68297ed9141c` |
| 20 | `instance` | [hasForgetToSemilatSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/hasforgettosemilatsup--027a6c55801c9339909d088e.md) | 121 | `declaration-track:027a6c55801c9339909d088e2224813d5b5d9b686d63dda9f3232bcb2e7584fa` |
| 21 | `instance` | [hasForgetToSemilatInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/hasforgettosemilatinf--8d8f5c47bb093e2931cd5072.md) | 125 | `declaration-track:8d8f5c47bb093e2931cd507228fcfa7f8ff6ed46491edcd38748eafbfef9e6b2` |
| 22 | `theorem` | [coe_forget_to_bddOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/coe-forget-to-bddord--7012df9f9d8cb2bf4fec1a7a.md) | 130 | `result-track:7012df9f9d8cb2bf4fec1a7a931769434fea512010887d680da2899ee7e74c05` |
| 23 | `theorem` | [coe_forget_to_lat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/coe-forget-to-lat--9e7b0d41414afa11c17959c7.md) | 134 | `result-track:9e7b0d41414afa11c17959c769fca0314d4d04e7290db5746fe25475fa0d19db` |
| 24 | `theorem` | [coe_forget_to_semilatSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/coe-forget-to-semilatsup--8bf50965337364e91ab088a6.md) | 138 | `result-track:8bf50965337364e91ab088a6e298f7165c49ee013102ff1c9065f0a1db9719a2` |
| 25 | `theorem` | [coe_forget_to_semilatInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/coe-forget-to-semilatinf--782a99faca72850bd850e19e.md) | 143 | `result-track:782a99faca72850bd850e19ec99afd1787f1e656cd0bd41003a93bd0c606b06b` |
| 26 | `theorem` | [forget_lat_partOrd_eq_forget_bddOrd_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/forget-lat-partord-eq-forget-bddord-partord--6ccdb979efcac10a41c81666.md) | 147 | `result-track:6ccdb979efcac10a41c81666513c0d2f6c989563c2b4fb998e36f3bf97716491` |
| 27 | `theorem` | [forget_semilatSup_partOrd_eq_forget_bddOrd_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/forget-semilatsup-partord-eq-forget-bddord-partord--30587099f55fde78a3b6f6ac.md) | 152 | `result-track:30587099f55fde78a3b6f6ac2f5f52cf5f6b8c53fe3930a82d204b45c858dc10` |
| 28 | `theorem` | [forget_semilatInf_partOrd_eq_forget_bddOrd_partOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/forget-semilatinf-partord-eq-forget-bddord-partord--5d8e5b84ea27df724cd5fcfb.md) | 157 | `result-track:5d8e5b84ea27df724cd5fcfb99d79d22ef5a58e60121811358e5b2e8f827e6ef` |
| 29 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/iso-mk--cb0b5044dd6a91f3b6cbcb25.md) | 165 | `declaration-track:cb0b5044dd6a91f3b6cbcb2599e821ae9fe978c6c3e978f72de9fc1fcb99dd0d` |
| 30 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/dual--5df6b3c0fde3af19311a6f97.md) | 173 | `declaration-track:5df6b3c0fde3af19311a6f9724e1d224b44d2a673040a1a289cdf99262d99a60` |
| 31 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/dualequiv--27e1497514147f26577691fd.md) | 179 | `declaration-track:27e1497514147f26577691fdae87b0fe54c340a639ecd0c0e64dcda2eb4425ca` |
| 32 | `theorem` | [bddLat_dual_comp_forget_to_bddOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/bddlat-dual-comp-forget-to-bddord--3191c8e11643a0edc753c704.md) | 187 | `result-track:3191c8e11643a0edc753c704b5f025737aa109726e54d29b4a0b9bad86a60541` |
| 33 | `theorem` | [bddLat_dual_comp_forget_to_lat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/bddlat-dual-comp-forget-to-lat--ce5bbe66399660fe51d6879b.md) | 192 | `result-track:ce5bbe66399660fe51d6879bd7972939cae5333fb651538471b61b74a5aa49c0` |
| 34 | `theorem` | [bddLat_dual_comp_forget_to_semilatSupCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/bddlat-dual-comp-forget-to-semilatsupcat--d27dd4bc26b3dae963d0e191.md) | 196 | `result-track:d27dd4bc26b3dae963d0e1919489aaf33d0692cba24dd54c1bb2e67fc519312c` |
| 35 | `theorem` | [bddLat_dual_comp_forget_to_semilatInfCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/bddlat-dual-comp-forget-to-semilatinfcat--ab6bd06baf6578d665d50269.md) | 201 | `result-track:ab6bd06baf6578d665d50269e39e7e35b3d5dba99faac75086b203c1bdad5301` |
| 36 | `def` | [latToBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/lattobddlat--c228776e54ece68cd4e310f1.md) | 207 | `declaration-track:c228776e54ece68cd4e310f18575d617aaf61a81c5cd1a579159bed14dda352d` |
| 37 | `def` | [latToBddLatForgetAdjunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/lattobddlatforgetadjunction--7b638ce6ebce664b0702b665.md) | 213 | `declaration-track:7b638ce6ebce664b0702b665ede4763f78b441eee8273e77ed49f3645b2d8c8b` |
| 38 | `def` | [latToBddLatCompDualIsoDualCompLatToBddLat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLat/Variant290924d5269452fd6f88c0a73cd862ffe5ecad985a775d2205c56d2710af63e1.lean/declarations/lattobddlatcompdualisodualcomplattobddlat--1aa733a7eea5309cadcc8c75.md) | 237 | `declaration-track:1aa733a7eea5309cadcc8c7501ca51be25b7864e28ced4fdd2454acde03216e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
