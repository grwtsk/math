# Verification target: GRWTSK.Algebra.LinearAlgebra.ModuleCat.Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d424e1bae37d9449999fe5fe5dd0a50e5c582846",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d424e1bae37d9449999fe5fe5dd0a50e5c582846`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ConcreteCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/instance--f4cd90b1e6e2a162524b9c80.md) | 36 | `declaration-track:f4cd90b1e6e2a162524b9c803b9f245e26bfc7067dcb154a7f3ee3f58c57e573` |
| 2 | `def` | [moduleCatMk](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecatmk--01d20ceef01a8c005f8f0a88.md) | 41 | `declaration-track:01d20ceef01a8c005f8f0a881a4ba2b74477c42cef6e9eee5e0c523b4e86ba40` |
| 3 | `lemma` | [moduleCat_zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecat-zero-apply--92895642ac9db5ec65fac15e.md) | 49 | `result-track:92895642ac9db5ec65fac15eb0c999e26faca03f7a0d9794eacfa7f2141634d0` |
| 4 | `lemma` | [moduleCat_exact_iff](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecat-exact-iff--a341cbd0d60584f3e3f230bc.md) | 52 | `result-track:a341cbd0d60584f3e3f230bcd69910b51cc1ef2b4ac185684f6f2f5764844a7d` |
| 5 | `lemma` | [moduleCat_exact_iff_ker_sub_range](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecat-exact-iff-ker-sub-range--215ba5c9e4844f47ef5a107c.md) | 56 | `result-track:215ba5c9e4844f47ef5a107ca53c829d09051c3871f827887a5c0bb2e43e6eed` |
| 6 | `lemma` | [moduleCat_exact_iff_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecat-exact-iff-range-eq-ker--9ebf1ae2b95884511b75d959.md) | 61 | `result-track:9ebf1ae2b95884511b75d9598d70c525c74ced9d733c5456e82de565aeebd3c8` |
| 7 | `lemma` | [Exact.moduleCat_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/exact-modulecat-range-eq-ker--e945b2f186a46f09b3189ece.md) | 68 | `result-track:e945b2f186a46f09b3189ece5282739fb1c932122a9cf146949b28c3d66a1f5f` |
| 8 | `lemma` | [ShortExact.moduleCat_injective_f](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/shortexact-modulecat-injective-f--11e3f9154138fec7cd85be6d.md) | 72 | `result-track:11e3f9154138fec7cd85be6db35c18d3ab5beb59a9acb6022eb3938724811232` |
| 9 | `lemma` | [ShortExact.moduleCat_surjective_g](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/shortexact-modulecat-surjective-g--960987c6a7f662899aa3e508.md) | 76 | `result-track:960987c6a7f662899aa3e5085f3cbd9123aed15ef07ec8daa6194913b6b50564` |
| 10 | `lemma` | [ShortExact.moduleCat_exact_iff_function_exact](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/shortexact-modulecat-exact-iff-function-exact--b28d7f9f7bd6401c151e66b9.md) | 82 | `result-track:b28d7f9f7bd6401c151e66b90faed34f8f4d233e67ccc51186a564433a4e92f8` |
| 11 | `def` | [moduleCatMkOfKerLERange](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecatmkofkerlerange--a02ee40882b439aee961144e.md) | 90 | `declaration-track:a02ee40882b439aee961144ed16f269033791f010c8dbfa84e25ace285d1de7a` |
| 12 | `lemma` | [Exact.moduleCat_of_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/exact-modulecat-of-range-eq-ker--31864d1e9bf1a0417e283c7f.md) | 94 | `result-track:31864d1e9bf1a0417e283c7f3669a391d2e8e09bf7ea9ac046755c722f89e52e` |
| 13 | `def` | [moduleCatToCycles](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecattocycles--fc99d132f6bd077b8f507435.md) | 101 | `declaration-track:fc99d132f6bd077b8f507435a03db897b76421e89b5c6ffe85281e4d6b016543` |
| 14 | `def` | [moduleCatLeftHomologyData](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecatlefthomologydata--297996a129c2577a480394e9.md) | 110 | `declaration-track:297996a129c2577a480394e935a6925011dddf7011bcbd7a5a3a0b83ca9d33ef` |
| 15 | `abbrev` | [moduleCatHomology](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecathomology--3eba6024049da55f00cb4be5.md) | 122 | `declaration-track:3eba6024049da55f00cb4be5d71ed113a3647dda23db4f26181d68ff7b2bf4ee` |
| 16 | `abbrev` | [moduleCatHomologyπ](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecathomology--17fa1dda2b707c75dbc5244d.md) | 127 | `declaration-track:17fa1dda2b707c75dbc5244d8fcb7ad261bdc0b3ec917ec856bc4d7b18fbbb71` |
| 17 | `lemma` | [moduleCatLeftHomologyData_f'_hom](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecatlefthomologydata-f-hom--6290799389d865705462d7d6.md) | 136 | `result-track:6290799389d865705462d7d666b110161002ead39baf0a15541c691f845ea816` |
| 18 | `lemma` | [moduleCatLeftHomologyData_descH_hom](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecatlefthomologydata-desch-hom--181530049dbd668e59276895.md) | 143 | `result-track:181530049dbd668e5927689535fdc0075f40c3f8916b690609a7691b2130d270` |
| 19 | `lemma` | [moduleCatLeftHomologyData_liftK_hom](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecatlefthomologydata-liftk-hom--8350a24f3380c6e987ebe33f.md) | 150 | `result-track:8350a24f3380c6e987ebe33ff6ffa2f7c9876fa58d4d48f3876e4437914a46e3` |
| 20 | `def` | [moduleCatCyclesIso](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecatcyclesiso--af0df1ac464c4953b967155b.md) | 157 | `declaration-track:af0df1ac464c4953b967155b54542a7ed9666224631fa401a5643c89d87f3d1c` |
| 21 | `lemma` | [moduleCatCyclesIso_hom_i](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecatcyclesiso-hom-i--547e9abc006b714cc522cb0b.md) | 161 | `result-track:547e9abc006b714cc522cb0b25766834016cfb84e657f4f7ed23bb61bdeaabd2` |
| 22 | `lemma` | [moduleCatCyclesIso_inv_iCycles](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecatcyclesiso-inv-icycles--f6d1093fe08b5b9e9d82ff3f.md) | 169 | `result-track:f6d1093fe08b5b9e9d82ff3ff3d84b92b9f491b3e0dafd839bad6a6a87089d1c` |
| 23 | `lemma` | [toCycles_moduleCatCyclesIso_hom](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/tocycles-modulecatcyclesiso-hom--4028d782eab56bc4db21653b.md) | 174 | `result-track:4028d782eab56bc4db21653bdf594be1cda898626eacd9a870d522464751e9b9` |
| 24 | `def` | [moduleCatHomologyIso](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecathomologyiso--ca63847599437482e74f07f7.md) | 182 | `declaration-track:ca63847599437482e74f07f740b59ba25f7fd65f45e1fb64039a404c73cafd4d` |
| 25 | `lemma` | [π_moduleCatCyclesIso_hom](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecatcyclesiso-hom--fcee2db7d4557c03111f20a1.md) | 187 | `result-track:fcee2db7d4557c03111f20a1ae9a634a530dbd2547c527713c9d8d1ef1257a12` |
| 26 | `lemma` | [moduleCatCyclesIso_inv_π](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/modulecatcyclesiso-inv--e877adb90329ee175af56114.md) | 193 | `result-track:e877adb90329ee175af56114bdabdb53e3d30c3383bf0c0f3c0e8e4ed3215f33` |
| 27 | `lemma` | [exact_iff_surjective_moduleCatToCycles](../../../../../mathematics/Algebra/LinearAlgebra/ModuleCat/Variantd0a312ddd26f2fe4768646f21fade6afe68d3a18bdb3a7a6b0fbe80d032a7c65.lean/declarations/exact-iff-surjective-modulecattocycles--32bda58d927d1095a87c982a.md) | 198 | `result-track:32bda58d927d1095a87c982abf678025b4061aa26507919a9b67f53e8a970413` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
