# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogSquareQuadratureStatements.Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "487f7d507ce93f95394d04e1b779b236abf2bb04",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `487f7d507ce93f95394d04e1b779b236abf2bb04`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSquareQuadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/declarations/logsquarequadrature--efec85622d8f8a42d4c7877a.md) | 24 | `declaration-track:efec85622d8f8a42d4c7877a9f20830aa34aacdd66cd00bc1debd3a2b8f28961` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/declarations/logsquare-monotoneon--6111413c28a30de45edbe190.md) | 28 | `result-track:6111413c28a30de45edbe190595cce95a4c6e3171bdc9c40beb944e997516245` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/declarations/logsquare-intervalintegrable--573e2d4626e37c4bf7d822d4.md) | 33 | `result-track:573e2d4626e37c4bf7d822d4781f44f0181398c94117018c6f60641c01efdbb5` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/declarations/logsquare-integer-bounds--9f9b033b51033f618989dc18.md) | 40 | `result-track:9f9b033b51033f618989dc18e09580019ec5f47c69e43b239a641d87c8065506` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/declarations/logsquarequadrature-abs-le--199dfa1e31b196c44584f46c.md) | 73 | `result-track:199dfa1e31b196c44584f46c3a6ac9f7844139e211b1d3459a688d30dd71c3da` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/declarations/example--86975511719813796f976588.md) | 107 | `declaration-track:86975511719813796f9765887870a0d07f1a9aaadcd0f4148219f828fceb7aa9` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/declarations/example--0473ea8da194ba4507222b3c.md) | 111 | `declaration-track:0473ea8da194ba4507222b3c05dbd1243327f6f80e6f3210827bd4bdef192a57` |
| 8 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/declarations/example--b58a6b2023b6b056eb00713d.md) | 114 | `declaration-track:b58a6b2023b6b056eb00713d210c162d6052dcc2aadebff371384c4c20cd0ee1` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/declarations/example--e4c5203d6f320f7037f9ea35.md) | 118 | `declaration-track:e4c5203d6f320f7037f9ea35b0157ad3e4988f83e58e4871390d5d4530310e3e` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogSquareQuadratureStatements/Variant2f17703b3841ec2748368ecc2636f7998d03fcb6dd200890abb0f48cbb219938.lean/declarations/example--3f84ef2c23b8fca4b0c77562.md) | 125 | `declaration-track:3f84ef2c23b8fca4b0c77562edc72bf5d176728b81f97f682b6423d7d4543c58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
