# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CycleConvolution.Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "977b64c923a7c235c9c665b44165cfe3d68ea2a2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `977b64c923a7c235c9c665b44165cfe3d68ea2a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.FiniteDynamics.CycleTransport` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CycleKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/declarations/cyclekernel--fe679cc76d5cdf035afac87b.md) | 20 | `declaration-track:fe679cc76d5cdf035afac87b696b6476dbe22feea4808e8dfffbba7ff073662f` |
| 2 | `def` | [cycleConvolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/declarations/cycleconvolution--7ec7718d860805ef49748a24.md) | 25 | `declaration-track:7ec7718d860805ef49748a243f25091627a3d38899c1ae3b1d1c6ed3d9409fca` |
| 3 | `theorem` | [cycleConvolution_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/declarations/cycleconvolution-apply--c54860e243752e102f7c0406.md) | 33 | `result-track:c54860e243752e102f7c0406b2042a5251e33068db4086af6bc2a48a8086c03f` |
| 4 | `def` | [cycleConvolutionLinear](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/declarations/cycleconvolutionlinear--488bdd0ed874e06cd8f2244d.md) | 43 | `declaration-track:488bdd0ed874e06cd8f2244d76f134850755a3a5f3fdf52075d8686953571633` |
| 5 | `theorem` | [cycleConvolutionLinear_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/declarations/cycleconvolutionlinear-apply--b9b80c3d47ab5f00dcf6023c.md) | 65 | `result-track:b9b80c3d47ab5f00dcf6023caff47d9a6f64f3ef72a19539680ee4600ef8baee` |
| 6 | `theorem` | [cycleConvolution_add_kernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/declarations/cycleconvolution-add-kernel--0ddd1f48c868d59b4360ae1e.md) | 74 | `result-track:0ddd1f48c868d59b4360ae1ec7248ad8e6e58f947d60bf641f6d010e0c83dec2` |
| 7 | `theorem` | [cycleConvolution_smul_kernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/declarations/cycleconvolution-smul-kernel--ceb9d9da323e20390b982d8e.md) | 85 | `result-track:ceb9d9da323e20390b982d8e68d648c1b29f6da9ad19a5370c55ecce28f42a0c` |
| 8 | `def` | [identityCycleKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/declarations/identitycyclekernel--ef86f06ec2b9e60fa70f5639.md) | 103 | `declaration-track:ef86f06ec2b9e60fa70f56390a191e303a5976bc10533d43c3b5836a35fe1a9a` |
| 9 | `theorem` | [cycleConvolution_identityKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleConvolution/Variant3e89b82b45b0070d9809115f291c15d5376cc44fe2defa306ae23507e6684e87.lean/declarations/cycleconvolution-identitykernel--0bcc00339122e576e3874bfb.md) | 107 | `result-track:0bcc00339122e576e3874bfbdb6890d7acbe4507735c403866f65a1201e32321` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
