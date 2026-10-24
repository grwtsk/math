# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS.Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ced4e152b9e61b4ec67b714d9bebc69575cdefce",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ced4e152b9e61b4ec67b714d9bebc69575cdefce`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean/declarations/endpointprimitive--ac97f13d7ef79d06ce410007.md) | 10 | `declaration-track:ac97f13d7ef79d06ce410007066139121c78e5890067b5550bbd5b1704eb39dc` |
| 2 | `theorem` | [endpoint_antiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean/declarations/endpoint-antiderivative--86d227a2fb98b011cbf5ffd6.md) | 21 | `result-track:86d227a2fb98b011cbf5ffd6304fb012d0626b9e35b77092842927e1efe7e6f5` |
| 3 | `theorem` | [exponential_bump_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean/declarations/exponential-bump-integral--3ff0a9db2b4dce08d4476683.md) | 57 | `result-track:3ff0a9db2b4dce08d44766836b779783a0e61d956bfb8ad5a98ef6419e0a3b2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
