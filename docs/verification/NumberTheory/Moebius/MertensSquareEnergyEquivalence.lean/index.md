# Verification target: GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23e2a592381d907890b210b77bc26dd875b0d3b4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23e2a592381d907890b210b77bc26dd875b0d3b4`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound`](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyPowerBound.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MertensPointwisePowerSaving](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean/declarations/mertenspointwisepowersaving--ab8de6271f1a9a2bc34f4f71.md) | 32 | `declaration-track:ab8de6271f1a9a2bc34f4f7165fceb09b1b40ffc39a23f44f53735fff6ea3cbe` |
| 2 | `theorem` | [mertensPointwisePowerSaving_of_squareEnergyPowerSaving](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean/declarations/mertenspointwisepowersaving-of-squareenergypowersaving--535256067d16061336beca97.md) | 40 | `result-track:535256067d16061336beca97b5b30dcb5743f7d5049047083560a8411b5ef3f0` |
| 3 | `theorem` | [squareEnergyPowerSaving_of_mertensPointwisePowerSaving](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean/declarations/squareenergypowersaving-of-mertenspointwisepowersaving--63d3908199483ee8717d210e.md) | 102 | `result-track:63d3908199483ee8717d210e4f27f4e3c847cd02bca5f3eaadb47362de88eccf` |
| 4 | `theorem` | [mertensSquareEnergyPowerSaving_iff_pointwisePowerSaving](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean/declarations/mertenssquareenergypowersaving-iff-pointwisepowersaving--443d52e0ab074ccb287cf214.md) | 110 | `result-track:443d52e0ab074ccb287cf214829b6ff2891af375cc78fd0cc1b95b7fc03babfc` |
| 5 | `theorem` | [criticalBoundary_of_mertensPointwisePowerSaving](../../../../mathematics/NumberTheory/Moebius/MertensSquareEnergyEquivalence.lean/declarations/criticalboundary-of-mertenspointwisepowersaving--570f0e80bf3950663d2f7994.md) | 117 | `result-track:570f0e80bf3950663d2f79949bd8d25413bef95700ea9ab154516755cb9bd4ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
