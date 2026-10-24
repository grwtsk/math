# Verification target: GRWTSK.Analysis.MeasureTheory.LogarithmicResidual.Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a47ce0a082ea4002fff157caf3b040b10166e89",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a47ce0a082ea4002fff157caf3b040b10166e89`.

Source path: `GRWTSK/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusFractionalResidual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logResidual](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/declarations/logresidual--8800e950479e1fd3520ecf5d.md) | 23 | `declaration-track:8800e950479e1fd3520ecf5d40324a59e1a576169dc51e6867f98a6c55cd9a6d` |
| 2 | `theorem` | [arithmeticResidual_measurable](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/declarations/arithmeticresidual-measurable--ab7cce4c04faab87226ead56.md) | 27 | `result-track:ab7cce4c04faab87226ead569724a6f24ef743e57fa623d527c10a40ec415448` |
| 3 | `theorem` | [logResidual_measurable](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/declarations/logresidual-measurable--d4313d2b5f23a80781e37fae.md) | 36 | `result-track:d4313d2b5f23a80781e37fae6fcb450e774812f10bb6e8e417c1b295b0d1f8f9` |
| 4 | `theorem` | [exp_image_univ](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/declarations/exp-image-univ--54ab335f99f828e7a6344e9c.md) | 41 | `result-track:54ab335f99f828e7a6344e9c7a443acacd6878e1579191d00c7fb808f386317a` |
| 5 | `theorem` | [exp_integrability](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/declarations/exp-integrability--988e7a369de309a79d7ac0fb.md) | 44 | `result-track:988e7a369de309a79d7ac0fb4c456902aeed8600fc6f73b1af504b47f2c9f199` |
| 6 | `theorem` | [exp_integral](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/declarations/exp-integral--3d859494c4a487f620d691a6.md) | 53 | `result-track:3d859494c4a487f620d691a6cee31ac923a3051dc26f112e80adc26b1f8b6afd` |
| 7 | `theorem` | [exp_integrand](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/declarations/exp-integrand--5b17d9383f0303a3cb92ddfc.md) | 61 | `result-track:5b17d9383f0303a3cb92ddfcab5d16844dd7518a3c06bcd3a8875e0ca46d89a6` |
| 8 | `theorem` | [logResidual_integrable](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/declarations/logresidual-integrable--cf71250ea5a6a42277e0dc3e.md) | 77 | `result-track:cf71250ea5a6a42277e0dc3ef34611fae1d9f600d046a119ce99eb0b73ac6527` |
| 9 | `theorem` | [logResidual_angular_integral](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/declarations/logresidual-angular-integral--85e3e926f6bedd8b1a0ea836.md) | 93 | `result-track:85e3e926f6bedd8b1a0ea836943cc9ddd1133ce3e82e1e3e8e8e2c768b2fe5e3` |
| 10 | `theorem` | [logResidual_fourier](../../../../../mathematics/Analysis/MeasureTheory/LogarithmicResidual/Variant34e594bbb95d8c10efaf79501d1e58acca2ba61c919dda57bdb7db4d80176f87.lean/declarations/logresidual-fourier--b101b6cb45d83105868f2544.md) | 117 | `result-track:b101b6cb45d83105868f2544f87c6788c61d0080dd5dd6fc0ab92547f2596d20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
