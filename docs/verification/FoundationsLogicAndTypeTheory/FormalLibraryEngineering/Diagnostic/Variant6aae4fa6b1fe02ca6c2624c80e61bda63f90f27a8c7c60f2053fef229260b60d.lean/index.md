# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Diagnostic.Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "065f33776b0a445e23d1b6ccbbe451521937e9be",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `065f33776b0a445e23d1b6ccbbe451521937e9be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Types` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Parse` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extractIntervalBoundsForDiag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean/declarations/extractintervalboundsfordiag--43c3a98b2274acb97fd04fa7.md) | 29 | `declaration-track:43c3a98b2274acb97fd04fa74328ea212bf4cde2afede7db75426b767b0d9a6c` |
| 2 | `def` | [formatGoalContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean/declarations/formatgoalcontext--758c027fc06d0a010ea99f7d.md) | 35 | `declaration-track:758c027fc06d0a010ea99f7d9f8bfd597e9a1e84348a5e74f4533dba40ba3923` |
| 3 | `def` | [countForallsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean/declarations/countforallsaux--760a66fa20185f419d45e6ad.md) | 39 | `declaration-track:760a66fa20185f419d45e6ad7a87085a1c62369e9860c5cd3ce2e35127b0a4a2` |
| 4 | `def` | [findComparisonAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean/declarations/findcomparisonaux--35b64930faebc20eb56c254a.md) | 48 | `declaration-track:35b64930faebc20eb56c254ab12f06fb1cc52d56cfa5a1f99d6a4b58a5690b3e` |
| 5 | `def` | [analyzeGoalStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean/declarations/analyzegoalstructure--7456b9889693a23e6a71a566.md) | 62 | `declaration-track:7456b9889693a23e6a71a566c6a97c89b75f26908fee095fe9a984ad48ef647c` |
| 6 | `def` | [suggestNextActions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean/declarations/suggestnextactions--fdc84d090cc985a333b31acd.md) | 73 | `declaration-track:fdc84d090cc985a333b31acdd850e30ed405a98fc3a9d0c68783690fc6dfca63` |
| 7 | `def` | [mkDiagnosticReport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variant6aae4fa6b1fe02ca6c2624c80e61bda63f90f27a8c7c60f2053fef229260b60d.lean/declarations/mkdiagnosticreport--c4ef41956b90389b075e12f9.md) | 89 | `declaration-track:c4ef41956b90389b075e12f9fbf70d1609b8e9a2dffa34bcde969543316807f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
