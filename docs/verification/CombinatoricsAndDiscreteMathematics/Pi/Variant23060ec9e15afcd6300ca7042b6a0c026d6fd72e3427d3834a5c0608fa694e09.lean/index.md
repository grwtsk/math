# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01389e4ea1a7807f83fd362010e1c74ae101b3c6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01389e4ea1a7807f83fd362010e1c74ae101b3c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/list-prod-apply--1a30080fb10d7418704f80ef.md) | 26 | `result-track:1a30080fb10d7418704f80ef6a14555519adbbcc16e80d02385e265633af9843` |
| 2 | `theorem` | [multiset_prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/multiset-prod-apply--b8d01e5a4bc2df86638fd6b3.md) | 33 | `result-track:b8d01e5a4bc2df86638fd6b3d5cf7e76b2a8000a2f26831ae2646e9c08117555` |
| 3 | `theorem` | [Finset.prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/finset-prod-apply--7bda9363e27df1aad7033058.md) | 42 | `result-track:7bda9363e27df1aad703305813c6663b20b8660a8497cd7b3e90722cbf3f399b` |
| 4 | `theorem` | [Finset.prod_fn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/finset-prod-fn--4cacd0a607dfe1550def7dcb.md) | 50 | `result-track:4cacd0a607dfe1550def7dcbb0f576bee5cd2d0cff6f1e3425073c6db659f5da` |
| 5 | `theorem` | [Fintype.prod_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/fintype-prod-apply--a472088ae6f10df49ce4ef5a.md) | 57 | `result-track:a472088ae6f10df49ce4ef5a953acc54f4f357e5f44811fae2ab20d84661a4ad` |
| 6 | `theorem` | [prod_mk_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/prod-mk-prod--9b8cec176d9b9260a364e129.md) | 64 | `result-track:9b8cec176d9b9260a364e1299ca0318bb4ec22a3b3af1949f82b8d32ccc25f59` |
| 7 | `theorem` | [Finset.univ_prod_mulSingle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/finset-univ-prod-mulsingle--70fe3e7e3f74d45bf17fa64c.md) | 78 | `result-track:70fe3e7e3f74d45bf17fa64c165552a350fc8cb408ce0737527f941d91e498a3` |
| 8 | `theorem` | [MonoidHom.functions_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/monoidhom-functions-ext--74931882bc0c268a04298739.md) | 86 | `result-track:74931882bc0c268a04298739a627e44e59fb48cea068293df2e8e23f87306f60` |
| 9 | `theorem` | [MonoidHom.functions_ext'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/monoidhom-functions-ext--5b56d937dadec121048660f4.md) | 100 | `result-track:5b56d937dadec121048660f4ca0ff66dc6d59ce7055b87126fbe264653792b6e` |
| 10 | `theorem` | [RingHom.functions_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/ringhom-functions-ext--739057ef2304a15eb605d091.md) | 117 | `result-track:739057ef2304a15eb605d0911c0ddac8543de2997c80fbf7ee521d3060323bf1` |
| 11 | `theorem` | [fst_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/fst-prod--5993ff3c6b1bc175ba5599c9.md) | 130 | `result-track:5993ff3c6b1bc175ba5599c949927777070d4c9fd498bdc1e977dc09b990617d` |
| 12 | `theorem` | [snd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variant23060ec9e15afcd6300ca7042b6a0c026d6fd72e3427d3834a5c0608fa694e09.lean/declarations/snd-prod--26b3321ce1830e65d0da0313.md) | 136 | `result-track:26b3321ce1830e65d0da031359c2365de0d10f3e451c43f682cfcd81dd16fff3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
