# Verification target: GRWTSK.Algebra.CommutativeAlgebra.EraseLead.Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9ca512f7ebd7f5f88060fdb89ffef46e7f3c0fc",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9ca512f7ebd7f5f88060fdb89ffef46e7f3c0fc`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Monomial` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead--e8040dd1ec3fd01e21498157.md) | 35 | `declaration-track:e8040dd1ec3fd01e2149815788df87356a952b25fbff9cef1fac621ba27461c3` |
| 2 | `theorem` | [eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-support--3494a8b11e5e55fc26864a49.md) | 40 | `result-track:3494a8b11e5e55fc26864a49858989814922c92b49d58be95a1d600c426b1168` |
| 3 | `theorem` | [eraseLead_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-coeff--3c378eafcf75c50810bbf14d.md) | 43 | `result-track:3c378eafcf75c50810bbf14dc9bde417fffa6cc6e4877af528fde066584bd3ac` |
| 4 | `theorem` | [eraseLead_coeff_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-coeff-natdegree--f33fac2873c2d1b77cc599e1.md) | 48 | `result-track:f33fac2873c2d1b77cc599e143e0ddaa06c85d32f333aea4dea5c6c416cdbdca` |
| 5 | `theorem` | [eraseLead_coeff_of_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-coeff-of-ne--b6503807507669760097dde2.md) | 50 | `result-track:b6503807507669760097dde2f69d24ec624b511b50cdf4c85b2e7d4fef9f2360` |
| 6 | `theorem` | [eraseLead_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-zero--b60da5d2ce5d68e61c44bab5.md) | 54 | `result-track:b60da5d2ce5d68e61c44bab58ab719b72aca54b1132f4b60b7dccb42f53ae132` |
| 7 | `theorem` | [eraseLead_add_monomial_natDegree_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-add-monomial-natdegree-leadingcoeff--b16731b931eec64098898710.md) | 57 | `result-track:b16731b931eec64098898710a9b5e96be19e47e6ad00d82cf32a552e7d861aa9` |
| 8 | `theorem` | [eraseLead_add_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-add-c-mul-x-pow--19b8b6cabfb7edb6da33df8d.md) | 62 | `result-track:19b8b6cabfb7edb6da33df8d334fbfe6d03870348b64ea1cdadf842048ee7948` |
| 9 | `theorem` | [self_sub_monomial_natDegree_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/self-sub-monomial-natdegree-leadingcoeff--7bab5dae8f74345e7a0574bf.md) | 67 | `result-track:7bab5dae8f74345e7a0574bff5978c18c50585f2b905fffaab3de88f2edde77c` |
| 10 | `theorem` | [self_sub_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/self-sub-c-mul-x-pow--d6a15109f101fb12e25b59fa.md) | 72 | `result-track:d6a15109f101fb12e25b59fa99472fdd0ddad78f35ea224d839e7f112315176a` |
| 11 | `theorem` | [eraseLead_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-ne-zero--e9ae4e385420b73673151005.md) | 76 | `result-track:e9ae4e385420b73673151005953e4df2cc72fe98df574ba1055d8eb787cefb3d` |
| 12 | `theorem` | [lt_natDegree_of_mem_eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/lt-natdegree-of-mem-eraselead-support--48c833c5da4fc4ad49597834.md) | 81 | `result-track:48c833c5da4fc4ad4959783423af616bdc74477c9bfd592c0bce20b1cc4b7933` |
| 13 | `theorem` | [ne_natDegree_of_mem_eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/ne-natdegree-of-mem-eraselead-support--4bbc1e4c3cea7250bb3a5562.md) | 86 | `result-track:4bbc1e4c3cea7250bb3a556236007ada7a3c704553dd0c01eb6d8d3d94966ae4` |
| 14 | `theorem` | [natDegree_notMem_eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/natdegree-notmem-eraselead-support--8049a53a08c276bc9e639ca2.md) | 90 | `result-track:8049a53a08c276bc9e639ca2847b70b72fe65be350791883ca713aa611cb9be5` |
| 15 | `theorem` | [eraseLead_support_card_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-support-card-lt--ceb1501b12eaeb388113ec1d.md) | 96 | `result-track:ceb1501b12eaeb388113ec1d819c5b8dd5003d4bcd1cbe946cda6b5258a47b10` |
| 16 | `theorem` | [card_support_eraseLead_add_one](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/card-support-eraselead-add-one--5f29337c418915466464c4cb.md) | 100 | `result-track:5f29337c418915466464c4cb1007b522fbd1e53f1554250a5a422a2184a351c3` |
| 17 | `theorem` | [card_support_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/card-support-eraselead--ce2f9db3e254ebea0745dd0d.md) | 111 | `result-track:ce2f9db3e254ebea0745dd0de87b7f1366649f7363726d7d7f05e3c582943c95` |
| 18 | `theorem` | [card_support_eraseLead'](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/card-support-eraselead--808abf68884c4c5ef531ba7f.md) | 116 | `result-track:808abf68884c4c5ef531ba7fe18e5ab0589846b16f6129d7d22cf98eaa789029` |
| 19 | `theorem` | [card_support_eq_one_of_eraseLead_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/card-support-eq-one-of-eraselead-eq-zero--f1e11f38c86bf48671cff7ac.md) | 120 | `result-track:f1e11f38c86bf48671cff7ac942d683cf3dabd632f7a8e9366f949880117de0f` |
| 20 | `theorem` | [card_support_le_one_of_eraseLead_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/card-support-le-one-of-eraselead-eq-zero--6b17bad28f8abe02abb03823.md) | 124 | `result-track:6b17bad28f8abe02abb03823c101110f6370f8030a32a6db1ca915295f08a72c` |
| 21 | `theorem` | [eraseLead_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-monomial--37eedb50a80e56024e69c73e.md) | 130 | `result-track:37eedb50a80e56024e69c73e8729a49e8977e43ba1ded4ccc629f03e72ad646a` |
| 22 | `theorem` | [eraseLead_C](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-c--3ef27b71e3a04e3f5b8507a9.md) | 138 | `result-track:3ef27b71e3a04e3f5b8507a99eb7d422185166c1b84e03292430c36abd8fb708` |
| 23 | `theorem` | [eraseLead_X](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-x--750a9b4f68c486e152b8fad6.md) | 142 | `result-track:750a9b4f68c486e152b8fad601b0d6035ed6fd7abc05f7a02d802fe2a2aada7d` |
| 24 | `theorem` | [eraseLead_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-x-pow--551d4a941773702102a283d0.md) | 146 | `result-track:551d4a941773702102a283d0073818dc3dbec3d70fb9f73b4cd7f4ad2a8cb16b` |
| 25 | `theorem` | [eraseLead_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-c-mul-x-pow--cc9c68f4877408326bdd298d.md) | 150 | `result-track:cc9c68f4877408326bdd298d84487ef3283690c1408fe5ac2801161360b8472c` |
| 26 | `lemma` | [eraseLead_C_mul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-c-mul-x--94624f9dd8af5d39f487918e.md) | 153 | `result-track:94624f9dd8af5d39f487918ecf023e98f9ea02a08f02273daf9d1b9805307e65` |
| 27 | `theorem` | [eraseLead_add_of_degree_lt_left](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-add-of-degree-lt-left--dfd77632b46d425b92d35831.md) | 156 | `result-track:dfd77632b46d425b92d35831c4fe906c89462702a400664e880718001ab82b59` |
| 28 | `theorem` | [eraseLead_add_of_natDegree_lt_left](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-add-of-natdegree-lt-left--2e29aa79558f7f52e5f72209.md) | 166 | `result-track:2e29aa79558f7f52e5f7220981e3542c8001ac54d1bd7f75aacde93deba3dd70` |
| 29 | `theorem` | [eraseLead_add_of_degree_lt_right](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-add-of-degree-lt-right--7cb737801957757d112caf74.md) | 170 | `result-track:7cb737801957757d112caf74e205f7c05a4db9aca016a504b835f4fd233546ab` |
| 30 | `theorem` | [eraseLead_add_of_natDegree_lt_right](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-add-of-natdegree-lt-right--841743a5bf904d5e368bdef0.md) | 180 | `result-track:841743a5bf904d5e368bdef0d1c04a2895cf2a92b5ae39809e609dc23d589258` |
| 31 | `theorem` | [eraseLead_degree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-degree-le--a74f5d404281630d9bef6130.md) | 184 | `result-track:a74f5d404281630d9bef613007c8bafcb39c91bf022415688aa5a138ce91a6f6` |
| 32 | `theorem` | [degree_eraseLead_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/degree-eraselead-lt--ddd41f3b6fc74aaa70a0193f.md) | 187 | `result-track:ddd41f3b6fc74aaa70a0193ffe159d399f3918e9d2320a17527eb35179c1884a` |
| 33 | `theorem` | [eraseLead_natDegree_le_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-natdegree-le-aux--54b0f488a09ba794eb69a4a8.md) | 190 | `result-track:54b0f488a09ba794eb69a4a834d2316663f3c796e646bcedc2cac79427fa2904` |
| 34 | `theorem` | [eraseLead_natDegree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-natdegree-lt--a4d9997b61bb1ff9788c289a.md) | 193 | `result-track:a4d9997b61bb1ff9788c289a329c14d52c64330e7dcb07b3f2e781868e3e843c` |
| 35 | `theorem` | [natDegree_pos_of_eraseLead_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/natdegree-pos-of-eraselead-ne-zero--daee75ff1212cf0fb9786c7a.md) | 198 | `result-track:daee75ff1212cf0fb9786c7a5a6c4b5803671a1192c5d8b5ac7a2239d949f940` |
| 36 | `theorem` | [eraseLead_natDegree_lt_or_eraseLead_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-natdegree-lt-or-eraselead-eq-zero--20f0e8e3c51b8cc4e5ad489b.md) | 203 | `result-track:20f0e8e3c51b8cc4e5ad489bd7c21894d7adcea5ccf24c29aa8e3197e591ab0d` |
| 37 | `theorem` | [eraseLead_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/eraselead-natdegree-le--2a444babb1203f65b1e82f77.md) | 212 | `result-track:2a444babb1203f65b1e82f77a800a411c7b36d3a6e8a15e89f8cbb58526a4544` |
| 38 | `lemma` | [natDegree_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/natdegree-eraselead--ae41b17d3f752667fdc32c71.md) | 217 | `result-track:ae41b17d3f752667fdc32c7145027b3861c85b6b16de4c2170e292a191516390` |
| 39 | `lemma` | [natDegree_eraseLead_add_one](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/natdegree-eraselead-add-one--8f5c04f8db2caa59260617ca.md) | 223 | `result-track:8f5c04f8db2caa59260617cacb6cb1f1686ded37ee245fba307f429035c2b5a5` |
| 40 | `theorem` | [natDegree_eraseLead_le_of_nextCoeff_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/natdegree-eraselead-le-of-nextcoeff-eq-zero--95bc5717ae1d04bfb9de1393.md) | 228 | `result-track:95bc5717ae1d04bfb9de13935e932b7cfeeb67b94978f78daf7b5eaaa207798e` |
| 41 | `lemma` | [two_le_natDegree_of_nextCoeff_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/two-le-natdegree-of-nextcoeff-eraselead--b67cd533c30e741fd4dba465.md) | 237 | `result-track:b67cd533c30e741fd4dba465c3198c112e819978355794177103ecea93206222` |
| 42 | `theorem` | [leadingCoeff_eraseLead_eq_nextCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/leadingcoeff-eraselead-eq-nextcoeff--34588fd7167d9a74dd5c37af.md) | 248 | `result-track:34588fd7167d9a74dd5c37afdc5a75d1a4ec8a274810d61bf47d65e2d4a70157` |
| 43 | `theorem` | [nextCoeff_eq_zero_of_eraseLead_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/nextcoeff-eq-zero-of-eraselead-eq-zero--0521f14e9f202d7e4fff9329.md) | 255 | `result-track:0521f14e9f202d7e4fff93290241e72e9a5bcd1bfd5f92a5d719843eeef3277f` |
| 44 | `theorem` | [induction_with_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/induction-with-natdegree-le--1843411deede64c1de724cf2.md) | 265 | `result-track:1843411deede64c1de724cf2d716faf8b452c6f2504e5bf27d094fc918ca1453` |
| 45 | `theorem` | [mono_map_natDegree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/mono-map-natdegree-eq--37fce77567b76cfb65d76cf2.md) | 301 | `result-track:37fce77567b76cfb65d76cf24a01fa9f4bdfa735397f15efc7f006461742123a` |
| 46 | `theorem` | [map_natDegree_eq_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/map-natdegree-eq-sub--bfaf4eb4b077287db6164e36.md) | 321 | `result-track:bfaf4eb4b077287db6164e36b87cb7315a155e35afe60398dcd4dd6743ec21b3` |
| 47 | `theorem` | [map_natDegree_eq_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/map-natdegree-eq-natdegree--a2708c85253dd0d27f358d48.md) | 330 | `result-track:a2708c85253dd0d27f358d4805d82fa6a396d34f44b7262b89240b88353cab86` |
| 48 | `theorem` | [card_support_eq'](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/card-support-eq--6ffa7c0728327314817e0e11.md) | 337 | `result-track:6ffa7c0728327314817e0e11624e4f4963416275f9c71caebadc13b62888ecf2` |
| 49 | `theorem` | [card_support_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/card-support-eq--0269a490053ef09abbc7a446.md) | 351 | `result-track:0269a490053ef09abbc7a4462341afb1e4da13568a40ee39faa7de292fa53f32` |
| 50 | `theorem` | [card_support_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/card-support-eq-one--f780d2b0e6dcd7cd977050b7.md) | 397 | `result-track:f780d2b0e6dcd7cd977050b77051830dec350d2db59900abb7aa1d25f886e999` |
| 51 | `theorem` | [card_support_eq_two](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/card-support-eq-two--929f836169619c6f7675ab75.md) | 405 | `result-track:929f836169619c6f7675ab75693100fc72ef4994c6c228dde041e5ba2e6bd26d` |
| 52 | `theorem` | [card_support_eq_three](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/declarations/card-support-eq-three--26fd2e5d8123811deacdf310.md) | 417 | `result-track:26fd2e5d8123811deacdf310128fe07bb9e16eaa3849953f89583c1bb0d928ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
