# Verification target: GRWTSK.Analysis.RootActualXiComplexLaplaceBudget.Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2969ed114c77f14a4939f8304176af0be640b5da",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177.lean/index.md) · [Full source](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2969ed114c77f14a4939f8304176af0be640b5da`.

Source path: `GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RootActualXiComplexLaplaceBudget/Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiComplexLaplace](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177.lean/declarations/actualxicomplexlaplace--085f7021f2e85d3efabd7c10.md) | 28 | `declaration-track:085f7021f2e85d3efabd7c10d94e4a316015dda6b5053c4d9fc7de0a715baec0` |
| 2 | `theorem` | [coefficient_nonneg](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177.lean/declarations/coefficient-nonneg--c539f9ccf947b82dd2d65103.md) | 32 | `result-track:c539f9ccf947b82dd2d65103a033e9ddc1762913c826fa78cb51d30841ad5e49` |
| 3 | `theorem` | [primitive_continuousOn_Ici](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177.lean/declarations/primitive-continuouson-ici--674d65d77d209959bda34360.md) | 36 | `result-track:674d65d77d209959bda343605944151bf2e9afbab3f70c7cbf2c0a538bddbd1a` |
| 4 | `theorem` | [actualXiComplexLaplaceKernel_norm_le](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177.lean/declarations/actualxicomplexlaplacekernel-norm-le--a158399abe8a8b025bb9b0c0.md) | 49 | `result-track:a158399abe8a8b025bb9b0c0935d6ab2f5873546be64fe6c6d2478dcf08c32c7` |
| 5 | `theorem` | [actualXiComplexLaplace_integrableOn](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177.lean/declarations/actualxicomplexlaplace-integrableon--c7c8e7663f3768ff82d49058.md) | 64 | `result-track:c7c8e7663f3768ff82d49058a8794ef4d043861d9beab41887c297c7b0621dc6` |
| 6 | `theorem` | [actualXiComplexLaplace_norm_le](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Variant859cc6a9699046dd2ed9834c06fe95f18b4d0474b0b1335db96ccc1231db2177.lean/declarations/actualxicomplexlaplace-norm-le--2719f787907b0888933ea372.md) | 80 | `result-track:2719f787907b0888933ea372a82122cf4003cef5d2ee0dfcf5def2f02ae63b23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
