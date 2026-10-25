# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SMul.Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fbd9eada1976c063fe106761e9a42f49af231d1",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fbd9eada1976c063fe106761e9a42f49af231d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.SMulWithZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/issmulregular--6ef2aa48ec75aa2e1ab7caad.md) | 35 | `declaration-track:6ef2aa48ec75aa2e1ab7caada5338ce48f4f0bbac3d1f692a53cd829ed66cdc8` |
| 2 | `theorem` | [IsLeftRegular.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/isleftregular-issmulregular--bfaae343ed45d230cad4b8b3.md) | 39 | `result-track:bfaae343ed45d230cad4b8b3aef298633cbbd399496c422c0b20fccb68352730` |
| 3 | `theorem` | [isLeftRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/isleftregular-iff--a30dc108c72f3c4de4ffcf8c.md) | 44 | `result-track:a30dc108c72f3c4de4ffcf8c009de418098338080b4d6af28906532c1cc35593` |
| 4 | `theorem` | [IsRightRegular.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/isrightregular-issmulregular--4b70bf4e1951abb293b8977a.md) | 48 | `result-track:4b70bf4e1951abb293b8977aba9910343098318be18be03f17f32c27f46d3225` |
| 5 | `theorem` | [isRightRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/isrightregular-iff--d0781853d9dfdeb515279cd9.md) | 54 | `result-track:d0781853d9dfdeb515279cd942ed645ffd3d4dc66475507d2823b9c2b1a4a52d` |
| 6 | `theorem` | [smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/smul--76b7b59237821e3ff0879304.md) | 68 | `result-track:76b7b59237821e3ff0879304aca59113b4584f6f75126dd99a02e85e81f75a5f` |
| 7 | `theorem` | [of_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/of-smul--0904bf189b49315473b85740.md) | 74 | `result-track:0904bf189b49315473b85740e3a3b4fb0df56a2da3bd23edd86a759ebe0f5c94` |
| 8 | `theorem` | [smul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/smul-iff--dcc1fc000ea01d5d78f8ba05.md) | 84 | `result-track:dcc1fc000ea01d5d78f8ba058e8d8299231427fa8201dd25af7e9aa9d384ae4d` |
| 9 | `theorem` | [isLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/isleftregular--a71f0fad301901563ef2f56d.md) | 88 | `result-track:a71f0fad301901563ef2f56de0cf8ead71409ab167039af7fe1c088722bbda6f` |
| 10 | `theorem` | [isRightRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/isrightregular--ebc7f4e5040174e19804d033.md) | 92 | `result-track:ebc7f4e5040174e19804d033f36a781892e3e257c4ecec8eb8b7b0a21c1fa900` |
| 11 | `theorem` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/mul--64de10a519dff688769f419e.md) | 97 | `result-track:64de10a519dff688769f419e0da3f6d9c34025093e8a97eefc5ad464476a7dbd` |
| 12 | `theorem` | [of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/of-mul--ec6d15fa1f1e5eccd66ebb7b.md) | 102 | `result-track:ec6d15fa1f1e5eccd66ebb7bc4678265827edc87a356d796b0d68458c2355d95` |
| 13 | `theorem` | [mul_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/mul-iff-right--8e4c964ed5c4cb7f4ad290b7.md) | 109 | `result-track:8e4c964ed5c4cb7f4ad290b7fe36ace2479571a6b7c8d59b724fb380dc69cecc` |
| 14 | `theorem` | [mul_and_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/mul-and-mul-iff--172711b0b177f5b55ba2b850.md) | 116 | `result-track:172711b0b177f5b55ba2b85037a40875e8e1991a20032980d51963b65c557e21` |
| 15 | `theorem` | [one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/one--d5d3d53df49211739c5849f8.md) | 135 | `result-track:d5d3d53df49211739c5849f85e6c6fe52e6d1bab8c36bcc89a3af568bdc95ac7` |
| 16 | `theorem` | [of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/of-mul-eq-one--cb5b26a39cf2880ce7e6dbbc.md) | 144 | `result-track:cb5b26a39cf2880ce7e6dbbccebc5ce58116f31d3eb333d71180ed7e8b73177e` |
| 17 | `theorem` | [pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/pow--0ae91a68798e98e8ed5237ad.md) | 152 | `result-track:0ae91a68798e98e8ed5237ad072a8b1748fc02e7783ba67018d6f983a0c50e3d` |
| 18 | `theorem` | [pow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/pow-iff--6fec8462209130e7ae95125f.md) | 160 | `result-track:6fec8462209130e7ae95125f51b440b6db858ca8d78a13b9837fe73079de92ff` |
| 19 | `theorem` | [of_smul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/of-smul-eq-one--cac02cb02c7c3e289b31f01f.md) | 173 | `result-track:cac02cb02c7c3e289b31f01ff8b5cd502ce5a6c709bd39c2f105533174895712` |
| 20 | `theorem` | [subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/subsingleton--af9e1069baf7502967183136.md) | 188 | `result-track:af9e1069baf7502967183136dd736f8e2deee55ff4d5ed3e1e28a186d2a13c24` |
| 21 | `theorem` | [zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/zero-iff-subsingleton--33f63f178e500e140e17ae00.md) | 193 | `result-track:33f63f178e500e140e17ae00837c3019f1f36e716d72c3fd9753f5e64260a117` |
| 22 | `theorem` | [not_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/not-zero-iff--fde2c06df1a599feb32dde44.md) | 198 | `result-track:fde2c06df1a599feb32dde4469947c8efbbe4877622a8fcf3d10e9ed0cbe8386` |
| 23 | `theorem` | [zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/zero--ffd115c36cb9e5d1befe4a2f.md) | 205 | `result-track:ffd115c36cb9e5d1befe4a2f98aa06390eff7cc9a42a18f8460c8457b5c416e1` |
| 24 | `theorem` | [not_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/not-zero--3ac91dc8735f168740d3bf65.md) | 210 | `result-track:3ac91dc8735f168740d3bf659aa5cc85cb87e814dab93ecbc15cf27c9b1772bc` |
| 25 | `theorem` | [mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/mul-iff--2fd11ff26db5dd996398665a.md) | 221 | `result-track:2fd11ff26db5dd996398665a50adf56654d7c9c5c8134f933edc2bbb6bd87a14` |
| 26 | `theorem` | [isSMulRegular_of_group](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/issmulregular-of-group--526367bdacb24bddea92b1aa.md) | 236 | `result-track:526367bdacb24bddea92b1aaa3a6873abeebe6b00ffea5495d29ca046eac32fe` |
| 27 | `theorem` | [Units.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/units-issmulregular--5432370d8821aefb1b468885.md) | 248 | `result-track:5432370d8821aefb1b468885a3cfa3eec6ccbf6b60a15f813529111c37431641` |
| 28 | `theorem` | [IsUnit.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf3d1a2642860f169ca6f102e76b2ea7aa6c3d5707ae74ac524bf54572d82450a.lean/declarations/isunit-issmulregular--b37574ca6d189f01ba458c8d.md) | 253 | `result-track:b37574ca6d189f01ba458c8d6593294bf27753770fdc8d4eed41f75c0e5f925e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
