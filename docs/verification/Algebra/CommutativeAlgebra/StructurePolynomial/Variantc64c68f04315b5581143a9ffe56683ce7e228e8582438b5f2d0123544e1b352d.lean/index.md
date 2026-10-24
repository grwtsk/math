# Verification target: GRWTSK.Algebra.CommutativeAlgebra.StructurePolynomial.Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cc0432206657a0d0e63f24b6dfbf4bfcccf25e2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cc0432206657a0d0e63f24b6dfbf4bfcccf25e2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Polynomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.WittPolynomial` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittStructureRat](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/wittstructurerat--84a020524fa21d9b1e1a88c5.md) | 144 | `declaration-track:84a020524fa21d9b1e1a88c573514542f4e458626974b00c65917a83e4623a54` |
| 2 | `theorem` | [wittStructureRat_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/wittstructurerat-prop--b3d8c9d67ff62d53fdf1be9e.md) | 148 | `result-track:b3d8c9d67ff62d53fdf1be9e437997fb2831760cc779e48f339de17f81ee4cd4` |
| 3 | `theorem` | [wittStructureRat_existsUnique](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/wittstructurerat-existsunique--66c2e6500399802c3e8fdc34.md) | 159 | `result-track:66c2e6500399802c3e8fdc348fc338cd6b9f289244b60a3d2fea4b5dffbfea34` |
| 4 | `theorem` | [wittStructureRat_rec_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/wittstructurerat-rec-aux--cab1c64fdc139aac12565958.md) | 172 | `result-track:cab1c64fdc139aac1256595848193cd99c3a513e4c10b5a5a592862bf7b637d2` |
| 5 | `theorem` | [wittStructureRat_rec](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/wittstructurerat-rec--09252f741c739ba0e576a1a3.md) | 187 | `result-track:09252f741c739ba0e576a1a320ecea303defbb612b229aede935a72be630fc57` |
| 6 | `def` | [wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/wittstructureint--5df0ec2c792bab718d0c8d54.md) | 211 | `declaration-track:5df0ec2c792bab718d0c8d541f8321df88a14171621b52e3ac969655d7c2df6b` |
| 7 | `theorem` | [bind₁_rename_expand_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/bind-rename-expand-wittpolynomial--721e70d264f98081cd968bb3.md) | 217 | `result-track:721e70d264f98081cd968bb3fe97f28ba210cc11612247a5323547fc62b0347d` |
| 8 | `theorem` | [C_p_pow_dvd_bind₁_rename_wittPolynomial_sub_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/c-p-pow-dvd-bind-rename-wittpolynomial-sub-sum--1fef37920ab9c1b589aaff9e.md) | 237 | `result-track:1fef37920ab9c1b589aaff9e15bcf64cd68d63da42bef6e3e1337e5eb0b15e41` |
| 9 | `theorem` | [map_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/map-wittstructureint--8cdca05a3a432c2c5ab9c4d8.md) | 284 | `result-track:8cdca05a3a432c2c5ab9c4d89548ae9c628538d0076133d87d40fce2f9c07dfe` |
| 10 | `theorem` | [wittStructureInt_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/wittstructureint-prop--8cc0b8cbcc3431d9c4b3a67c.md) | 311 | `result-track:8cc0b8cbcc3431d9c4b3a67ccc7475817b1c2e0278654aff739752646a15acbe` |
| 11 | `theorem` | [eq_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/eq-wittstructureint--e6cb92d79b7f2fe0d9891da1.md) | 320 | `result-track:e6cb92d79b7f2fe0d9891da1021893507265eaa1539adb4b1705dd77e759e988` |
| 12 | `theorem` | [wittStructureInt_existsUnique](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/wittstructureint-existsunique--8a5d8feccb9671aef6001951.md) | 338 | `result-track:8a5d8feccb9671aef6001951ba204cf05b83c80554ad97ddb43be450e8794213` |
| 13 | `theorem` | [witt_structure_prop](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/witt-structure-prop--823b1bfed38f78f2b56aa07b.md) | 345 | `result-track:823b1bfed38f78f2b56aa07b748190b646a29fac0ab599d3785abb591e69ea93` |
| 14 | `theorem` | [wittStructureInt_rename](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/wittstructureint-rename--1095cc3da29bd09e75dbe00c.md) | 355 | `result-track:1095cc3da29bd09e75dbe00c4e81bfc240049b19fd5970bb5094ba8d586d53e4` |
| 15 | `theorem` | [constantCoeff_wittStructureRat_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/constantcoeff-wittstructurerat-zero--9e4003f2bafe27c825ca5e49.md) | 364 | `result-track:9e4003f2bafe27c825ca5e49a3ffdfb3a5b6876291527905f1fa9dd077e34264` |
| 16 | `theorem` | [constantCoeff_wittStructureRat](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/constantcoeff-wittstructurerat--06f85cb0debc96c61869530a.md) | 371 | `result-track:06f85cb0debc96c61869530a97337ab2976d8d1adc648a4bd3a5e73671d84198` |
| 17 | `theorem` | [constantCoeff_wittStructureInt_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/constantcoeff-wittstructureint-zero--16c7f01be8acb7bd09fb65cb.md) | 379 | `result-track:16c7f01be8acb7bd09fb65cb232f1e6d0a43c60a1079a67549a95797a5258d61` |
| 18 | `theorem` | [constantCoeff_wittStructureInt](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/constantcoeff-wittstructureint--a25b2ddbc1a900940bb1c577.md) | 387 | `result-track:a25b2ddbc1a900940bb1c577cbd34477f74d78596975772e04a2a473f81a9ec0` |
| 19 | `theorem` | [wittStructureRat_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/wittstructurerat-vars--f73cfa81626dc86c3949f019.md) | 399 | `result-track:f73cfa81626dc86c3949f01996f088f937cb499b6661f342e09721ad2bc0cb7c` |
| 20 | `theorem` | [wittStructureInt_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/StructurePolynomial/Variantc64c68f04315b5581143a9ffe56683ce7e228e8582438b5f2d0123544e1b352d.lean/declarations/wittstructureint-vars--8827e967d021088e6f3c8cee.md) | 415 | `result-track:8827e967d021088e6f3c8cee07aed3cabb2bea188d4f0794216bccf73a99fa98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
