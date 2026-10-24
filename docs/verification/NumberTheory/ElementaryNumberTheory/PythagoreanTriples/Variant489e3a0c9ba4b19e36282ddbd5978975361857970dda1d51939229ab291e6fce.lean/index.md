# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PythagoreanTriples.Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5b1fe7887071eeadb6ae1b2fab2f5dbe7d4d4fc",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5b1fe7887071eeadb6ae1b2fab2f5dbe7d4d4fc`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.NatPrime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sq_ne_two_fin_zmod_four](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/sq-ne-two-fin-zmod-four--eed410400726aeeeb244b557.md) | 27 | `result-track:eed410400726aeeeb244b5577ac47ede67ec78342f06ed9326c3e78d9813aa9b` |
| 2 | `theorem` | [Int.sq_ne_two_mod_four](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/int-sq-ne-two-mod-four--a8295af6ebfa7b48629c3cd4.md) | 31 | `result-track:a8295af6ebfa7b48629c3cd405ee48c8d10871f83a9d5e1aed448f03bba1ff8a` |
| 3 | `def` | [PythagoreanTriple](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/pythagoreantriple--95862a18eb79e18e66e108c8.md) | 39 | `declaration-track:95862a18eb79e18e66e108c88d80c61368145e7536de1e2b0db6a81356fe4a98` |
| 4 | `theorem` | [pythagoreanTriple_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/pythagoreantriple-comm--677770b814d8f9794da4749c.md) | 44 | `result-track:677770b814d8f9794da4749c9871d9e64b690792be3c07b2a2f054e631f1166d` |
| 5 | `theorem` | [PythagoreanTriple.zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/pythagoreantriple-zero--2f8053268b618baadf2cf5d7.md) | 49 | `result-track:2f8053268b618baadf2cf5d7d0069ebbdc54bc63c16aacb784b4e75bc28901f0` |
| 6 | `theorem` | [eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/eq--b1f61e9333b988f379b901fc.md) | 56 | `result-track:b1f61e9333b988f379b901fc8880bbe3e37e05de5d7294aa95e9502978d61c90` |
| 7 | `theorem` | [symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/symm--164924971719f7bb319290d8.md) | 60 | `result-track:164924971719f7bb319290d8d5a770f9b9d83fece8566c829911197c33c46350` |
| 8 | `theorem` | [mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/mul--2f9945fb1d89fb3186986155.md) | 65 | `result-track:2f9945fb1d89fb3186986155e2601a61783b59e31ea282958bd51a9c7bf2b589` |
| 9 | `theorem` | [mul_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/mul-iff--9c41ed1c184ae9c7e35dda86.md) | 73 | `result-track:9c41ed1c184ae9c7e35dda861360f7b8ec3e90e391bcea98ad7f30c2c0386b38` |
| 10 | `def` | [IsClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/isclassified--931082bfff1c5a17dd7d7103.md) | 86 | `declaration-track:931082bfff1c5a17dd7d71032ec787de7964fb5956333d3e3ff56d209d346301` |
| 11 | `def` | [IsPrimitiveClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/isprimitiveclassified--7767e7b44ead772dc512f617.md) | 98 | `declaration-track:7767e7b44ead772dc512f6170fed56c1055771a1f78bd7330db5ad554a3127f4` |
| 12 | `theorem` | [mul_isClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/mul-isclassified--013df51d3b0e09c529cf2afd.md) | 106 | `result-track:013df51d3b0e09c529cf2afd7972c91c8b0eda6740b61c66330b1bd5a6b4cd29` |
| 13 | `theorem` | [even_odd_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/even-odd-of-coprime--0d16d17d1e077d15ac5e32ff.md) | 117 | `result-track:0d16d17d1e077d15ac5e32fffc0f4478a243234a7e4e1a2f97a3d133f658e336` |
| 14 | `theorem` | [gcd_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/gcd-dvd--6b1bd7e2f328c90bfb2243ae.md) | 148 | `result-track:6b1bd7e2f328c90bfb2243aef74f8903e4e868eb579f934268a46ad465fa0d92` |
| 15 | `theorem` | [normalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/normalize--596d2f1155f852bd77eecf93.md) | 168 | `result-track:596d2f1155f852bd77eecf937bfa8fd690e6de3da5d8d1d3ec1d7917a6ec883c` |
| 16 | `theorem` | [isClassified_of_isPrimitiveClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/isclassified-of-isprimitiveclassified--ffb8263bc4b5ffd5dc300915.md) | 192 | `result-track:ffb8263bc4b5ffd5dc30091525ff55f2de2ac6d9dec9ce093b0bab023aef22f5` |
| 17 | `theorem` | [isClassified_of_normalize_isPrimitiveClassified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/isclassified-of-normalize-isprimitiveclassified--ffac0f9c3c16ef9c58bbcf02.md) | 197 | `result-track:ffac0f9c3c16ef9c58bbcf0284921c5924dcefeb5197800ee40093fa4c406977` |
| 18 | `theorem` | [ne_zero_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/ne-zero-of-coprime--089c1c9a844f76947bf45a81.md) | 206 | `result-track:089c1c9a844f76947bf45a811b7f53f23904f3f723d7f91c40af2fceda3e12a5` |
| 19 | `theorem` | [isPrimitiveClassified_of_coprime_of_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/isprimitiveclassified-of-coprime-of-zero-left--eea5d2eca865e8a003f1cec8.md) | 218 | `result-track:eea5d2eca865e8a003f1cec8b0d298a09f27ba1f0e606d5ca659fbc648cf0740` |
| 20 | `theorem` | [coprime_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/coprime-of-coprime--3b15aadba25687c4ce9c3476.md) | 231 | `result-track:3b15aadba25687c4ce9c3476ec868f19e28558c61242999f829333f869b5cb97` |
| 21 | `def` | [circleEquivGen](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/circleequivgen--0eb806e91fa26848b8fd2b2b.md) | 256 | `declaration-track:0eb806e91fa26848b8fd2b2ba03f4d0dbcfe36c53a0a025fbbd1489b248ce01f` |
| 22 | `theorem` | [circleEquivGen_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/circleequivgen-apply--1005261ee5e884dd9af637f9.md) | 290 | `result-track:1005261ee5e884dd9af637f955e1b4c7f5cb9748616101d6df88a03b94434ba1` |
| 23 | `theorem` | [circleEquivGen_symm_apply](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/circleequivgen-symm-apply--6f4abfdbcbe7a9a5158d91c6.md) | 295 | `result-track:6f4abfdbcbe7a9a5158d91c68d7be8a371efdfc3c58b58a26b8e22b2ac46cce7` |
| 24 | `theorem` | [coprime_sq_sub_sq_add_of_even_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/coprime-sq-sub-sq-add-of-even-odd--c7bcda528828238ec200e41f.md) | 302 | `result-track:c7bcda528828238ec200e41f07c394b1a2b78f1208386da8db9fcf65c8726358` |
| 25 | `theorem` | [coprime_sq_sub_sq_add_of_odd_even](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/coprime-sq-sub-sq-add-of-odd-even--8629138af69e1c991b5bafc8.md) | 328 | `result-track:8629138af69e1c991b5bafc8b90a89bd69879496c66b570e360d0024a8581059` |
| 26 | `theorem` | [coprime_sq_sub_mul_of_even_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/coprime-sq-sub-mul-of-even-odd--05aec9fb3183653bc62f320d.md) | 334 | `result-track:05aec9fb3183653bc62f320d28c69e06d587bcc9c6c4db159fe3936ea332bb28` |
| 27 | `theorem` | [coprime_sq_sub_mul_of_odd_even](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/coprime-sq-sub-mul-of-odd-even--0f20d579d4d7882d3a40f874.md) | 366 | `result-track:0f20d579d4d7882d3a40f87400636d640b36d0dfc4d800fae173118eaea5a591` |
| 28 | `theorem` | [coprime_sq_sub_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/coprime-sq-sub-mul--e3d0ef2ab2044eae94f3e73e.md) | 372 | `result-track:e3d0ef2ab2044eae94f3e73e4e4c84570ed6ae319f4f541075aca89692e3e412` |
| 29 | `theorem` | [coprime_sq_sub_sq_sum_of_odd_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/coprime-sq-sub-sq-sum-of-odd-odd--da729d43e94fb8e36f60da43.md) | 379 | `result-track:da729d43e94fb8e36f60da43f275a935f8414f991fcf79ab424e4e9e14cfde19` |
| 30 | `theorem` | [isPrimitiveClassified_aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/isprimitiveclassified-aux--67485cdb2e8034861d73f799.md) | 415 | `result-track:67485cdb2e8034861d73f79961afc37d4e6d960ee106226a9a6ecc2da5ec7272` |
| 31 | `theorem` | [isPrimitiveClassified_of_coprime_of_odd_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/isprimitiveclassified-of-coprime-of-odd-of-pos--0e04477c80230fb1afdf6e75.md) | 432 | `result-track:0e04477c80230fb1afdf6e75bbf64c4731ec5b10f313f1d267bbcc4eba05fb89` |
| 32 | `theorem` | [isPrimitiveClassified_of_coprime_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/isprimitiveclassified-of-coprime-of-pos--dbbf20612c3fa7a85acab08a.md) | 528 | `result-track:dbbf20612c3fa7a85acab08a63dccbabdcace2402e0e8c539e384ad0e4429999` |
| 33 | `theorem` | [isPrimitiveClassified_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/isprimitiveclassified-of-coprime--acce729cafce0ecfbf7f71ab.md) | 536 | `result-track:acce729cafce0ecfbf7f71ab435d2fb395febe666becebec27f1705b28883258` |
| 34 | `theorem` | [classified](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/classified--248844b109e8f3e88ca7dc81.md) | 544 | `result-track:248844b109e8f3e88ca7dc81864f3f69b3171d079bcdb7b4ea811707dc1cdff3` |
| 35 | `theorem` | [coprime_classification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/coprime-classification--6d4af37cf930797b13b7d8c7.md) | 558 | `result-track:6d4af37cf930797b13b7d8c7c836daeab1376fabf3688e17ecb9a63cfc24704a` |
| 36 | `theorem` | [coprime_classification'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/coprime-classification--958f44f4393f97bc75787279.md) | 587 | `result-track:958f44f4393f97bc7578727934432c7374acd8f2126a45dec219d6900e4e76f1` |
| 37 | `theorem` | [classification](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant489e3a0c9ba4b19e36282ddbd5978975361857970dda1d51939229ab291e6fce.lean/declarations/classification--a2867b97d1ce042cf48bf761.md) | 638 | `result-track:a2867b97d1ce042cf48bf761c229dee026e8bc88905429a6d2ba1bede9135a0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
