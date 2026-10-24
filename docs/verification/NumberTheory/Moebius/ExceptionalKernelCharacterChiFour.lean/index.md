# Verification target: GRWTSK.NumberTheory.Moebius.ExceptionalKernelCharacterChiFour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c86320aa4fcaa58bb6a06247fa559e8be971d437",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c86320aa4fcaa58bb6a06247fa559e8be971d437`.

Source path: `GRWTSK/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ExceptionalKernelTwistedMertensFactorization`](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.NumberTheory.LegendreSymbol.ZModChar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [twoKernelShiftCharacter_one_ne_one](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/twokernelshiftcharacter-one-ne-one--bf51b5f8308fee7a441fbb41.md) | 42 | `result-track:bf51b5f8308fee7a441fbb418df9e1395f2ba65ef8267bfc37cb46017840b6b5` |
| 2 | `theorem` | [twoKernelShiftCharacter_one_eq_neg_one](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/twokernelshiftcharacter-one-eq-neg-one--6fb4d50fbaf6f6d35c96523a.md) | 56 | `result-track:6fb4d50fbaf6f6d35c96523af0c98080b344bfa7f5ad06b92e79542221b36ca7` |
| 3 | `theorem` | [twoKernelShiftCharacter_eq_neg_one_pow](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/twokernelshiftcharacter-eq-neg-one-pow--069f4b68a96830c110dc435c.md) | 66 | `result-track:069f4b68a96830c110dc435c59d2467d02bf63de1a9e286015224aafae57521b` |
| 4 | `theorem` | [exceptionalKernelTwistedMertensPrefix_eq_neg_one_twist](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/exceptionalkerneltwistedmertensprefix-eq-neg-one-twist--d4a0f0f200fa9104a930745a.md) | 80 | `result-track:d4a0f0f200fa9104a930745afe1a695dbcf361dc55e9362eefe81fbe68ae8496` |
| 5 | `def` | [chiFourTwistedMertensPrefix](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/chifourtwistedmertensprefix--6f6377c3e7f812ff226fef22.md) | 96 | `declaration-track:6f6377c3e7f812ff226fef2271a6295b969308c63f1a376586e08b79f6ccfb9d` |
| 6 | `theorem` | [exceptionalKernelTwistedMertensPrefix_even_eq_halfSum](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/exceptionalkerneltwistedmertensprefix-even-eq-halfsum--42f9a781324a56027ffcbd54.md) | 102 | `result-track:42f9a781324a56027ffcbd546f48e8aab4a44acd8c76cc8e369e7f2f27debf24` |
| 7 | `theorem` | [exceptionalKernelTwistedMertensPrefix_even_eq_odd_half](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/exceptionalkerneltwistedmertensprefix-even-eq-odd-half--b1c6ca916439eea613378379.md) | 137 | `result-track:b1c6ca916439eea6133783792edb284a1e6faaab7a4f2ac2ffc996380ad586b8` |
| 8 | `theorem` | [exceptionalKernelTwistedMertensPrefix_odd_eq_chiFour](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/exceptionalkerneltwistedmertensprefix-odd-eq-chifour--9eb098cc205e8f5e7f2c065d.md) | 165 | `result-track:9eb098cc205e8f5e7f2c065d09103faeedb3f1899b6666458b173847482c2274` |
| 9 | `def` | [DyadicHalfScaleOddMertensSquareRootEnergy](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/dyadichalfscaleoddmertenssquarerootenergy--11d92b9e35bfa4e45eede6b0.md) | 192 | `declaration-track:11d92b9e35bfa4e45eede6b0aa5ad4928511f1b734c833fa63451cf229c2f87b` |
| 10 | `def` | [DyadicChiFourTwistedMertensSquareRootEnergy](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/dyadicchifourtwistedmertenssquarerootenergy--badaa194fdd229905ced9827.md) | 201 | `declaration-track:badaa194fdd229905ced9827bdef6c9176c62b3fd0ee9cb6737729ad67c4461b` |
| 11 | `theorem` | [halfScaleOddMertensEnergy_of_parity](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/halfscaleoddmertensenergy-of-parity--5243554b1ba5b716be8e7bf0.md) | 211 | `result-track:5243554b1ba5b716be8e7bf076ce3d93900428fb8872e8b4b8b3aaffbeb10fdf` |
| 12 | `theorem` | [twoKernelTwistedMertensEnergy_of_halfOdd_and_chiFour](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/twokerneltwistedmertensenergy-of-halfodd-and-chifour--5f07b0cf1f05b11ef09e9b98.md) | 250 | `result-track:5f07b0cf1f05b11ef09e9b9889c0c48191feeb7fc600dcfb286ecafd0720a2b1` |
| 13 | `theorem` | [twoKernelTwistedMertensEnergy_of_pointwise_and_chiFour](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/twokerneltwistedmertensenergy-of-pointwise-and-chifour--a3ef786c7a8469b83680b3d7.md) | 274 | `result-track:a3ef786c7a8469b83680b3d7640bc165741e05aa2fb69aa3064176e718102243` |
| 14 | `theorem` | [naturalScaleCongruenceL1_of_pointwise_chiFour_twoUnit_regular](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/naturalscalecongruencel1-of-pointwise-chifour-twounit-regular--a789036462c92a2df2b2e5bc.md) | 285 | `result-track:a789036462c92a2df2b2e5bc556cd7cce418b618d797fde21bfd64aea473ce2a` |
| 15 | `structure` | [ToChiFourTwistedMertensSquareRootEnergyAdapter](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/tochifourtwistedmertenssquarerootenergyadapter--e1279af9912f9f1a664a9a31.md) | 298 | `declaration-track:e1279af9912f9f1a664a9a315bd05f5877b78812d3932ddafa598c16272b4d31` |
| 16 | `structure` | [ChiFourTwistedMertensSourceData](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/chifourtwistedmertenssourcedata--388e6b150ac8841bbdef8d91.md) | 305 | `declaration-track:388e6b150ac8841bbdef8d91e0f86b2329fabf564f800dc73a0b6265e52e1d6f` |
| 17 | `def` | [ChiFourTwistedMertensSource](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/chifourtwistedmertenssource--ef230fad4956c32e86b176a5.md) | 314 | `declaration-track:ef230fad4956c32e86b176a551763084b18d2265c35a4e4328d079f3b9236c62` |
| 18 | `abbrev` | [ChiFourTwistedMertensAdapter](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/declarations/chifourtwistedmertensadapter--0e5e76f5b5e2522c124da108.md) | 323 | `declaration-track:0e5e76f5b5e2522c124da10886a2e96658f43b63487cc24edb8efa488608fdf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
