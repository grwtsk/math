# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.System.Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01848d0ade5fbe253e669e207a9c5524e2405d9d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01848d0ade5fbe253e669e207a9c5524e2405d9d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.TwistedBitfield` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteProbabilityLaw](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/finiteprobabilitylaw--74ca713ef092f385cdaec96b.md) | 25 | `declaration-track:74ca713ef092f385cdaec96b02091f32ad3aa2a9220d4e23142320cdc409494a` |
| 2 | `def` | [expectation](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/expectation--ce67cd86de399cdf89cf2b62.md) | 33 | `declaration-track:ce67cd86de399cdf89cf2b62f6c934b08c66ee3f84fd637fdd1d291254d91004` |
| 3 | `def` | [realExpectation](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/realexpectation--3b3c96c405bddbbb3a3c88d4.md) | 42 | `declaration-track:3b3c96c405bddbbb3a3c88d46e4f5b450041cfb41509494a95b6a413993721d3` |
| 4 | `def` | [eventMass](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/eventmass--832078726a72c1c613ee9fa3.md) | 51 | `declaration-track:832078726a72c1c613ee9fa3c5e1cb235e44f1559ef0960a6df302a9919060d2` |
| 5 | `abbrev` | [Bitfield](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/bitfield--9235932dcf2f0b88f284028a.md) | 62 | `declaration-track:9235932dcf2f0b88f284028a62bf4c266c58d189e79e4be91a537c42b776362c` |
| 6 | `structure` | [FiniteBitfieldMetric](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/finitebitfieldmetric--a993196b9d04fde56ebbca52.md) | 65 | `declaration-track:a993196b9d04fde56ebbca521cf563f8149a6cbc9d401dd86e05ae0aa1d7c602` |
| 7 | `def` | [flipBit](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/flipbit--67056973b9e6e4d2548fe014.md) | 88 | `declaration-track:67056973b9e6e4d2548fe014679c4e996232a5f2f365146954494f98aa4a8740` |
| 8 | `def` | [centeredBit](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/centeredbit--024b2814d36c0c0dca66f79d.md) | 95 | `declaration-track:024b2814d36c0c0dca66f79dc6579856e48e6708843cbf83c3593e0fd76f6a32` |
| 9 | `def` | [walshCharacter](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/walshcharacter--323a087fe214aabab994e16e.md) | 101 | `declaration-track:323a087fe214aabab994e16e981857a3f4caae0a8f1dc36fe20137e10c3b00f7` |
| 10 | `structure` | [RandomBitfieldSystem](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/randombitfieldsystem--8b6db257cb1bdad82abfbf41.md) | 107 | `declaration-track:8b6db257cb1bdad82abfbf41000c68cc1d76703f131313c4f1557cd353ca3983` |
| 11 | `structure` | [ArithmeticBitfieldEncoding](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/arithmeticbitfieldencoding--40ac3ed225dcb6351305e446.md) | 132 | `declaration-track:40ac3ed225dcb6351305e4460dc878129dbc81c887a8c93facac259e06251aca` |
| 12 | `theorem` | [ArithmeticBitfieldEncoding.preservesSystemAdmissibility](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/System/Variant5805e512801f6b1c5161b32272b0e9d5a576cdba1ca71493be6f1eeff10f67db.lean/declarations/arithmeticbitfieldencoding-preservessystemadmissibility--10e6567cd951a654bf2529ba.md) | 162 | `result-track:10e6567cd951a654bf2529bacc3fd0c8ed67ce49c85dab73133f32a1f9f66f72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
