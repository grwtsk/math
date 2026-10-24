# Verification target: GRWTSK.NumberTheory.Basic.Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "578ebdd085f48c54d3dfe32fd36be0af80e42198",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `578ebdd085f48c54d3dfe32fd36be0af80e42198`.

Source path: `GRWTSK/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Int.CompLemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [euler_criterion_units](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/euler-criterion-units--25d0c9aea5322d00ff4e5fa9.md) | 57 | `result-track:25d0c9aea5322d00ff4e5fa9e45c1723c4bd982000b9b7eaeb2f9096614c7e4b` |
| 2 | `theorem` | [euler_criterion](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/euler-criterion--af8a894bd766c6e149b7391d.md) | 70 | `result-track:af8a894bd766c6e149b7391d886ed16f82e4b0f9e149b26e0eab499842c5725f` |
| 3 | `theorem` | [pow_div_two_eq_neg_one_or_one](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/pow-div-two-eq-neg-one-or-one--950a76ca1163fc9420053e88.md) | 83 | `result-track:950a76ca1163fc9420053e8820827fb8c9fe98ea01cf186fac948ab2030a4246` |
| 4 | `def` | [legendreSym](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/legendresym--c7a263bca3c1b8f052d27666.md) | 116 | `declaration-track:c7a263bca3c1b8f052d2766601ca5a249e39d7f166062694457b6742c8940764` |
| 5 | `theorem` | [eq_pow](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/eq-pow--dd2f8fd23802740f15ef06fb.md) | 123 | `result-track:dd2f8fd23802740f15ef06fbd274cd7740535246d00bcb469ea6435c03e1ea9a` |
| 6 | `theorem` | [eq_one_or_neg_one](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/eq-one-or-neg-one--6dbb421e8a74cd029c8b1f1e.md) | 145 | `result-track:6dbb421e8a74cd029c8b1f1e0dabf27de6fbd7e57bae9e15eaa12bed32a23f1f` |
| 7 | `theorem` | [eq_neg_one_iff_not_one](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/eq-neg-one-iff-not-one--1f7eaff1530bab8b40ea08cd.md) | 150 | `result-track:1f7eaff1530bab8b40ea08cd8d83bfc84a3ab6b9e2cb4bd846649f67dcba7a2b` |
| 8 | `theorem` | [eq_zero_iff](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/eq-zero-iff--f9cd301d5d32d306ca0c8a81.md) | 156 | `result-track:f9cd301d5d32d306ca0c8a81a342c2039da25664496dc9d368fd145d220fe49a` |
| 9 | `theorem` | [at_zero](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/at-zero--c9c40a3cb9c323f84e6b182f.md) | 161 | `result-track:c9c40a3cb9c323f84e6b182fa87348d3826571533673e2a9a2fd43955ffe5260` |
| 10 | `theorem` | [at_one](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/at-one--099ba29e84d721fe66a1a1bb.md) | 165 | `result-track:099ba29e84d721fe66a1a1bbf1503e7042dab162ca62386be54449739ed34612` |
| 11 | `theorem` | [mul](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/mul--c6ffee6cbde20d17afbec828.md) | 169 | `result-track:c6ffee6cbde20d17afbec82882c1105de737bf656c66617d282f7278a2526486` |
| 12 | `def` | [hom](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/hom--b204d8d96d9c33e853228500.md) | 175 | `declaration-track:b204d8d96d9c33e8532285002e12a441d9214647cb8fd59d53f1e44d2e158ebc` |
| 13 | `theorem` | [sq_one](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/sq-one--0c583f15c0b662f76f1c6e65.md) | 183 | `result-track:0c583f15c0b662f76f1c6e6585e153851a83313aaf3919ddf02805e041ee2c7f` |
| 14 | `theorem` | [sq_one'](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/sq-one--799c75955c6ec9f846d1facb.md) | 188 | `result-track:799c75955c6ec9f846d1facb65c1bb72f7c78f199f608e0a953db28f1972a02d` |
| 15 | `theorem` | [mod](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/mod--c677c3709841a40f548d45ab.md) | 195 | `result-track:c677c3709841a40f548d45abee80f0151f0b1625de85fcc782135a99ffa1ecbf` |
| 16 | `theorem` | [eq_one_iff](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/eq-one-iff--45c87db5e0cba7014f82688e.md) | 200 | `result-track:45c87db5e0cba7014f82688eddd0a9c64e5a2af5d62bf236b3b3592b36dd1958` |
| 17 | `theorem` | [eq_one_iff'](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/eq-one-iff--ce08f1212d5e940ccfbb572c.md) | 204 | `result-track:ce08f1212d5e940ccfbb572cb4b3d4c7566bf9a4ff91733b096b23343344e13b` |
| 18 | `theorem` | [eq_neg_one_iff](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/eq-neg-one-iff--8ed257f0586096e08e081eae.md) | 209 | `result-track:8ed257f0586096e08e081eae15abfcf44f4b89aeb7115401b84b6b90e5aeb40e` |
| 19 | `theorem` | [eq_neg_one_iff'](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/eq-neg-one-iff--ae8bd111fe630e3c2066c28d.md) | 213 | `result-track:ae8bd111fe630e3c2066c28d0af105984d644460a569525dc32643a645d3cc6c` |
| 20 | `theorem` | [card_sqrts](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/card-sqrts--2710f6107da615f71a8e9f22.md) | 218 | `result-track:2710f6107da615f71a8e9f22b397b17f237161f3dc998b0b28a679d8d0f9ee91` |
| 21 | `theorem` | [eq_one_of_sq_sub_mul_sq_eq_zero](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/eq-one-of-sq-sub-mul-sq-eq-zero--9ccbc14ae25f52965453e0c1.md) | 238 | `result-track:9ccbc14ae25f52965453e0c19f94cd9d704ea2ee4945938e17350ee9fe74f331` |
| 22 | `theorem` | [eq_one_of_sq_sub_mul_sq_eq_zero'](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/eq-one-of-sq-sub-mul-sq-eq-zero--74d62be3cf01ad413fa5222f.md) | 249 | `result-track:74d62be3cf01ad413fa5222f6649fd364c8e2c1807ebc8b8745a2997e0ef7152` |
| 23 | `theorem` | [eq_zero_mod_of_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/eq-zero-mod-of-eq-neg-one--18e7ec8af24470e0a6459dc8.md) | 261 | `result-track:18e7ec8af24470e0a6459dc8ebaf97b62280253bd865c4dc90c880b3191fb2b2` |
| 24 | `theorem` | [prime_dvd_of_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/prime-dvd-of-eq-neg-one--01da39315489856b1418838b.md) | 276 | `result-track:01da39315489856b1418838b12503f78305979b64f76c8131db71f0e03dea74b` |
| 25 | `theorem` | [legendreSym.at_neg_one](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/legendresym-at-neg-one--50e7aec84a745816f4ed110f.md) | 301 | `result-track:50e7aec84a745816f4ed110f6b92cc86ad6119656e04bef99b78e8f4a20a840b` |
| 26 | `theorem` | [exists_sq_eq_neg_one_iff](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/exists-sq-eq-neg-one-iff--e1122eb8056baabade4a1ddf.md) | 309 | `result-track:e1122eb8056baabade4a1ddf9957a178192c07be4ecc50f4e9a5b3c7a7d281ef` |
| 27 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/mod-four-ne-three-of-sq-eq-neg-one--7750ea73b0cf6d12f9721875.md) | 313 | `result-track:7750ea73b0cf6d12f972187566ea3c3f18918a3fe48af7cc3d54a52f9fa24953` |
| 28 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_sq'](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/mod-four-ne-three-of-sq-eq-neg-sq--168df2c84e79696e1ee978c2.md) | 318 | `result-track:168df2c84e79696e1ee978c2c67703e7ba71cad102a5705d451c219206b02fea` |
| 29 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_sq](../../../../mathematics/NumberTheory/Basic/Variantecc57db72cef3ee303fee125ebd4eb32da2165dbba759108725783ecfcd3a30e.lean/declarations/mod-four-ne-three-of-sq-eq-neg-sq--21b93d9b53f8674b431f3a85.md) | 326 | `result-track:21b93d9b53f8674b431f3a859f0667f9107e332ec55fe86566075c155fe18004` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
