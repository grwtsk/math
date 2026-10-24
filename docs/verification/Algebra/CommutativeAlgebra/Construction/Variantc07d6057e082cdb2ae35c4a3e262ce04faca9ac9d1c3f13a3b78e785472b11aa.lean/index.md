# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Construction.Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bd205f5dd2267bead47645eff19bdee36e41f73",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bd205f5dd2267bead47645eff19bdee36e41f73`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.IsSplittingField` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/factor--c42803c685a9d57653b807f8.md) | 49 | `declaration-track:c42803c685a9d57653b807f863979f675c99b8daaa1b0488e476ef192473572c` |
| 2 | `theorem` | [irreducible_factor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/irreducible-factor--d28c6799a82686a941d9ccca.md) | 52 | `result-track:d28c6799a82686a941d9ccca199b28763bcbb3d87268402d56c76068f6f075d3` |
| 3 | `theorem` | [fact_irreducible_factor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/fact-irreducible-factor--c9afba9c63cfc1a0a6f9314a.md) | 59 | `result-track:c9afba9c63cfc1a0a6f9314a0b02aecdb2832fffe0d8a5552eef5e4bdd7314c6` |
| 4 | `theorem` | [factor_dvd_of_not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/factor-dvd-of-not-isunit--93ac16ca3d28ac779540f781.md) | 64 | `result-track:93ac16ca3d28ac779540f78191b36f608c75c2bdcf56a85238fcf97e568c5ea0` |
| 5 | `theorem` | [factor_dvd_of_degree_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/factor-dvd-of-degree-ne-zero--d32973ff31c3feb0fb2fe118.md) | 69 | `result-track:d32973ff31c3feb0fb2fe118f478b62d7bd6b60f92faca425451e62c6e16f373` |
| 6 | `theorem` | [factor_dvd_of_natDegree_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/factor-dvd-of-natdegree-ne-zero--fa6c3beac05abdb0905282b1.md) | 72 | `result-track:fa6c3beac05abdb0905282b158142895ab533a36f93b17c20aab8e632002cfbf` |
| 7 | `lemma` | [isCoprime_iff_aeval_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/iscoprime-iff-aeval-ne-zero--ab386e1d21e139b94b39f6c8.md) | 75 | `result-track:ab386e1d21e139b94b39f6c8a92fe9a3d37437de703a9e23878fc15c735bdd30` |
| 8 | `def` | [removeFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/removefactor--7c3fbf6ec074510a880caa8b.md) | 87 | `declaration-track:7c3fbf6ec074510a880caa8b6a1f0e81127c7bbee1cca09e8fb54ed35dfdf8e7` |
| 9 | `theorem` | [X_sub_C_mul_removeFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/x-sub-c-mul-removefactor--07e28b446095f0367195d2bc.md) | 90 | `result-track:07e28b446095f0367195d2bc9b17746ca37f9794de7d7b285ab8b51fdaaf9090` |
| 10 | `theorem` | [natDegree_removeFactor](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/natdegree-removefactor--2b041a2544d257fde323d688.md) | 97 | `result-track:2b041a2544d257fde323d6883205a8a39532dc7a0b53be17922109151d932ee0` |
| 11 | `theorem` | [natDegree_removeFactor'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/natdegree-removefactor--1417a01933e0c0c2177ffc2a.md) | 100 | `result-track:1417a01933e0c0c2177ffc2af6890f79a2f55547252fe33782c0ba60939a529b` |
| 12 | `def` | [SplittingFieldAuxAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/splittingfieldauxaux--e3c18a02797fb75e4b522ff6.md) | 110 | `declaration-track:e3c18a02797fb75e4b522ff6d7f18e42093af9c21e89d87116ee68fad4a2d3e9` |
| 13 | `def` | [SplittingFieldAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/splittingfieldaux--2b2751492b060ba312655e68.md) | 123 | `declaration-track:2b2751492b060ba312655e687bb35f6c39dfd30add91d0bdf53bfa4dcdba3ad4` |
| 14 | `instance` | [SplittingFieldAux.field](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/splittingfieldaux-field--ddfbd2665b179d80b9716bae.md) | 126 | `declaration-track:ddfbd2665b179d80b9716baef617b64bd1285b1bf2cc9102519bbcfe6c7d3358` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/instance--8fd5ac5eb1c0f678eda18f96.md) | 130 | `declaration-track:8fd5ac5eb1c0f678eda18f9626f348ce387ed63c86647d936f6dc1e24b3b4998` |
| 16 | `instance` | [SplittingFieldAux.algebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/splittingfieldaux-algebra--417086973fd8109fd99681b4.md) | 133 | `declaration-track:417086973fd8109fd99681b4ffe72c0d5701261488300fe70399413840b84a28` |
| 17 | `theorem` | [succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/succ--bf7520f46db6bc9a27b7ed09.md) | 139 | `result-track:bf7520f46db6bc9a27b7ed095a6856a5d703f1da00dffc590dac9e047c9a1040` |
| 18 | `instance` | [algebra'''](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/algebra--9dd96310a9732cfa095088f9.md) | 143 | `declaration-track:9dd96310a9732cfa095088f90d48b3deda1f8b3608923163d0e2ab2e4933ca37` |
| 19 | `instance` | [algebra'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/algebra--135e7b7865d192ff5a8b3bdc.md) | 147 | `declaration-track:135e7b7865d192ff5a8b3bdcad46ce433c166dea9807fb0460fea085e0983775` |
| 20 | `instance` | [algebra''](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/algebra--51026d95a487048d91cfadc2.md) | 150 | `declaration-track:51026d95a487048d91cfadc268320aa4b297351a2ef4f6783a96c7d3b8572c50` |
| 21 | `instance` | [scalar_tower'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/scalar-tower--3e3e04fa92cbddae70fddd66.md) | 153 | `declaration-track:3e3e04fa92cbddae70fddd6648dc8687bba4d44e704edc4b96fffefbd25e0355` |
| 22 | `theorem` | [algebraMap_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/algebramap-succ--722889cda1817e83ebd6dcab.md) | 157 | `result-track:722889cda1817e83ebd6dcabb8c64b36fee64c86c9f0e3b934d2928172e04aea` |
| 23 | `theorem` | [splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/splits--f3ec02bddeeeca5ef5dbc6d2.md) | 163 | `result-track:f3ec02bddeeeca5ef5dbc6d27de908f5f57080da034ed11f7447242d3f70143f` |
| 24 | `theorem` | [adjoin_rootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/adjoin-rootset--97f4f2713937ab71140cf8cb.md) | 176 | `result-track:97f4f2713937ab71140cf8cb853ac119a26a548a9885513d1e293120c76cf1b5` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/instance--bb4777846a031f4f2e4a8cc3.md) | 206 | `declaration-track:bb4777846a031f4f2e4a8cc387b7c24beaa28ade64fd97491cdeed7e37d340be` |
| 26 | `def` | [SplittingField](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/splittingfield--cad9c6c9343d5ff96745d6bb.md) | 213 | `declaration-track:cad9c6c9343d5ff96745d6bb94dd61aa12a72aea8059cfca3f99e6d88c31e06a` |
| 27 | `instance` | [commRing](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/commring--078a6eb3107f2989944b0b2a.md) | 221 | `declaration-track:078a6eb3107f2989944b0b2af717b3fc196fdca0ac49c78f48105ed7bdaab2bf` |
| 28 | `instance` | [inhabited](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/inhabited--63f58fc77ac2dcd8ea82bfc7.md) | 224 | `declaration-track:63f58fc77ac2dcd8ea82bfc75ad1ce4a896e15da83a50edf17e60b383260e4e8` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/instance--77f41628cf1e84fb1b6e0af9.md) | 227 | `declaration-track:77f41628cf1e84fb1b6e0af93d997ca6eb5861fbf07bf930e018e4a2870236d0` |
| 30 | `instance` | [algebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/algebra--70277bdbd287170f93d5bd72.md) | 230 | `declaration-track:70277bdbd287170f93d5bd72fdabfe569fb46b631912b1cc690e212959d6832f` |
| 31 | `instance` | [algebra'](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/algebra--549eab7fac7a1f49b4a7b131.md) | 233 | `declaration-track:549eab7fac7a1f49b4a7b131ac50093cbb643c5305972d81b38e97cba01c3d68` |
| 32 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/isscalartower--0ed8eb4655552cf3ff7186ca.md) | 236 | `declaration-track:0ed8eb4655552cf3ff7186ca7ffc318d94fc52b7fee7a034e5628a94d5e37f5d` |
| 33 | `def` | [algEquivSplittingFieldAux](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/algequivsplittingfieldaux--2c37415c1455f4244a0998b3.md) | 242 | `declaration-track:2c37415c1455f4244a0998b359aa788ef33cbc55667169f84a5ad2ad6858338b` |
| 34 | `instance` | [instGroupWithZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/instgroupwithzero--a6c54d8c6678f63cc2a3c33a.md) | 245 | `declaration-track:a6c54d8c6678f63cc2a3c33a8a8d91cd2d2f164d962cb6fdf505d70f1ab59c3e` |
| 35 | `instance` | [instField](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/instfield--019bbe0419e06e84ab510a03.md) | 252 | `declaration-track:019bbe0419e06e84ab510a033642e039fe002d72aa61762c2df31b99fc4d5109` |
| 36 | `instance` | [instCharZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/instcharzero--4fcdbb3a7cc5debb58c8c45b.md) | 267 | `declaration-track:4fcdbb3a7cc5debb58c8c45bc28a95ed88c20a25fcce1f8cde988fa42d6ba360` |
| 37 | `instance` | [instCharP](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/instcharp--e0fb28745d8534b42ccd6ae1.md) | 270 | `declaration-track:e0fb28745d8534b42ccd6ae14924e9334ab9791f54e9ac9ca241e5df1e3c312f` |
| 38 | `instance` | [instExpChar](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/instexpchar--68636aab0d8fa5431c3b8c09.md) | 273 | `declaration-track:68636aab0d8fa5431c3b8c094f01c0c5ad61d391054242eca82472d51f5efed0` |
| 39 | `instance` | [_root_.Polynomial.IsSplittingField.splittingField](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/root-polynomial-issplittingfield-splittingfield--cfb82c85c7e6fd6761be7576.md) | 276 | `declaration-track:cfb82c85c7e6fd6761be7576704cc1f01031ed9ded1f62631244b4e20ca13c0d` |
| 40 | `theorem` | [splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/splits--b978fee479b4ec0ce26dd4e1.md) | 281 | `result-track:b978fee479b4ec0ce26dd4e1986ef2b1aa9d4dfd1194584ac670b0360c48f0c7` |
| 41 | `def` | [lift](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/lift--459863b6789b6c6ae94bc6aa.md) | 287 | `declaration-track:459863b6789b6c6ae94bc6aadebc72c0f25b7d7296f935fc8073f7c39c9fb5d4` |
| 42 | `theorem` | [adjoin_rootSet](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/adjoin-rootset--f47f8fde64920b6cb84a65dd.md) | 290 | `result-track:f47f8fde64920b6cb84a65ddfa8d85f38ae3e47699abe90ecbf1b4b571183d62` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/instance--73f2119c49c6828091d675af.md) | 303 | `declaration-track:73f2119c49c6828091d675af1329224c30427f1c6ba32767d82249328b61bb9d` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/instance--ce86a4ec7376999c6bbc704c.md) | 306 | `declaration-track:ce86a4ec7376999c6bbc704c5800ba038b1be35d5109ac9d7fde2e30e69ae990` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/instance--72bb584ca26765df0202d69b.md) | 309 | `declaration-track:72bb584ca26765df0202d69b2397f533cbe9cf1d75959baac624a81889940e9a` |
| 46 | `def` | [algEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Construction/Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.lean/declarations/algequiv--ae37a35cb716439fd1bbc8a5.md) | 313 | `declaration-track:ae37a35cb716439fd1bbc8a5117eccec23f0f8d9d50da4120558115c95ae7c41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
