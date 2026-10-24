# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CycleConvolution.Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d927882469db5824ab0347e1d92c6840a8233200",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d927882469db5824ab0347e1d92c6840a8233200`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.FiniteDynamics.CycleTransport` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CycleKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/declarations/cyclekernel--eaf7f89fdd5024d746aadafd.md) | 28 | `declaration-track:eaf7f89fdd5024d746aadafd760cc88cb1aa961596706c9e8dd0f401b825c2b8` |
| 2 | `def` | [cycleConvolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/declarations/cycleconvolution--650c2ba69ba43b46eb9c97cc.md) | 33 | `declaration-track:650c2ba69ba43b46eb9c97cca78f916c1d3c3632665850ad64c9e903ddb20dae` |
| 3 | `theorem` | [cycleConvolution_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/declarations/cycleconvolution-apply--09d9883216bc4ae4e691a459.md) | 41 | `result-track:09d9883216bc4ae4e691a459512dfa5bfdca3089617b256d4941757d1e74df0c` |
| 4 | `def` | [cycleConvolutionLinear](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/declarations/cycleconvolutionlinear--171480ea6725cf147b9431ad.md) | 51 | `declaration-track:171480ea6725cf147b9431ad7864072a2458f60c65309396ae00a31c52c45e34` |
| 5 | `theorem` | [cycleConvolutionLinear_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/declarations/cycleconvolutionlinear-apply--38dc2ba8627ee4282d7a964c.md) | 73 | `result-track:38dc2ba8627ee4282d7a964c45c0807cdfffc277c7eecea9af1dbc175a8e1f5b` |
| 6 | `theorem` | [cycleConvolution_add_kernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/declarations/cycleconvolution-add-kernel--c52c433d8ec16c7c0b76c75f.md) | 82 | `result-track:c52c433d8ec16c7c0b76c75f09f038591c982f04186c36a16e16ae48eddfc4d2` |
| 7 | `theorem` | [cycleConvolution_smul_kernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/declarations/cycleconvolution-smul-kernel--9b7e3fc2d7d08f51265a6fa6.md) | 93 | `result-track:9b7e3fc2d7d08f51265a6fa67c4b5d6abce977e30a63cc3d871bf4cc8cbbd172` |
| 8 | `def` | [identityCycleKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/declarations/identitycyclekernel--a13b3741c92b324868b32c90.md) | 111 | `declaration-track:a13b3741c92b324868b32c9096fda2a42618e0dc9b4899297b1167490697c65a` |
| 9 | `theorem` | [cycleConvolution_identityKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant9010a838c546478aecdb65f779c7ca67084f027c9c52d6b73df56c54274fba9f.lean/declarations/cycleconvolution-identitykernel--e64d78e0cdee4c23b550c05b.md) | 115 | `result-track:e64d78e0cdee4c23b550c05badc20c209384fb0fd1f4b036b59b7e4a62d19802` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
