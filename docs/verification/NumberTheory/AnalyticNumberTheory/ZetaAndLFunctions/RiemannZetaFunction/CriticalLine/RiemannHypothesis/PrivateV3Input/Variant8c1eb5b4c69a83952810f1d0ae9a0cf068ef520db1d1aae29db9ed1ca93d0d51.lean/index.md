# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrivateV3Input.Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8f59ed8817df53cf52f1946dc7bfd850045ff30",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8f59ed8817df53cf52f1946dc7bfd850045ff30`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtNorm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [earlyPrimeBlock](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/declarations/earlyprimeblock--fd27f94f1973c2184ef81cc3.md) | 34 | `declaration-track:fd27f94f1973c2184ef81cc33f3d8f5ffeedf40f1ba42d4d9ef6b98a2528673a` |
| 2 | `def` | [complementaryPrimeBlocks](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/declarations/complementaryprimeblocks--0ec1b359a751a8c98bdb83da.md) | 38 | `declaration-track:0ec1b359a751a8c98bdb83da9a15c6a0541e2e1675184ff4a7dbaae410060f25` |
| 3 | `theorem` | [earlyCorrelation_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/declarations/earlycorrelation-ge--2db6981b648dde7995ec295a.md) | 43 | `result-track:2db6981b648dde7995ec295aaa475b3524df545043cbbcfd0243ac0183be980f` |
| 4 | `theorem` | [earlyTailTest_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/declarations/earlytailtest-le--232f683ae26259c8e0ed1ecf.md) | 53 | `result-track:232f683ae26259c8e0ed1ecf6a506aa35acd24b645b31342e9a380d64a8e2114` |
| 5 | `theorem` | [earlyPrimeBlock_le_mass](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/declarations/earlyprimeblock-le-mass--43aaec5380abe3b5d03bc978.md) | 78 | `result-track:43aaec5380abe3b5d03bc978e4492896957ef94b69dfee571086578331b5c75e` |
| 6 | `theorem` | [earlyPrimeMass_ge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/declarations/earlyprimemass-ge--5b93959178783f1619b64796.md) | 97 | `result-track:5b93959178783f1619b64796a003647974c3233636f6d1bc8d8f21f66972b321` |
| 7 | `theorem` | [earlyPrimeBlock_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/declarations/earlyprimeblock-le--3603ad68c3dca478dbcb7629.md) | 106 | `result-track:3603ad68c3dca478dbcb7629eaf5ce81ea63b006bb4e0cb1313a2ce01ee0a22f` |
| 8 | `theorem` | [earlyPrimeBlock_eventual_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/declarations/earlyprimeblock-eventual-bound--6207ab3c02d9c762db3095c0.md) | 119 | `result-track:6207ab3c02d9c762db3095c0d05b17ca2bb184abb6c71e68a16105ac8d4d7d72` |
| 9 | `theorem` | [primeSum_eq_early_add_complement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/declarations/primesum-eq-early-add-complement--6892e0c374117980ee32ad35.md) | 129 | `result-track:6892e0c374117980ee32ad358e922c1f0bdf7bea723e23e3160da99b9a8f402b` |
| 10 | `theorem` | [complementary_repayment_of_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV3Input/Variant8c1eb5b4c69a83952810f1d0ae9a0cf068ef520db1d1aae29db9ed1ca93d0d51.lean/declarations/complementary-repayment-of-tail--06e949390ab1d9489aac21b7.md) | 138 | `result-track:06e949390ab1d9489aac21b714bc18d6d476720c3dfc02e599b530cac22f4b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
