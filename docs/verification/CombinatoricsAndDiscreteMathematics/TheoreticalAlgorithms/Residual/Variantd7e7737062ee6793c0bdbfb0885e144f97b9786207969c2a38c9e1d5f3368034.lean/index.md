# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Residual.Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ec3dffaf4d88d16cb117bab9aba6b79df9f6618",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ec3dffaf4d88d16cb117bab9aba6b79df9f6618`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidualKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/residualkind--359e295353c705261dfe2539.md) | 7 | `declaration-track:359e295353c705261dfe2539e85ba0393e4c0247bab1b0d52f1f201a6f40592d` |
| 2 | `structure` | [ResidualBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/residualbound--2e936c775d03aebdc78b9e6f.md) | 21 | `declaration-track:2e936c775d03aebdc78b9e6fff0f4cbdc5675a40fe3232dfe4649ab5a080ac5c` |
| 3 | `def` | [advance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/advance--d711ce7afd4d8c8858e21b53.md) | 32 | `declaration-track:d711ce7afd4d8c8858e21b53174db91d84be7ca318700fb2638fc7bf9168c3e5` |
| 4 | `def` | [propagateFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/propagatefrom--36128ee185fbfa574bcfa837.md) | 36 | `declaration-track:36128ee185fbfa574bcfa8372292f3c66bc58c2cb8d5d2250c5920eb80c2a0fd` |
| 5 | `def` | [propagateResiduals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/propagateresiduals--9c0254ea3d78d9a9243585ad.md) | 41 | `declaration-track:9c0254ea3d78d9a9243585adc9cf22ce0e3b9df40129e70b6675d494b687ef70` |
| 6 | `def` | [downstreamGain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/downstreamgain--150d5b3bb64afc8125c5b54d.md) | 45 | `declaration-track:150d5b3bb64afc8125c5b54d7d5ab1359b20ae86efe26a9831f4fcfa66674c1a` |
| 7 | `def` | [weightedResidual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/weightedresidual--631c1db38ebfde4caeaafb25.md) | 49 | `declaration-track:631c1db38ebfde4caeaafb25667e34adceeccb2026c9187d60e5f416bfb1023c` |
| 8 | `theorem` | [propagateFrom_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/propagatefrom-nil--6c5192b9ed933d67a5f079d3.md) | 55 | `result-track:6c5192b9ed933d67a5f079d302e1df6dc407667dfa80ee968fe72bf9e80ca953` |
| 9 | `theorem` | [propagateFrom_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/propagatefrom-cons--ec3568af03dc80e603c6fca5.md) | 59 | `result-track:ec3568af03dc80e603c6fca5a88cb6e78985082fda6a7e8a47d53549c85e41e8` |
| 10 | `theorem` | [propagateFrom_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/propagatefrom-append--a414f522c67dcdfb90d9527b.md) | 66 | `result-track:a414f522c67dcdfb90d9527b6b3335887586398d978a8d85f1089a4e790ccab8` |
| 11 | `theorem` | [propagateFrom_closedForm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/propagatefrom-closedform--eea6ff3bce0a6cc07dec1373.md) | 81 | `result-track:eea6ff3bce0a6cc07dec13737233cd4a040404e34ab49b5109fbf04de15d6329` |
| 12 | `theorem` | [propagateResiduals_closedForm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/propagateresiduals-closedform--87552fd0da4c69c3801ddc49.md) | 95 | `result-track:87552fd0da4c69c3801ddc49d8c647e4d33847d995051e394d029ec369128f18` |
| 13 | `def` | [propagateResiduals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/propagateresiduals--bdf8de78919ee2965d879522.md) | 105 | `declaration-track:bdf8de78919ee2965d879522a9fafff938c26042f3475ca3de9a066a324b619a` |
| 14 | `structure` | [ControlledApproximation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/controlledapproximation--bb0610f34b5ec13f712e7f56.md) | 120 | `declaration-track:bb0610f34b5ec13f712e7f5699e056e99b817dd4e3ab3c4d53b781a35f30c987` |
| 15 | `def` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/id--7d908af21a961bf2262734ec.md) | 133 | `declaration-track:7d908af21a961bf2262734ec6487fe72b841150370e862b6e7030e0ccd4ba09e` |
| 16 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/comp--4402371fc059dd605b17b3b5.md) | 145 | `declaration-track:4402371fc059dd605b17b3b58d7124f1c89fa4b98c298e3fe37f4b2a7cfff960` |
| 17 | `theorem` | [comp_localError](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/comp-localerror--64bb83b4f9a4b23cbbd148a4.md) | 170 | `result-track:64bb83b4f9a4b23cbbd148a47b22ac96c56dfc4bb527b62896b73b9d34bb2f68` |
| 18 | `theorem` | [comp_lipschitz](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/comp-lipschitz--2ed0f7cf27f23cbb0c4cca80.md) | 176 | `result-track:2ed0f7cf27f23cbb0c4cca802dbfb6ac28a9c8a2d34355a0d4a31c89a9084c62` |
| 19 | `theorem` | [comp_error_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/comp-error-assoc--daf08d526a9a9388fabdec4b.md) | 182 | `result-track:daf08d526a9a9388fabdec4b767f9866095cf90d58c49d7341ab4ad1fd5d122f` |
| 20 | `structure` | [ApproximationStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/approximationstep--fbf58f0e586472fa211260ad.md) | 201 | `declaration-track:fbf58f0e586472fa211260adca9f0e3291acdf98b586735fce48beeab1b29b41` |
| 21 | `def` | [toResidualBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/toresidualbound--1fe531b7067a1ee7649cc9f8.md) | 213 | `declaration-track:1fe531b7067a1ee7649cc9f83c48ec7bd8127f07288c2fd1c695f01a494e4c67` |
| 22 | `theorem` | [one_step_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/one-step-bound--f7fee3f420e2fff0871bc20a.md) | 220 | `result-track:f7fee3f420e2fff0871bc20a2231b57d1104c0e50f30852e6437ebee3bd5d432` |
| 23 | `def` | [runReference](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/runreference--c6928d9130184bdb96b8598e.md) | 240 | `declaration-track:c6928d9130184bdb96b8598e6b12d48964b0ed0b1d6adf1a7f4e1894eb77d07c` |
| 24 | `def` | [runImplementation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/runimplementation--3803991124cc405b97b47290.md) | 245 | `declaration-track:3803991124cc405b97b4729023d2a85bbf823e5a1aecbd4fe6388b128e3251a5` |
| 25 | `theorem` | [run_error_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variantd7e7737062ee6793c0bdbfb0885e144f97b9786207969c2a38c9e1d5f3368034.lean/declarations/run-error-bound--1018df3f5e106d743f4cd8d1.md) | 250 | `result-track:1018df3f5e106d743f4cd8d15d90d38af90725fffa1071b44e3cb7392213ce48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
