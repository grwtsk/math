# Verification target: GRWTSK.Algebra.LinearAlgebra.Valuation.Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10924efcb14d9be5261361e556251e7674c6635b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10924efcb14d9be5261361e556251e7674c6635b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Nonarchimedean.Bases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformFilterBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subgroups_basis](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/declarations/subgroups-basis--0c5ad4a5427d253a2418ee2f.md) | 44 | `result-track:0c5ad4a5427d253a2418ee2f776e2b4a8d494fce99b5469c5fdb43748899e5f4` |
| 2 | `class` | [Valued](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/declarations/valued--d1bd9c604eacab8dc80cdc2d.md) | 98 | `declaration-track:d1bd9c604eacab8dc80cdc2d97c1bf59ddcc6acfd0f3349826a232a2799c1526` |
| 3 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/declarations/mk--d7003a5913bafd10a9756baa.md) | 110 | `declaration-track:d7003a5913bafd10a9756baae3d302a54daabecc835f0d9b5a7a090c0a05c116` |
| 4 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/declarations/hasbasis-nhds-zero--58b64a02358952e61b23931a.md) | 124 | `result-track:58b64a02358952e61b23931a9c7e70e65207292ee86dedcb9ea099356626bd10` |
| 5 | `theorem` | [hasBasis_uniformity](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/declarations/hasbasis-uniformity--52778cf4d821160e419d5062.md) | 130 | `result-track:52778cf4d821160e419d5062633eab92502b6f8f352842bbbde77d34cc986fa2` |
| 6 | `theorem` | [toUniformSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/declarations/touniformspace-eq--c5224a6594f23aaf9c0e4251.md) | 136 | `result-track:c5224a6594f23aaf9c0e4251a7c2d4a39b14c5165bf1980911a8da86034186e9` |
| 7 | `theorem` | [mem_nhds](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/declarations/mem-nhds--6e728e1896f33d89f7c48879.md) | 144 | `result-track:6e728e1896f33d89f7c48879f2e5d27bdfe25ff113f53a29d7e668ba68ec4831` |
| 8 | `theorem` | [mem_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/declarations/mem-nhds-zero--fc1942031abab76482661ced.md) | 149 | `result-track:fc1942031abab76482661cedc7adcf732bdf21c2dd5a1dcf4c1d0023d11f185e` |
| 9 | `theorem` | [loc_const](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/declarations/loc-const--ea494f946605d9d4f9ded955.md) | 153 | `result-track:ea494f946605d9d4f9ded955b6ee2ef82c661f40ec90ea3ecee0f3f9b877f640` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/declarations/instance--e370c5f7f26cc3ab23a8f066.md) | 162 | `declaration-track:e370c5f7f26cc3ab23a8f066e2e5a882ddb4e931d346b9f9208697db512ccb36` |
| 11 | `theorem` | [cauchy_iff](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variantdc61fcac240865c5b30cfd5f55074cbeaf803d84ff2742e7718bb68c6dcf2738.lean/declarations/cauchy-iff--30179fad1bd2611ce4a08367.md) | 165 | `result-track:30179fad1bd2611ce4a08367ede9351e13c32466b399fac4ca7fe62c5e2c4ff2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
