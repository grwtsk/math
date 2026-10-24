# Verification target: GRWTSK.NumberTheory.Zeta.LogDerivativeZeroExclusion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45454f870b83eb2a92e769bc027dc14f0183571b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45454f870b83eb2a92e769bc027dc14f0183571b`.

Source path: `GRWTSK/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.AnalyticLinearODE`](../../../../mathematics/Analysis/ComplexAnalysis/AnalyticLinearODE/Variants/Variant83c6f9c035e0d5c9.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.PoleRemovedSource`](../../../../mathematics/NumberTheory/Zeta/PoleRemovedSource.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ode_on_euler_domain](../../../../mathematics/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean/declarations/ode-on-euler-domain--35ca6fca79d8f3e2c05633ca.md) | 26 | `result-track:35ca6fca79d8f3e2c05633ca5e2c11a54f078aacb481d56989d1cd3fc41ea2b6` |
| 2 | `theorem` | [ode_on_halfPlane](../../../../mathematics/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean/declarations/ode-on-halfplane--65b611e399420822884bfd2e.md) | 37 | `result-track:65b611e399420822884bfd2e210958c194f86f351fe835264478a154dbc334e3` |
| 3 | `theorem` | [poleRemoved_ne_zero_of_extension](../../../../mathematics/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean/declarations/poleremoved-ne-zero-of-extension--0797401d52bc31aac09d5105.md) | 59 | `result-track:0797401d52bc31aac09d51057f8fe26660406b7e719c774f86eea0fd4f74c00a` |
| 4 | `theorem` | [zeta_ne_zero_right_of_extension](../../../../mathematics/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean/declarations/zeta-ne-zero-right-of-extension--2fd6695d3f2f2c10cf1d1be0.md) | 72 | `result-track:2fd6695d3f2f2c10cf1d1be0de3b3dfc6a8c7ad9017ef938ffcc8885d5b8303e` |
| 5 | `theorem` | [riemannHypothesis_of_extension](../../../../mathematics/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean/declarations/riemannhypothesis-of-extension--7c933dae6995db0e3ae0bb17.md) | 83 | `result-track:7c933dae6995db0e3ae0bb17e748bd246db3e094d8b65054ef3ffa17ff5bef85` |
| 6 | `theorem` | [riemannHypothesis_of_exists_extension](../../../../mathematics/NumberTheory/Zeta/LogDerivativeZeroExclusion.lean/declarations/riemannhypothesis-of-exists-extension--28cf0ebe18f25b38756c6dc3.md) | 102 | `result-track:28cf0ebe18f25b38756c6dc3a6d0485a8dfe2e40146ccacee755de631def357c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
