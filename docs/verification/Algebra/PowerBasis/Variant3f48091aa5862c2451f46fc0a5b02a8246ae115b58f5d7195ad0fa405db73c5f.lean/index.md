# Verification target: GRWTSK.Algebra.PowerBasis.Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c1884cb23871ab9cbec2e99827dadc01ecbdeb4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean/index.md) · [Full source](../../../../mathematics/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c1884cb23871ab9cbec2e99827dadc01ecbdeb4`.

Source path: `GRWTSK/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjoin.powerBasisAux](../../../../mathematics/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean/declarations/adjoin-powerbasisaux--570d5a2dc34209ae525fe23f.md) | 29 | `declaration-track:570d5a2dc34209ae525fe23fa62b47afd77933bddeeeb36c0a5bacd14760b7b8` |
| 2 | `def` | [adjoin.powerBasis](../../../../mathematics/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean/declarations/adjoin-powerbasis--5eca7ad2c1a8f748c9021ba6.md) | 54 | `declaration-track:5eca7ad2c1a8f748c9021ba69394fc49412eb21f0f72e4299697051f3764e724` |
| 3 | `def` | [PowerBasis.ofGenMemAdjoin](../../../../mathematics/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean/declarations/powerbasis-ofgenmemadjoin--ec0ece577ba55f826814985f.md) | 68 | `declaration-track:ec0ece577ba55f826814985fcc4dcb14dab6e8cb214e69d518c72fba8d12a101` |
| 4 | `theorem` | [repr_gen_pow_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean/declarations/repr-gen-pow-isintegral--160af03fc854c8ad53f50fcd.md) | 88 | `result-track:160af03fc854c8ad53f50fcdbc7244f02c33e1d40c5f6bcc402e111457b43a8d` |
| 5 | `theorem` | [repr_mul_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean/declarations/repr-mul-isintegral--ca433cd2415d068abd7ddf8e.md) | 121 | `result-track:ca433cd2415d068abd7ddf8ecafbc4049dcf6698af24c3161365834875f69185` |
| 6 | `theorem` | [repr_pow_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean/declarations/repr-pow-isintegral--8929074dc39c615d7bd573f3.md) | 139 | `result-track:8929074dc39c615d7bd573f3d4c76862b2f6e44980f9a52927689ab95ceaa2dc` |
| 7 | `theorem` | [toMatrix_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant3f48091aa5862c2451f46fc0a5b02a8246ae115b58f5d7195ad0fa405db73c5f.lean/declarations/tomatrix-isintegral--31ce1bd69d4ca3cedeb5d684.md) | 163 | `result-track:31ce1bd69d4ca3cedeb5d684cf748e997c9b79d69bc6c1935f52d84bdb478297` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
