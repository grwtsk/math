# Verification target: GRWTSK.GroupTheory.Words.IntegralHomologyPrimitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5e736369b17dae2212c292f0ea7189a6904ed3d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GroupTheory/Words/IntegralHomologyPrimitive.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5e736369b17dae2212c292f0ea7189a6904ed3d`.

Source path: `GRWTSK/GroupTheory/Words/IntegralHomologyPrimitive.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GroupTheory/Words/IntegralHomologyPrimitive.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GroupTheory.Words.PrimitiveConjugacy`](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Algebra.Group.Int.TypeTags` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Units` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IntegerCharacter](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/integercharacter--e162a7242043581a846d1992.md) | 42 | `declaration-track:e162a7242043581a846d19926aa03fc1738357c791977a58c073a98f57c87e8a` |
| 2 | `theorem` | [integerCharacter_pow](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/integercharacter-pow--5c97d3d54426be59d536ee3a.md) | 47 | `result-track:5c97d3d54426be59d536ee3a960fd15784140a4d70757eb8731565f749d63fc1` |
| 3 | `theorem` | [exponent_dvd_integerValue](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/exponent-dvd-integervalue--8237ca132792e59ddbe66107.md) | 53 | `result-track:8237ca132792e59ddbe66107a4d540bb6d854b17a7a80414da5e920eff49996f` |
| 4 | `theorem` | [not_isProperPower_of_unit_integerValue](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/not-isproperpower-of-unit-integervalue--04f681a249edf880117fb1fb.md) | 65 | `result-track:04f681a249edf880117fb1fb5d88d44769c858d40eeafdaedef30cf32ebf013d` |
| 5 | `theorem` | [ne_one_of_unit_integerValue](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/ne-one-of-unit-integervalue--611ab20b79f95618ec68e0ee.md) | 80 | `result-track:611ab20b79f95618ec68e0ee7f0dbb6efb51f75d6a8ba28e84d4195fb270fb6a` |
| 6 | `theorem` | [isPrimitiveConjugacy_of_unit_integerValue](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/isprimitiveconjugacy-of-unit-integervalue--e40a8a2df742fd893d1f94d6.md) | 95 | `result-track:e40a8a2df742fd893d1f94d609b6f435654ab66c7c180fd1dd5026d148be6823` |
| 7 | `theorem` | [isPrimitiveConjugacy_of_value_one](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/isprimitiveconjugacy-of-value-one--b07274aedbd60f37c40fc048.md) | 104 | `result-track:b07274aedbd60f37c40fc0486cf04e03d83649fe330071c0f620bf06078e3331` |
| 8 | `theorem` | [isPrimitiveConjugacy_of_value_neg_one](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/isprimitiveconjugacy-of-value-neg-one--05854f7da8959964ec0b5fe9.md) | 113 | `result-track:05854f7da8959964ec0b5fe983d1a3bc7f711b5880c7c52c78cc9fd8288db2bc` |
| 9 | `theorem` | [integerValue_eq_of_isConj](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/integervalue-eq-of-isconj--f4635f4335f4692764a62409.md) | 123 | `result-track:f4635f4335f4692764a62409d61ebe35c3db775c68d804f97cc0d95e45865676` |
| 10 | `theorem` | [properPower_forces_nonunit_integerValue](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/properpower-forces-nonunit-integervalue--ce282f4f4ca8ad1513d7c43e.md) | 133 | `result-track:ce282f4f4ca8ad1513d7c43e87e54eb507732a2cd6dbe4b76fa36be1bc9684e8` |
| 11 | `theorem` | [integer_one_isPrimitive](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/integer-one-isprimitive--60c1e4933f05a69db4a4ca42.md) | 141 | `result-track:60c1e4933f05a69db4a4ca427fd2e200243764b96ac79bd17a7f4b5f49102432` |
| 12 | `theorem` | [integer_neg_one_isPrimitive](../../../../../mathematics/Algebra/GroupTheory/Words/IntegralHomologyPrimitive.lean/declarations/integer-neg-one-isprimitive--c55ce5120b8801ae8f9eba52.md) | 149 | `result-track:c55ce5120b8801ae8f9eba523e1adeacbff1ada0350f409af7215ba0b45a7d4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
