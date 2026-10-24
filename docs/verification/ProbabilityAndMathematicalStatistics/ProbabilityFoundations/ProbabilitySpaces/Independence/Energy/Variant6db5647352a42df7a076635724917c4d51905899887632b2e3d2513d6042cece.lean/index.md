# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Energy.Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b14b6ffbdea2310937cc272ffca0190d22f16d7d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b14b6ffbdea2310937cc272ffca0190d22f16d7d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.Trace.Packet` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.SemiLocalDefect.BoundaryCochain` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packetEnergy](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/declarations/packetenergy--1e4758b1e8f940b4ccd80c4c.md) | 12 | `declaration-track:1e4758b1e8f940b4ccd80c4c8d6f22c9d131773238eac84638d8825c156c8af2` |
| 2 | `def` | [packetIncrementEnergy](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/declarations/packetincrementenergy--38a723c6b644b3b1c2790540.md) | 24 | `declaration-track:38a723c6b644b3b1c2790540f4857d6e6406eb507cac041ad1c954781d20dc2f` |
| 3 | `theorem` | [packetEnergy_nonnegative](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/declarations/packetenergy-nonnegative--dad02c815e840ab7c4d6595f.md) | 38 | `result-track:dad02c815e840ab7c4d6595f23d2fc3327857614f549ea237eac88251ccb8afa` |
| 4 | `theorem` | [packetEnergy_monotone](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/declarations/packetenergy-monotone--b0bb4dc9b093d11fa83cd231.md) | 52 | `result-track:b0bb4dc9b093d11fa83cd23121a8220bac7f7088f6c4e0f5f5dfb336fd3f725d` |
| 5 | `theorem` | [packetEnergy_bounded_by_packetNorm](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/declarations/packetenergy-bounded-by-packetnorm--d98ca87a3f753e9bc63ca82e.md) | 73 | `result-track:d98ca87a3f753e9bc63ca82e10b5baf3e67ad61c9293f7e2ae3fcaa47541c591` |
| 6 | `theorem` | [packetIncrementEnergy_nonnegative](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/declarations/packetincrementenergy-nonnegative--d67b885f1b62e40f482a387d.md) | 94 | `result-track:d67b885f1b62e40f482a387d5ce60aa6195feaec8b4a0f52b59f1ba827175358` |
| 7 | `theorem` | [packetIncrementEnergy_eq_difference](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/declarations/packetincrementenergy-eq-difference--a1d526c94a8c8563701c8a46.md) | 110 | `result-track:a1d526c94a8c8563701c8a46fd4a550b3fdb3d90776e1da3aafb10d79d25c354` |
| 8 | `def` | [packetPathEnergy](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/declarations/packetpathenergy--2ea7906392d14bb8fe441bb8.md) | 128 | `declaration-track:2ea7906392d14bb8fe441bb81b86401150835762699f3370de28ed6317aa2939` |
| 9 | `theorem` | [packetPathEnergy_telescope](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/declarations/packetpathenergy-telescope--0f47904f4adc79316326142b.md) | 142 | `result-track:0f47904f4adc79316326142b64c5f33662ac6c4a651b218bca44757a58c53075` |
| 10 | `theorem` | [packetPathEnergy_independent](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Energy/Variant6db5647352a42df7a076635724917c4d51905899887632b2e3d2513d6042cece.lean/declarations/packetpathenergy-independent--53839fa5d696509ff3e20a87.md) | 161 | `result-track:53839fa5d696509ff3e20a87a4d7d96fd03777c2526172c55a8e839c4ba41784` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
