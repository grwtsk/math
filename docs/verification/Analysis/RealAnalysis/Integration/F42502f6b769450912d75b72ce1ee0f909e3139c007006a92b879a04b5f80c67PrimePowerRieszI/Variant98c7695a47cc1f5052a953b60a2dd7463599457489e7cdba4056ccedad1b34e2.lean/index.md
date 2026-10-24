# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI.Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94965ed8082df2999bbe15ed9510994f293b12cf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94965ed8082df2999bbe15ed9510994f293b12cf`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.BoundaryRieszLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.FullLine` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Piecewise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rieszTilt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/riesztilt--54ae4a9c9a90baf1475f1a03.md) | 17 | `declaration-track:54ae4a9c9a90baf1475f1a0358a65649c0676d51ed785dcc2767d98c5372ee46` |
| 2 | `theorem` | [riesz_tilt_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/riesz-tilt-integrable--1e5c65d7860ec7191e49a0ce.md) | 21 | `result-track:1e5c65d7860ec7191e49a0ce30fbd391e8f17ec1fd57db83f7d6cd9737bbc239` |
| 3 | `theorem` | [riesz_tilt_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/riesz-tilt-continuous--14c8603b7f697575a7808286.md) | 25 | `result-track:14c8603b7f697575a78082867f4b68bfacbcb32326a00594cc5b73ef970696e5` |
| 4 | `theorem` | [riesz_tilt_paper_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/riesz-tilt-paper-fourier--2a3d6c3f9e8ae9d018797f08.md) | 36 | `result-track:2a3d6c3f9e8ae9d018797f080ce9b6f927c495c19304bf2df2aa0db377dd366b` |
| 5 | `theorem` | [vertical_inverse_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/vertical-inverse-square-integrable--cb1a27864567377d68850d1d.md) | 52 | `result-track:cb1a27864567377d68850d1daa2fb5bf67083805fc6aa1f3f93db2a81f2c1323` |
| 6 | `theorem` | [vertical_inverse_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/vertical-inverse-power-integrable--5cc6d954b7d34800d375205f.md) | 63 | `result-track:5cc6d954b7d34800d375205f3c0a571e4740bb4f1bfbfc2732571cd5e1a1627d` |
| 7 | `theorem` | [boundary_riesz_line_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/boundary-riesz-line-integrable--a6d097183d718966ff3a6fd1.md) | 87 | `result-track:a6d097183d718966ff3a6fd100c43f7a39117748e2827af2ee7029ab74ccccc8` |
| 8 | `theorem` | [riesz_tilt_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/riesz-tilt-fourier-integrable--4a6f8a1828f08c8bb96c7827.md) | 114 | `result-track:4a6f8a1828f08c8bb96c7827fc89e5689fbca1a9a09914385867e4b092f50c7a` |
| 9 | `theorem` | [riesz_half_line_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/riesz-half-line-inversion--89b20c433681306420e6d634.md) | 131 | `result-track:89b20c433681306420e6d634ef4e8f7a383916ff88b752aafac6ed34631309da` |
| 10 | `def` | [rieszLineTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/rieszlinetransform--f8dd43e2c9a787a2e59544bb.md) | 158 | `declaration-track:f8dd43e2c9a787a2e59544bbe54a9a099557f16e3a8a680fda7b5a46d7fc9953` |
| 11 | `def` | [rieszWindow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/rieszwindow--ae96ef84ef6b1041bf440ffe.md) | 162 | `declaration-track:ae96ef84ef6b1041bf440ffebb90f77b802e47e27a38c6561e56a7c83a8facdd` |
| 12 | `theorem` | [riesz_line_transform_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/riesz-line-transform-integrable--7f6ac500e3dc13e2cef6e380.md) | 165 | `result-track:7f6ac500e3dc13e2cef6e380dc45c241bad79f08cde0aa3800cccd0d55dc9e30` |
| 13 | `theorem` | [riesz_line_transform_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI/Variant98c7695a47cc1f5052a953b60a2dd7463599457489e7cdba4056ccedad1b34e2.lean/declarations/riesz-line-transform-inversion--f7e9ab5ddb35e54512c6a2ba.md) | 173 | `result-track:f7e9ab5ddb35e54512c6a2baa945fdcc5056aa85caed170113cfcd17ac20a9dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
