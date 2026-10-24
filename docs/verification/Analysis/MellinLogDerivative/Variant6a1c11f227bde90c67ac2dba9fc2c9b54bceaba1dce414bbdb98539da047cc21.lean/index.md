# Verification target: GRWTSK.Analysis.MellinLogDerivative.Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c75613d9189397b793a5c31e1a6a9ad7577ee22",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/index.md) · [Full source](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c75613d9189397b793a5c31e1a6a9ad7577ee22`.

Source path: `GRWTSK/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiStep](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/centeredtwistedpsistep--7df56bd691fe1c0337d5cff7.md) | 48 | `declaration-track:7df56bd691fe1c0337d5cff74f71f1147d113f27478f3373593e1bab0caa5bfb` |
| 2 | `theorem` | [centeredTwistedPsiStep_natCast](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/centeredtwistedpsistep-natcast--c73046fef99ec257b3c8fc63.md) | 56 | `result-track:c73046fef99ec257b3c8fc63898359cf376ad95cc949a8539da1dfe6539d850d` |
| 3 | `def` | [centeredTwistedPsiMellin](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/centeredtwistedpsimellin--1b11a6db8e05ed351ea09607.md) | 68 | `declaration-track:1b11a6db8e05ed351ea09607ece018998f24420ba105a00c94ad1123bb92553d` |
| 4 | `def` | [criticalRightHalfPlane](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/criticalrighthalfplane--bf1d0ca6158f2cd9122c4b6a.md) | 74 | `declaration-track:bf1d0ca6158f2cd9122c4b6a049c72835ce166f01945579cde54930f187bc39c` |
| 5 | `theorem` | [isOpen_criticalRightHalfPlane](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/isopen-criticalrighthalfplane--1800542dcb712c393209208a.md) | 78 | `result-track:1800542dcb712c393209208aabb0a3fd0b9e06cb11c9756dd4d6e932705811cf` |
| 6 | `theorem` | [isPreconnected_criticalRightHalfPlane](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/ispreconnected-criticalrighthalfplane--d015e1eb7ab24b1cd487516b.md) | 82 | `result-track:d015e1eb7ab24b1cd487516ba48915042c8176dd0836c554e223ec7e3b8cc9b0` |
| 7 | `structure` | [MellinLogDerivativeSquare](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/mellinlogderivativesquare--e816558854b3c98d7021acf1.md) | 94 | `declaration-track:e816558854b3c98d7021acf1fbe7335efaa8aa9b8806a873545f377176619035` |
| 8 | `def` | [MellinLogDerivativeSquare.residual](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/mellinlogderivativesquare-residual--083bbfd7fd0035b88c76210f.md) | 122 | `declaration-track:083bbfd7fd0035b88c76210f87042ffdda601fe11da5e672028a4e9f4b3eb378` |
| 9 | `theorem` | [MellinLogDerivativeSquare.differentiableOn_residual](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/mellinlogderivativesquare-differentiableon-residual--42211ac887efbe449cfdb161.md) | 129 | `result-track:42211ac887efbe449cfdb161ef45bc2af2e9bffa98ef0d15cb671a231fa123c4` |
| 10 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/mellinlogderivativesquare-residual-eq-zero-of-one-lt-re--9f2337c15d333b7e4382b18e.md) | 143 | `result-track:9f2337c15d333b7e4382b18e3793747d56e0a214ddddc2f03e12601a1daddd80` |
| 11 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/mellinlogderivativesquare-residual-eq-zero--0115a037e1fbc910149d5868.md) | 156 | `result-track:0115a037e1fbc910149d5868d4f18869b72c8e56e9b0662f64521302080d907a` |
| 12 | `theorem` | [zeroFree_rightHalfPlane_of_mellinHolomorphic](../../../../mathematics/Analysis/MellinLogDerivative/Variant6a1c11f227bde90c67ac2dba9fc2c9b54bceaba1dce414bbdb98539da047cc21.lean/declarations/zerofree-righthalfplane-of-mellinholomorphic--c1a838878cae7ce725062a0c.md) | 184 | `result-track:c1a838878cae7ce725062a0c9b0b3a500c17373808ba8ae5b1d5bdf052c22b32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
