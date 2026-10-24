# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Bounds.Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f495048c5988d6b3116bdc1ee7ac80a99136fb6e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f495048c5988d6b3116bdc1ee7ac80a99136fb6e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.OrderIso` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bddAbove_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/bddabove-inv--29e10149bdda59c073b34c03.md) | 40 | `result-track:29e10149bdda59c073b34c03a7d7121b09e1373d1615008d8abd5a433e8e323d` |
| 2 | `theorem` | [bddBelow_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/bddbelow-inv--39dcdcccb357075deb11991f.md) | 46 | `result-track:39dcdcccb357075deb11991f7f07b717269673e64d3030ddb06df96f65864ec5` |
| 3 | `theorem` | [BddAbove.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/bddabove-inv--d35efd99330ccf57eb92d0a9.md) | 52 | `result-track:d35efd99330ccf57eb92d0a904b724b8c30b02ebe6f1d70c99ab1545b4dd5bcc` |
| 4 | `theorem` | [BddBelow.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/bddbelow-inv--fd992148c3fde5e3c4de92a6.md) | 58 | `result-track:fd992148c3fde5e3c4de92a69e966835c246cc6515496a5f7944f039bf8ff477` |
| 5 | `theorem` | [isLUB_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/islub-inv--85560e8043caf31b813f56a6.md) | 64 | `result-track:85560e8043caf31b813f56a630ae991b99eba0d427d0a202c73ee97a6fdb07ca` |
| 6 | `theorem` | [isLUB_inv'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/islub-inv--8488c6eaedc62ad078f11111.md) | 70 | `result-track:8488c6eaedc62ad078f111111d1ac9802cb9ceaf6943d5c615fe201ccee16a15` |
| 7 | `theorem` | [IsGLB.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/isglb-inv--40cf386df87746cb28f04d9e.md) | 76 | `result-track:40cf386df87746cb28f04d9e43df113def0701078cd6cdcf0e6d0fff390b8c38` |
| 8 | `theorem` | [isGLB_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/isglb-inv--ee8867ba9ac0746e48639cf0.md) | 82 | `result-track:ee8867ba9ac0746e48639cf04aa857fb0c110010c5fa3391fac423380170e827` |
| 9 | `theorem` | [isGLB_inv'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/isglb-inv--53da0de20b14f0f8a4faa543.md) | 88 | `result-track:53da0de20b14f0f8a4faa54398d9577b0d833c009a0db8b3d1037383b016d490` |
| 10 | `theorem` | [IsLUB.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/islub-inv--1d163c0d810b7fe57a498cc5.md) | 94 | `result-track:1d163c0d810b7fe57a498cc54248443fffcf07a83a31795936fc1094e0415259` |
| 11 | `theorem` | [mul_mem_upperBounds_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/mul-mem-upperbounds-mul--8282fa983f0a97b9458c66d7.md) | 107 | `result-track:8282fa983f0a97b9458c66d7a4fd8508ee14d13c9c918ac03ea63a67899b95ec` |
| 12 | `theorem` | [subset_upperBounds_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/subset-upperbounds-mul--7fabba7e53599b78d0cf8a03.md) | 114 | `result-track:7fabba7e53599b78d0cf8a038e0dfda134ee07fd798274fd0bd18b6288e596c7` |
| 13 | `theorem` | [mul_mem_lowerBounds_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/mul-mem-lowerbounds-mul--558e95f30f6bee5082686e05.md) | 121 | `result-track:558e95f30f6bee5082686e0555b2c3724b567a7c55c39a07ca2b1b0346a04ea3` |
| 14 | `theorem` | [subset_lowerBounds_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/subset-lowerbounds-mul--9b8ae24c14e0e2745c767a04.md) | 128 | `result-track:9b8ae24c14e0e2745c767a04a597de4e828a7474f7aa4f4ab27802d4eb3c3848` |
| 15 | `theorem` | [BddAbove.mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/bddabove-mul--851e8591ce7b48f828ad82f3.md) | 135 | `result-track:851e8591ce7b48f828ad82f3520feda35396f7ca1ed813256e5c350cb0bf6d85` |
| 16 | `theorem` | [BddBelow.mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/bddbelow-mul--a79aab93b233265024a3ae51.md) | 141 | `result-track:a79aab93b233265024a3ae51ff3f36604c0a77640d0e4fb89dcdb668ff1be84f` |
| 17 | `theorem` | [ciSup_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/cisup-mul--221222ae193aa3faa378ad38.md) | 156 | `result-track:221222ae193aa3faa378ad383267e3146e398ab493a5694bda51e7c03d9fdd30` |
| 18 | `theorem` | [ciSup_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/cisup-div--08553514a28ff77e5956113b.md) | 162 | `result-track:08553514a28ff77e5956113b765bdc9aeda6acd25370da78f5751edc543f5ec9` |
| 19 | `theorem` | [mul_ciSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Bounds/Variant2f4b756630b4865d01e6003754a27e54e803d11a87d0d73f10820eddbb7bc779.lean/declarations/mul-cisup--96e7880f3ce80e706e7fbfb8.md) | 175 | `result-track:96e7880f3ce80e706e7fbfb8c7aa7209e3e1d6ccd0c4ab0b7723b4e18b4b8184` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
