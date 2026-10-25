# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SMul.Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3b6559d24133f1471072e4a9e0446cbcdb9c337",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3b6559d24133f1471072e4a9e0446cbcdb9c337`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.SMulWithZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/issmulregular--87c2d916adfb7a4cbf52db1e.md) | 43 | `declaration-track:87c2d916adfb7a4cbf52db1ebd04eca8e4b1740c5b4647fbeb2816ba36c479b5` |
| 2 | `theorem` | [IsLeftRegular.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/isleftregular-issmulregular--d8f0d17c314cd690460cee7f.md) | 47 | `result-track:d8f0d17c314cd690460cee7fed3ec02fbf43d29faf58a821608b85cfe632a4a1` |
| 3 | `theorem` | [isLeftRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/isleftregular-iff--15e56d51598de1cc28995851.md) | 52 | `result-track:15e56d51598de1cc28995851f21c055596ebcd066971fd857bcd3b375b594c71` |
| 4 | `theorem` | [IsRightRegular.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/isrightregular-issmulregular--f86d01c34ebaf04942e36210.md) | 56 | `result-track:f86d01c34ebaf04942e3621021cadd91a8f3bacc740be85233c181cd082ac18e` |
| 5 | `theorem` | [isRightRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/isrightregular-iff--94f782c74df3b4c2857c02de.md) | 62 | `result-track:94f782c74df3b4c2857c02dee974b1c148e217896b58d61c1167b24aa8bb5c4e` |
| 6 | `theorem` | [smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/smul--f21671ebd9917530b0bf6470.md) | 76 | `result-track:f21671ebd9917530b0bf6470288a24a20c95b8465ba58f8f4a118f2cc87437a7` |
| 7 | `theorem` | [of_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/of-smul--122239af78f3232a6e12149f.md) | 82 | `result-track:122239af78f3232a6e12149fedda239148bdb6a650b88bcdfeb8e6df799929a3` |
| 8 | `theorem` | [smul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/smul-iff--bbe426131f70f526fa70a5e2.md) | 92 | `result-track:bbe426131f70f526fa70a5e27f9659d793cb7231061311b23d4be8f05c7cc2b6` |
| 9 | `theorem` | [isLeftRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/isleftregular--607391ed1b704c6ac0717503.md) | 96 | `result-track:607391ed1b704c6ac0717503b742118f0fdf9915d312057e6e1a5b948c229650` |
| 10 | `theorem` | [isRightRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/isrightregular--a01c86d9bf8840a756dbe4d5.md) | 100 | `result-track:a01c86d9bf8840a756dbe4d5fbea9ebdfcf779c6667edc3a35e7f67569daeb34` |
| 11 | `theorem` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/mul--8b236de6ad5dfb61eb8abfd5.md) | 105 | `result-track:8b236de6ad5dfb61eb8abfd5e239b5987986ad71fcd929be389441b05835d627` |
| 12 | `theorem` | [of_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/of-mul--633c91f60da13876c50ad9d2.md) | 110 | `result-track:633c91f60da13876c50ad9d24960a10ac3ebc9e36c2aaf0ec16bfbaa21391789` |
| 13 | `theorem` | [mul_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/mul-iff-right--6f870dbb1073a15fbb34a0db.md) | 117 | `result-track:6f870dbb1073a15fbb34a0db0f2e95eb2a5239df676dad4dc2bad8ce1be0d01e` |
| 14 | `theorem` | [mul_and_mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/mul-and-mul-iff--94fd227761fa36d93bd1afa2.md) | 124 | `result-track:94fd227761fa36d93bd1afa2fc476485fdd36d2ac435cf9926cf371bf1cea950` |
| 15 | `theorem` | [one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/one--a28e2526af0aa6b95fa3a371.md) | 143 | `result-track:a28e2526af0aa6b95fa3a3711d9c236b4080dd8f53699ffc099392cde7ba42b7` |
| 16 | `theorem` | [of_mul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/of-mul-eq-one--113cd3c898931e25751b9f18.md) | 152 | `result-track:113cd3c898931e25751b9f18a2583421625662b463409212eb3a7631fe438592` |
| 17 | `theorem` | [pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/pow--8c72a0b0f626bc4b8d1d2bb3.md) | 160 | `result-track:8c72a0b0f626bc4b8d1d2bb3f0d9bc7c272e6ab195b7c93c364f52e2782f94fd` |
| 18 | `theorem` | [pow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/pow-iff--18bbf7abb49f4aada2200a7f.md) | 168 | `result-track:18bbf7abb49f4aada2200a7fa5f222eaab0160f33735b50e452c1ab11c66d9f2` |
| 19 | `theorem` | [of_smul_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/of-smul-eq-one--817e66ec2873ce55234dbd45.md) | 181 | `result-track:817e66ec2873ce55234dbd45a5d62c8d06a20fa17abdc2c9492ef3e8d9a8d498` |
| 20 | `theorem` | [subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/subsingleton--1fedd91f9de8061f432b5151.md) | 196 | `result-track:1fedd91f9de8061f432b5151aa1bb270ef976333ee5d6c62a155bc8d67c121a0` |
| 21 | `theorem` | [zero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/zero-iff-subsingleton--a58c1adad500ff9d2a332809.md) | 201 | `result-track:a58c1adad500ff9d2a332809cf0b3f5df072951cae1b48ea63f6a9fd49f5f9a9` |
| 22 | `theorem` | [not_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/not-zero-iff--6adebd7560afbc539da98360.md) | 206 | `result-track:6adebd7560afbc539da98360ba0447fe0db0fe76a887fd5f092a033f944e8588` |
| 23 | `theorem` | [zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/zero--1f386235a32a97695eb59f11.md) | 213 | `result-track:1f386235a32a97695eb59f11177abca633f60516c56012207b6a396c6040b92e` |
| 24 | `theorem` | [not_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/not-zero--f56874b3343cd3ec8550433a.md) | 218 | `result-track:f56874b3343cd3ec8550433afec5d120a06d88ccda989ee12caab9a3d9a9ba24` |
| 25 | `theorem` | [mul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/mul-iff--d428cb30f82e732a9dbd3c05.md) | 229 | `result-track:d428cb30f82e732a9dbd3c0518b0f9f0048fad8ae371f729ded1b379200b1771` |
| 26 | `theorem` | [isSMulRegular_of_group](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/issmulregular-of-group--ef14e12b1a8eed0a7760151d.md) | 244 | `result-track:ef14e12b1a8eed0a7760151dbcaa67493abdb31b1fe4d49b32331c2a0c5436ac` |
| 27 | `theorem` | [Units.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/units-issmulregular--98504207a490641fd653ba89.md) | 256 | `result-track:98504207a490641fd653ba892c13fbf2938b9b3ac00df6ce7c337ef8ec5db3ed` |
| 28 | `theorem` | [IsUnit.isSMulRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variant9ec427b23a826d86699dfb92c0bf6dbf79b87bf0663b68af01f1bc1f11d6b413.lean/declarations/isunit-issmulregular--be1b71156012ba115a05cf84.md) | 261 | `result-track:be1b71156012ba115a05cf8421f46ae720c6c9e2a3dc53190b0749f439821f0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
