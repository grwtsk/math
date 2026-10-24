# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3969414276dae8355c78b567c72492aec4120c7c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3969414276dae8355c78b567c72492aec4120c7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Indicator` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasFiniteMulSupport_fun_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-fun-one--92bc569e57ba6db1bcbaf7d5.md) | 41 | `result-track:92bc569e57ba6db1bcbaf7d56636698ce9345fed0c79092b58b0d5133351f015` |
| 2 | `lemma` | [HasFiniteMulSupport.fun_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-fun-comp--71d291e4b4fea1e97b1fedaf.md) | 45 | `result-track:71d291e4b4fea1e97b1fedafba7ba3ca0aa733e520923df183e1cc390eb46405` |
| 3 | `lemma` | [HasFiniteMulSupport.comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-comp--81f64d1c8cb64e106b6cccb1.md) | 51 | `result-track:81f64d1c8cb64e106b6cccb1e315a927480fda5d60b435057bd661763f17eca7` |
| 4 | `lemma` | [HasFiniteMulSupport.fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-fst--6c1e4d78ba37175bf62fdce0.md) | 57 | `result-track:6c1e4d78ba37175bf62fdce07671cef781775012f4ef32ae06fedf658b0cdf9e` |
| 5 | `lemma` | [HasFiniteMulSupport.snd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-snd--ccee911dde723f4e48de2cca.md) | 62 | `result-track:ccee911dde723f4e48de2cca0846ff9173b190b4f7a8078e67346bce9cdd5b10` |
| 6 | `lemma` | [HasFiniteMulSupport.prodMk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-prodmk--ba0890f396512661c82e01cd.md) | 67 | `result-track:ba0890f396512661c82e01cd47f8d9fc92e6d8b2c7359e035225b32d73f1e24b` |
| 7 | `lemma` | [HasFiniteMulSupport.mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-mul--aaa90a0052fd70cfad3660ed.md) | 75 | `result-track:aaa90a0052fd70cfad3660ed894b9c076a4cd927595103aced9ba0cf1015726b` |
| 8 | `lemma` | [HasFiniteMulSupport.inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-inv--9e83bad2d01e410b92f296a2.md) | 81 | `result-track:9e83bad2d01e410b92f296a2586adb65beea1341bb9d14e0078009fba79361ff` |
| 9 | `lemma` | [HasFiniteMulSupport.prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-prod--69f4c7c6a66ec2e70526805d.md) | 87 | `result-track:69f4c7c6a66ec2e70526805d2c5f560ab3628e4208476e0db7484b36dc0a46b4` |
| 10 | `lemma` | [HasFiniteMulSupport.div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-div--95b0cc2679d25297a3346fae.md) | 93 | `result-track:95b0cc2679d25297a3346fae67df01cd3b505f99b72c3771ae0c55b611304389` |
| 11 | `lemma` | [HasFiniteMulSupport.pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-pow--1afcd897ce69476916fc1777.md) | 99 | `result-track:1afcd897ce69476916fc1777d472b0d279dc0863d28fed1a2ca7c99c1cfeef44` |
| 12 | `lemma` | [HasFiniteMulSupport.zpow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-zpow--ec20397eb48963303bf0dddc.md) | 105 | `result-track:ec20397eb48963303bf0dddc57e5540b3cb05eb1d76ab3bd119c1870c9969dbc` |
| 13 | `lemma` | [HasFiniteMulSupport.max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-max--409b24b3934bbb13f78d926a.md) | 111 | `result-track:409b24b3934bbb13f78d926aba3a64a2ea90dab4fb031a02378111b6f3f5e5f0` |
| 14 | `lemma` | [HasFiniteMulSupport.min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-min--a7147bfaf9379cfb2389ee30.md) | 117 | `result-track:a7147bfaf9379cfb2389ee3021672ef31564e0e99e8c842639d4127c43a4362e` |
| 15 | `lemma` | [HasFiniteMulSupport.sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-sup--0587fd2523d5653943ffe15d.md) | 123 | `result-track:0587fd2523d5653943ffe15df5268f7a24e8c6def07581303fd3fea95b02f524` |
| 16 | `lemma` | [HasFiniteMulSupport.inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-inf--4c20aa0555d180aade6a7aab.md) | 129 | `result-track:4c20aa0555d180aade6a7aabe9d7f98c0ecd9cc81834d3f989db68e2418f5836` |
| 17 | `lemma` | [HasFiniteMulSupport.iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-isup--5d48bf9e3dcd0a8d7c23099b.md) | 135 | `result-track:5d48bf9e3dcd0a8d7c23099babe52a6486668e954774ec0dcc9cb02304b28e14` |
| 18 | `lemma` | [HasFiniteMulSupport.iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-iinf--76c60ef505d88947487a62e2.md) | 141 | `result-track:76c60ef505d88947487a62e27d1d6a04e9ef86cbcb1f0fca30a060a9afe5e773` |
| 19 | `lemma` | [HasFiniteMulSupport.pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-pi--37932be0d2e3ef78965c1613.md) | 147 | `result-track:37932be0d2e3ef78965c16131aa9e5c6680eb88b052559df6480b19849641362` |
| 20 | `lemma` | [HasFiniteMulSupport.sup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-sup--de6f7c8ed9f60ff433ea7cc8.md) | 156 | `result-track:de6f7c8ed9f60ff433ea7cc882d9ad1ec96148f86f530781dc9611d378dd8bb2` |
| 21 | `lemma` | [HasFiniteMulSupport.inf'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-inf--12a29ce2b9527051b9de320e.md) | 166 | `result-track:12a29ce2b9527051b9de320e8f71fe401ea47385cbeafb8caba3b3346dffacd8` |
| 22 | `lemma` | [HasFiniteMulSupport.comp_of_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-comp-of-injective--ca991b8cc525dbff6935761f.md) | 178 | `result-track:ca991b8cc525dbff6935761f8ca41aa4e749ca461744f942a8db241c84758c25` |
| 23 | `lemma` | [HasFiniteMulSupport.fun_comp_of_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-fun-comp-of-injective--29671bab4fe34467d4800957.md) | 184 | `result-track:29671bab4fe34467d4800957496bcfe0be98a83b5e1b63349f3acc6ef6ef697d` |
| 24 | `lemma` | [HasFiniteMulSupport.of_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-of-comp--8bde30b74f555f8c9b01f3f3.md) | 189 | `result-track:8bde30b74f555f8c9b01f3f387f9a154bdd370b56f47e6e889d5ca09f157e37f` |
| 25 | `lemma` | [HasFiniteSupport.hasFiniteMulSupport_fun_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitesupport-hasfinitemulsupport-fun-pow--d61ced1177cbbc39e8d84ba6.md) | 197 | `result-track:d61ced1177cbbc39e8d84ba6d96063bf6ea7bce3c0dd34f691f86daff6af94bf` |
| 26 | `lemma` | [HasFiniteMulSupport.of_eq_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitemulsupport-of-eq-one-iff--64539fe21ef575fbdbb8d966.md) | 203 | `result-track:64539fe21ef575fbdbb8d96686af6439e2a2398c935ebeee8655d17d112e2ecb` |
| 27 | `lemma` | [HasFiniteSupport.mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitesupport-mul-left--7626ff61ed1373b5c6657e71.md) | 213 | `result-track:7626ff61ed1373b5c6657e71cace06926f405bfcd08126e17c5d13d6f1a07c64` |
| 28 | `lemma` | [HasFiniteSupport.mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/hasfinitesupport-mul-right--cf0231f2cbffa0695c03609f.md) | 218 | `result-track:cf0231f2cbffa0695c03609f4c4b00fa81d4a2e1f063fdd6e902f0ab0ca61932` |
| 29 | `lemma` | [Multiset.hasFiniteSupport_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/multiset-hasfinitesupport-count--769c917ac8d3bc3c2a3d4692.md) | 227 | `result-track:769c917ac8d3bc3c2a3d46925f20872490d37c8733d8347ac2e0a325965e775a` |
| 30 | `lemma` | [smul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/smul-left--cd30256ac0706beb9f7fd84c.md) | 240 | `result-track:cd30256ac0706beb9f7fd84c686bc3c202464d375d08897daadafeec26b5c6ad` |
| 31 | `lemma` | [smul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantc3cd0bf49676bd9eef84f1267149f0aa007710929e4110a9f12e80c6f119521b.lean/declarations/smul-right--3340a1d267596fd4e937b9f7.md) | 245 | `result-track:3340a1d267596fd4e937b9f75c3b5d0d228069cf848837b8e29b3afb17557d18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
