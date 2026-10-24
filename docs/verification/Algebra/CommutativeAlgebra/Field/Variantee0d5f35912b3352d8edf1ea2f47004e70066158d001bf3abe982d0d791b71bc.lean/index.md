# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Field.Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0707c831e6951196dacbd8cf8257a0a45c285e6",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0707c831e6951196dacbd8cf8257a0a45c285e6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Lifts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Integral` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [degree_le_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/degree-le-of-ne-zero--e06ada5b8c86de841ac4432b.md) | 44 | `result-track:e06ada5b8c86de841ac4432be3a68c198119865c86eefdec85d736992c468318` |
| 2 | `theorem` | [ne_zero_of_finite](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/ne-zero-of-finite--24892cb5c16217b3f5ab81d4.md) | 51 | `result-track:24892cb5c16217b3f5ab81d40ddfe36f8627595fec2da84b1406fa14a4f49804` |
| 3 | `theorem` | [unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/unique--7f798449a183885083089949.md) | 58 | `result-track:7f798449a183885083089949a75fc1f46efa77b3259a03d9a55d8796df7c676a` |
| 4 | `theorem` | [dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/dvd--c5a27ceb8c04192a89623714.md) | 72 | `result-track:c5a27ceb8c04192a8962371443e7570dcbc1906f0e60fbb84548c41111c62de9` |
| 5 | `lemma` | [dvd_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/dvd-iff--02f92a5c7fa4b773ea698d8d.md) | 83 | `result-track:02f92a5c7fa4b773ea698d8dde5e14f10abf6315005939b58be0b64b7187ece8` |
| 6 | `theorem` | [isRadical](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/isradical--b4f2542b63bec63260328fc6.md) | 86 | `result-track:b4f2542b63bec63260328fc68784edf706f98a0a3d6f450b7222841c112f82fd` |
| 7 | `theorem` | [dvd_map_of_isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/dvd-map-of-isscalartower--ba4fecacb33f23c6237ab0a2.md) | 89 | `result-track:ba4fecacb33f23c6237ab0a2c764ac56b9ab5641f7a4c68bb1fe127def2b274a` |
| 8 | `theorem` | [dvd_map_of_isScalarTower'](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/dvd-map-of-isscalartower--e9ee29671c86f4b7c43278e5.md) | 95 | `result-track:e9ee29671c86f4b7c43278e542ed9a4d5d5cc2a4314ab0a6117e1f1b3d0941f3` |
| 9 | `theorem` | [aeval_of_isScalarTower](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/aeval-of-isscalartower--6006b353333c1c4692948378.md) | 104 | `result-track:6006b353333c1c4692948378337bc8fcba807ad14c27ebd724fc2ac44a16b0b0` |
| 10 | `theorem` | [map_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/map-algebramap--c2e45aa8feacf429bf6395a9.md) | 114 | `result-track:c2e45aa8feacf429bf6395a98ec785a39f03ac70ea9374fa4b8b0d99b2dd5058` |
| 11 | `lemma` | [ker_aeval_eq_span_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/ker-aeval-eq-span-minpoly--4146c7879081ce0d722d56f4.md) | 131 | `result-track:4146c7879081ce0d722d56f430dfeb9f578843b3620760b47c07802ac56403f9` |
| 12 | `theorem` | [eq_of_irreducible_of_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/eq-of-irreducible-of-monic--bb7e07c90204342182e5a8f0.md) | 139 | `result-track:bb7e07c90204342182e5a8f0d39570433724ce2668968cd4fbf20f4921d15a53` |
| 13 | `theorem` | [eq_iff_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/eq-iff-aeval-eq-zero--bbef7e34e27d2994318ac54f.md) | 146 | `result-track:bbef7e34e27d2994318ac54f1850b05fd746a5bc69641e7fbecc9945315d3ea8` |
| 14 | `theorem` | [eq_iff_aeval_minpoly_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/eq-iff-aeval-minpoly-eq-zero--743f2ec93e694067455dfa56.md) | 150 | `result-track:743f2ec93e694067455dfa56edfadb641744835f5068895ade5befff19abe9cb` |
| 15 | `theorem` | [eq_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/eq-of-irreducible--8a0832046cf09aae1f4eff42.md) | 155 | `result-track:8a0832046cf09aae1f4eff420b1aec0a15b2b6b1a209c2a50aff367fb159b753` |
| 16 | `theorem` | [add_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/add-algebramap--16db640f2c49c8726447f276.md) | 164 | `result-track:16db640f2c49c8726447f2767c103f3745e0d56f8b0d48524fef81b4db4824f7` |
| 17 | `theorem` | [sub_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/sub-algebramap--fa80983d2d6fec6dddd637c1.md) | 181 | `result-track:fa80983d2d6fec6dddd637c1ef49e8ea14b61e6d4a0ec0f695627c4adcd4f623` |
| 18 | `theorem` | [neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/neg--591ff898f11ce66c6715297c.md) | 185 | `result-track:591ff898f11ce66c6715297c8a03e20463cca6f1f783262f23f7464ebe99b99f` |
| 19 | `def` | [Fintype.subtypeProd](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/fintype-subtypeprod--cd1f6979bbfbe7bf437c7c6c.md) | 210 | `declaration-track:cd1f6979bbfbe7bf437c7c6c63f07b22fe4b9488465c9e539407140fdf9705b2` |
| 20 | `def` | [rootsOfMinPolyPiType](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/rootsofminpolypitype--dea46cc4457be8384dc068c9.md) | 218 | `declaration-track:dea46cc4457be8384dc068c9ea9ca9d727b6b1fd60949bbed5e4cdeee934774c` |
| 21 | `theorem` | [aux_inj_roots_of_min_poly](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/aux-inj-roots-of-min-poly--4a52acf31bf0782fcf0ba75a.md) | 225 | `result-track:4a52acf31bf0782fcf0ba75a91e02ec333dbe5c157c59ce9cbeed93f0d392c52` |
| 22 | `instance` | [AlgHom.fintype](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/alghom-fintype--9233c94644aa9cc545726b1f.md) | 235 | `declaration-track:9233c94644aa9cc545726b1f6bd66ae87e86255ed161c52b059ee96eaefbcbc9` |
| 23 | `theorem` | [eq_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/eq-x-sub-c--df0bd30c519387e9d5b71de7.md) | 247 | `result-track:df0bd30c519387e9d5b71de7a864f74dedf353225923fc2f15b6b3e4bda711af` |
| 24 | `theorem` | [eq_X_sub_C'](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/eq-x-sub-c--c7e0cfb1970fcc7ef7235807.md) | 250 | `result-track:c7e0cfb1970fcc7ef72358074c005caad0fa550cddf16ca02cd96597ee6dca71` |
| 25 | `theorem` | [zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/zero--db13f98981d7682c33a66cd4.md) | 257 | `result-track:db13f98981d7682c33a66cd4791ac286c4c2323edc128168fd483c45a4d9ab97` |
| 26 | `theorem` | [one](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/one--43f1ce1c25190c15d22e09d8.md) | 262 | `result-track:43f1ce1c25190c15d22e09d813b2a466b751fc5bb527826c62ea0565ebd6f613` |
| 27 | `theorem` | [prime](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/prime--9b1a76f040548e63006f296c.md) | 273 | `result-track:9b1a76f040548e63006f296cea254361ec1ffed86b6ee4ae2f639093798f0ef0` |
| 28 | `theorem` | [root](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/root--a6e6b2259e423c9d762d94d4.md) | 282 | `result-track:a6e6b2259e423c9d762d94d4377a51695666c95ec0a49e422a1e95376c6fef55` |
| 29 | `theorem` | [coeff_zero_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/coeff-zero-eq-zero--c752e8ed997a855267d53f1f.md) | 292 | `result-track:c752e8ed997a855267d53f1fd098ed80a7ba24f10828a052fd8c51cdac46d7ef` |
| 30 | `theorem` | [coeff_zero_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/coeff-zero-ne-zero--d09d80eed849cb7e961cb5bc.md) | 302 | `result-track:d09d80eed849cb7e961cb5bcd3ea09d2186ab7af5faedc763e861125cab2fbe9` |
| 31 | `lemma` | [minpoly_algEquiv_toLinearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/minpoly-algequiv-tolinearmap--24a34fb7dc6c32b17fb8ac7a.md) | 315 | `result-track:24a34fb7dc6c32b17fb8ac7a3f15f198aa1ec98c148ea177274ff4c80a9d7e31` |
| 32 | `lemma` | [minpoly_algHom_toLinearMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Field/Variantee0d5f35912b3352d8edf1ea2f47004e70066158d001bf3abe982d0d791b71bc.lean/declarations/minpoly-alghom-tolinearmap--7ec174f2c6309b22220016d3.md) | 332 | `result-track:7ec174f2c6309b22220016d32807d0b7222eac87468d291103f537aaddc9e066` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
