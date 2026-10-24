# Verification target: GRWTSK.Analysis.SourceActualXiSqrtPrimitiveReadout.Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "007e0c16bd7496b1d88e1d5c2c72ebf9ca527dbf",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/index.md) · [Full source](../../../../mathematics/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `007e0c16bd7496b1d88e1d5c2c72ebf9ca527dbf`.

Source path: `GRWTSK/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiPrimitiveTransport` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualPsiInverseSquare` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualXiLogPrimitive_log_eq_physical](../../../../mathematics/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/declarations/actualxilogprimitive-log-eq-physical--9bc6c571b01fe783775adb17.md) | 27 | `result-track:9bc6c571b01fe783775adb17b84f3e0d1de18d2dd3a9b7e031c6dea1efe8849c` |
| 2 | `def` | [halfAtomPrimitive](../../../../mathematics/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/declarations/halfatomprimitive--ac338cbc0f5936697f490928.md) | 50 | `declaration-track:ac338cbc0f5936697f4909280712c16a493f09f062dfc8de2aa88ef7fa1a0532` |
| 3 | `theorem` | [halfAtomPrimitive_hasDerivAt](../../../../mathematics/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/declarations/halfatomprimitive-hasderivat--9017abb65886f23d7448bfc9.md) | 52 | `result-track:9017abb65886f23d7448bfc930ac461f3a1c2bbb56a3de97bb73e25f3d016719` |
| 4 | `theorem` | [inverseThreeHalf_continuousOn](../../../../mathematics/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/declarations/inversethreehalf-continuouson--d54970827ec90f56d1baa110.md) | 60 | `result-track:d54970827ec90f56d1baa110a1fd2965a50e39e5044056233c43a54759056a26` |
| 5 | `theorem` | [psi_inverseThreeHalf_intervalIntegrable](../../../../mathematics/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/declarations/psi-inversethreehalf-intervalintegrable--1ab02d5b939b49a34c42f3d5.md) | 67 | `result-track:1ab02d5b939b49a34c42f3d564e26b7f53be543df3dd4ac93c5c09b8469b42cc` |
| 6 | `theorem` | [actual_psi_inverseThreeHalf](../../../../mathematics/Analysis/SourceActualXiSqrtPrimitiveReadout/Variant485a6886e4551a52c558cc31fd980da5c9dd233af7dc688eccf5d05ee9e05a22.lean/declarations/actual-psi-inversethreehalf--5f68779a18477f3efc37ffce.md) | 80 | `result-track:5f68779a18477f3efc37ffce8f209676770c23ef31797ace7bf0b277f15192c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
