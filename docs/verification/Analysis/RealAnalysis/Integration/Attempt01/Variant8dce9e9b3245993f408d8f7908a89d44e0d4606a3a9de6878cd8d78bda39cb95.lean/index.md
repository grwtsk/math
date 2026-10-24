# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt01.Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5436f7e84dd9a781a2135757f711d7d4ddb6ecd6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5436f7e84dd9a781a2135757f711d7d4ddb6ecd6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/declarations/normalizedtransform--cef502ae7f10fb6a0a66dae6.md) | 25 | `declaration-track:cef502ae7f10fb6a0a66dae645c82295a856cff63d444b61e0c388463f2710d7` |
| 2 | `def` | [boundaryTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/declarations/boundarytransform--809af303ec5ac754e5fc09e6.md) | 30 | `declaration-track:809af303ec5ac754e5fc09e6806135619ed752d8fc9be8b8339ef918295e0ada` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/declarations/normalizedtransform-dictionary--edc48a09863ddc5a3a6ddc03.md) | 33 | `result-track:edc48a09863ddc5a3a6ddc03ffac932564f9951fc3a713159a1bd6fa9afa0139` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/declarations/normalized-integrand-integrable--785466002e11a08161a2e1ed.md) | 43 | `result-track:785466002e11a08161a2e1ed197a09d488bc5744482700117318a8fdcf0dacbd` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/declarations/full-complex-correlation-square--dc77743aac4a3a9e499d6374.md) | 54 | `result-track:dc77743aac4a3a9e499d6374a865125eb83a209eb074c8cfa9c04c6f5de4993b` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/declarations/interval-complex-correlation-square--b78c76c1e6a7c0473fdeb7e5.md) | 85 | `result-track:b78c76c1e6a7c0473fdeb7e59446f464042ac443cf272f886ffc937d6a619b61` |
| 7 | `theorem` | [critical_complex_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/declarations/critical-complex-ibp--f30bfb297a30be7c91c7bc8b.md) | 106 | `result-track:f30bfb297a30be7c91c7bc8b07be4b955bde32ec81fd7161639e52ef5bb89727` |
| 8 | `theorem` | [boundary_transform_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt01/Variant8dce9e9b3245993f408d8f7908a89d44e0d4606a3a9de6878cd8d78bda39cb95.lean/declarations/boundary-transform-exact--d45eae14f82b2cc1546f16c3.md) | 147 | `result-track:d45eae14f82b2cc1546f16c358a06fc6564d43f1380cab30dbb2a357d54dd2e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
