# Verification target: GRWTSK.LinearAlgebra.OrientedRealLine.Coherence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a73475cae6506de6617d61f07a981b7af8bdaf7e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/OrientedRealLine/Coherence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a73475cae6506de6617d61f07a981b7af8bdaf7e`.

Source path: `GRWTSK/LinearAlgebra/OrientedRealLine/Coherence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/OrientedRealLine/Coherence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale`](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/PositiveScale.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Data.Set.Insert` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_identity_of_scale_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/not-identity-of-scale-ne-one--52c8cd3f3404b10a5417d466.md) | 20 | `result-track:52c8cd3f3404b10a5417d46648e8d9560c20497d439833bf2f813339ff2f7422` |
| 2 | `theorem` | [square_scale_cycle_not_identity](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/square-scale-cycle-not-identity--64cf1f2246fbdc5aef85950b.md) | 26 | `result-track:64cf1f2246fbdc5aef85950bf26bafc506bf4067876ff6b9ef2a97667224af84` |
| 3 | `theorem` | [Chain.square_closure_not_commuting](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/chain-square-closure-not-commuting--1128bc5fe5116afd7aa39d95.md) | 37 | `result-track:1128bc5fe5116afd7aa39d95b07c5cd3f97341e505237146249f815920a3192b` |
| 4 | `def` | [routeDefect](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/routedefect--647a382292dcc831cf6dbe4e.md) | 50 | `declaration-track:647a382292dcc831cf6dbe4e90d8e2c1041e9f31b2383dfe88d88906773c5445` |
| 5 | `theorem` | [routeDefect_eq_one_of_routes_equal](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/routedefect-eq-one-of-routes-equal--e3c374852c51dc4e8ba04fb9.md) | 53 | `result-track:e3c374852c51dc4e8ba04fb94339fc43bebe883e383ee9eca379ef4164a2fc80` |
| 6 | `theorem` | [routeDefect_eq_square](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/routedefect-eq-square--c0adafef4abcfc000b31baa1.md) | 59 | `result-track:c0adafef4abcfc000b31baa11eae94033f2c7c03e2076c565a0a15092f7fcd7d` |
| 7 | `theorem` | [scale_lower_of_defect_lower](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/scale-lower-of-defect-lower--6a87c3e865705f1907eeea56.md) | 65 | `result-track:6a87c3e865705f1907eeea562a47fec07634574517b3e134ed8a3301a0651512` |
| 8 | `theorem` | [square_scaled_routes_ne](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/square-scaled-routes-ne--b99206afbdb236bdad660d7e.md) | 73 | `result-track:b99206afbdb236bdad660d7e245ad9ff2f979dba545ed78711b9d9423f03168b` |
| 9 | `theorem` | [reversible_edges_need_not_descend](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/reversible-edges-need-not-descend--50aac0b3cc5bc7558a590b40.md) | 83 | `result-track:50aac0b3cc5bc7558a590b4005197df819880b31baff1864ac83f21d39d35b36` |
| 10 | `abbrev` | [PolyIsomorphism](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/polyisomorphism--90971b8576e0a3b55e9b050e.md) | 101 | `declaration-track:90971b8576e0a3b55e9b050ea375f0a3eea58495c9aeaa267ef1e917ae068d9a` |
| 11 | `theorem` | [poly_isomorphism_some_bound_not_all](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/poly-isomorphism-some-bound-not-all--92089ac9050d2b414fbeee05.md) | 104 | `result-track:92089ac9050d2b414fbeee05b55dde2910e38b3fac923aea29488b91a85299a4` |
| 12 | `def` | [meanScale](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/meanscale--602d0afcd0e1290ec490cb13.md) | 119 | `declaration-track:602d0afcd0e1290ec490cb131abc5e3c8f2f3bb7f3b693a86cffa24101799de4` |
| 13 | `theorem` | [mean_scale_does_not_identify_routes](../../../../../mathematics/Algebra/LinearAlgebra/OrientedRealLine/Coherence.lean/declarations/mean-scale-does-not-identify-routes--159ae8bd6148bacc26a175be.md) | 122 | `result-track:159ae8bd6148bacc26a175be389e60de2099ca58d08c1cc4b5b731da2735d620` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
