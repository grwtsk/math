# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEulerOne.Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e838fde517ad3ebbfa0954f7005ebc7c4df0c88b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e838fde517ad3ebbfa0954f7005ebc7c4df0c88b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [periodicB1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean/declarations/periodicb1--9d4f4fefef4d3767c4c17588.md) | 27 | `declaration-track:9d4f4fefef4d3767c4c175883d0909ac3a73561b4f039e2be11c463d90041b51` |
| 2 | `def` | [periodicB2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean/declarations/periodicb2--069432d7d0640fcb1c90ae70.md) | 29 | `declaration-track:069432d7d0640fcb1c90ae7097f212acdccae8f1243c15f82b2fa110e9155531` |
| 3 | `theorem` | [sourceFloorWeight_eq_neg_periodicB1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean/declarations/sourcefloorweight-eq-neg-periodicb1--f4b4bacc0261cfe6e592e4a2.md) | 32 | `result-track:f4b4bacc0261cfe6e592e4a273223c5086e1330dffa80b7739788291bb32d1f9` |
| 4 | `theorem` | [periodicB2_bounds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean/declarations/periodicb2-bounds--9156a0e3ee91796b2ffa9898.md) | 37 | `result-track:9156a0e3ee91796b2ffa989816bd51063288dd60bdf3bc2dab896adfd606430d` |
| 5 | `theorem` | [periodicB2_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean/declarations/periodicb2-abs-le--519b1421475684817d9f477f.md) | 47 | `result-track:519b1421475684817d9f477fe4439eb762cd0fb742479699b4ddf3f9a6d92509` |
| 6 | `theorem` | [periodicB2_at_integer](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean/declarations/periodicb2-at-integer--e6d27c75581e69dd997af6d5.md) | 51 | `result-track:e6d27c75581e69dd997af6d5f7b00cc929f6fff2e464fd664ab6d8770ed461a9` |
| 7 | `theorem` | [actual_zeta_euler_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant1191a1e2b80178e2cbf23390225c2f4fb6705d5b50ec48cfa5940ef1fbcffe0c.lean/declarations/actual-zeta-euler-one--84d27a1cbb8b5d83896a4c52.md) | 55 | `result-track:84d27a1cbb8b5d83896a4c524af8932d85faf4fbfa0e1f212f4937d95ed374ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
