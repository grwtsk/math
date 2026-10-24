# Verification target: GRWTSK.Analysis.FunctionalAnalysis.FiniteTensor.Variant5d3e138f6e6e92003201474dc8fa6a303e023461e014c636d3640990a18557e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "849f69685b1b0a7c43d0f2d9467454215fda4fe2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteTensor/Variant5d3e138f6e6e92003201474dc8fa6a303e023461e014c636d3640990a18557e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteTensor/Variant5d3e138f6e6e92003201474dc8fa6a303e023461e014c636d3640990a18557e1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteTensor/Variant5d3e138f6e6e92003201474dc8fa6a303e023461e014c636d3640990a18557e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `849f69685b1b0a7c43d0f2d9467454215fda4fe2`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/FiniteTensor/Variant5d3e138f6e6e92003201474dc8fa6a303e023461e014c636d3640990a18557e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/FiniteTensor/Variant5d3e138f6e6e92003201474dc8fa6a303e023461e014c636d3640990a18557e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorVector](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteTensor/Variant5d3e138f6e6e92003201474dc8fa6a303e023461e014c636d3640990a18557e1.lean/declarations/tensorvector--0f14bbb9bae86d0d543ea31f.md) | 26 | `declaration-track:0f14bbb9bae86d0d543ea31f6646c52c57747b36931e9885940248b58b54ece4` |
| 2 | `theorem` | [tensorVector_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteTensor/Variant5d3e138f6e6e92003201474dc8fa6a303e023461e014c636d3640990a18557e1.lean/declarations/tensorvector-apply--477ce6c51a1fc28546f1a24a.md) | 31 | `result-track:477ce6c51a1fc28546f1a24a1fb5d65502f61d6f6fa83423111685f8e2395ab2` |
| 3 | `theorem` | [tensorVector_norm_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteTensor/Variant5d3e138f6e6e92003201474dc8fa6a303e023461e014c636d3640990a18557e1.lean/declarations/tensorvector-norm-sq--c86256e220e522a07356d03b.md) | 38 | `result-track:c86256e220e522a07356d03b6128ba90841b7f8b6b1cd19b93c16878ec81790e` |
| 4 | `theorem` | [tensorVector_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/FiniteTensor/Variant5d3e138f6e6e92003201474dc8fa6a303e023461e014c636d3640990a18557e1.lean/declarations/tensorvector-norm--05461eb14ac419a567095371.md) | 49 | `result-track:05461eb14ac419a5670953719f456fb339b25161576ce721529c9f269e054271` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
