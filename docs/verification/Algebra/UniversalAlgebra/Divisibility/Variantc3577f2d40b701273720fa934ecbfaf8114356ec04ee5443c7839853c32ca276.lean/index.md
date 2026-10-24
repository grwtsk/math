# Verification target: GRWTSK.Algebra.UniversalAlgebra.Divisibility.Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4dcd6b8dad9d85a577123ac71943da877484a14",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4dcd6b8dad9d85a577123ac71943da877484a14`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_of_zero_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/eq-zero-of-zero-dvd--2aae7ef1709cd71a79c341ed.md) | 34 | `result-track:2aae7ef1709cd71a79c341ed563ac7a15210ab2b3f6b8c5f0c77263434301c9c` |
| 2 | `theorem` | [zero_dvd_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/zero-dvd-iff--3aa3be3d34f31da25ffe973e.md) | 40 | `result-track:3aa3be3d34f31da25ffe973e624de05291950def2fcefb3a659614bea56c6167` |
| 3 | `theorem` | [dvd_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/dvd-zero--5ed248e296b306b318ea815a.md) | 46 | `result-track:5ed248e296b306b318ea815abf14d33e6d0b44d416c4c34a24c16c67e215b664` |
| 4 | `theorem` | [mul_dvd_mul_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/mul-dvd-mul-iff-left--64c057f64af50d1fa509d973.md) | 53 | `result-track:64c057f64af50d1fa509d9738b64e74548e3a8c551578ea1839efaa72495b224` |
| 5 | `theorem` | [mul_dvd_mul_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/mul-dvd-mul-iff-right--0ee65540443ab5568e3b77a6.md) | 59 | `result-track:0ee65540443ab5568e3b77a6deb290b9dcd829f5d556305eef2eeb43810dbb48` |
| 6 | `def` | [DvdNotUnit](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/dvdnotunit--cb59a2d7acba6cd3c008250c.md) | 69 | `declaration-track:cb59a2d7acba6cd3c008250c26e6db73dce5f0851f550b7a97ff762564ab3b4b` |
| 7 | `theorem` | [dvdNotUnit_of_dvd_of_not_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/dvdnotunit-of-dvd-of-not-dvd--b8203264c81aae96b2a00c52.md) | 72 | `result-track:b8203264c81aae96b2a00c5230b6c886303cb6c60e558bc248ce113731c67629` |
| 8 | `theorem` | [isRelPrime_zero_left](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/isrelprime-zero-left--6d0fca7f46735abe2225ede1.md) | 83 | `result-track:6d0fca7f46735abe2225ede184c7ee5fff07cedb789de21574820287e3d4310e` |
| 9 | `theorem` | [isRelPrime_zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/isrelprime-zero-right--c1081d443f952c8baf32c3e6.md) | 86 | `result-track:c1081d443f952c8baf32c3e6e5f6e8e4693a877449d50e9e2c0a339915c82ff9` |
| 10 | `theorem` | [not_isRelPrime_zero_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/not-isrelprime-zero-zero--567b0b721c46d75bebeb5cbc.md) | 89 | `result-track:567b0b721c46d75bebeb5cbc8f30510d94a76db1e1aea9b29150b7b38c0b8928` |
| 11 | `theorem` | [IsRelPrime.ne_zero_or_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/isrelprime-ne-zero-or-ne-zero--92acd5fd6c28bf8affe94ceb.md) | 92 | `result-track:92acd5fd6c28bf8affe94cebe396fbcda73b93c490782e0da9958860716e2069` |
| 12 | `theorem` | [isRelPrime_of_no_nonunits_factors](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/isrelprime-of-no-nonunits-factors--5a45b0b3336044f712ca7b0e.md) | 97 | `result-track:5a45b0b3336044f712ca7b0e9de52e00a10b44ea5e83d116b2553efa588d8ad0` |
| 13 | `theorem` | [dvd_and_not_dvd_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/dvd-and-not-dvd-iff--bdce2080532f1dddac03fa1b.md) | 102 | `result-track:bdce2080532f1dddac03fa1bfe2d34b90904ff9260270fe9573917d96eaecb13` |
| 14 | `theorem` | [ne_zero_of_dvd_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/ne-zero-of-dvd-ne-zero--504333c0b0ab48843ae1ec75.md) | 121 | `result-track:504333c0b0ab48843ae1ec75c130300dff2a4180e2c2c89e4b63e096bcb29235` |
| 15 | `theorem` | [isPrimal_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/isprimal-zero--4092efe91a43a6cd116e5778.md) | 125 | `result-track:4092efe91a43a6cd116e57787cc91c0fd8a1577faa1b2d8f37ca6705dc8fc49b` |
| 16 | `theorem` | [IsPrimal.mul](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/isprimal-mul--b1ac4577fa95b8a50ad5f2a9.md) | 128 | `result-track:b1ac4577fa95b8a50ad5f2a907213e860f1b906bd7b093954703e68619786723` |
| 17 | `theorem` | [dvd_antisymm](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/dvd-antisymm--75df0986c1381f6bc3877f40.md) | 146 | `result-track:75df0986c1381f6bc3877f400135ad922565dd4d07efe0c7423e6cad9e28c562` |
| 18 | `theorem` | [dvd_antisymm'](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/dvd-antisymm--97eadd4232193fe6e2cca986.md) | 151 | `result-track:97eadd4232193fe6e2cca98645e4654c653214d5e70c3876dbe10af4cbc27d83` |
| 19 | `theorem` | [eq_of_forall_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/eq-of-forall-dvd--49d674310526bd353627f418.md) | 158 | `result-track:49d674310526bd353627f418309872ffbba73244e42910c870fac4dcd7226ec0` |
| 20 | `theorem` | [eq_of_forall_dvd'](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/eq-of-forall-dvd--413e2c2d64db594e5afd9af6.md) | 161 | `result-track:413e2c2d64db594e5afd9af6109ead6bd4f3132d24b167990c78489ea51b14dc` |
| 21 | `lemma` | [pow_dvd_pow_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/pow-dvd-pow-iff--9ade61755132b29232fdfc17.md) | 166 | `result-track:9ade61755132b29232fdfc178f5884762ea1546afa98606ffc9a2a2616bf5aa6` |
| 22 | `lemma` | [GroupWithZero.dvd_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variantc3577f2d40b701273720fa934ecbfaf8114356ec04ee5443c7839853c32ca276.lean/declarations/groupwithzero-dvd-iff--75dfadac6abe584190984faa.md) | 186 | `result-track:75dfadac6abe584190984faab8c542e4a4b48cd6cfd40c0bae1c6d586a45a45c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
