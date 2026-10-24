# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sigma.Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "123a64833bdf3cbe84b2d055da4dc27c6c829004",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `123a64833bdf3cbe84b2d055da4dc27c6c829004`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sigma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-sigma--ed84d1ccaa246c2a4ab44b04.md) | 34 | `result-track:ed84d1ccaa246c2a4ab44b04ffb1f7ef1849d9627c59274e5c99d56d0c8a8b53` |
| 2 | `theorem` | [prod_sigma'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-sigma--c9c0a74b93ce43eb1a04224b.md) | 42 | `result-track:c9c0a74b93ce43eb1a04224b06d97240631989af34aec43934ec88a8602a7ed5` |
| 3 | `theorem` | [prod_finset_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-finset-product--07e854c58ca6cc8258455375.md) | 47 | `result-track:07e854c58ca6cc82584553754162a32e7e60a896c6f83e1fcb9ef02f6837d471` |
| 4 | `theorem` | [prod_finset_product'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-finset-product--4a12e9a40948b1d7461295e7.md) | 54 | `result-track:4a12e9a40948b1d7461295e725c1ac5f1e2148de467c326166aac80ff9fe67e8` |
| 5 | `theorem` | [prod_finset_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-finset-product-right--9164a21904bdff53b9a2894d.md) | 60 | `result-track:9164a21904bdff53b9a2894d528094960d40a1c645ae7dcfb4b5f88af2804d8a` |
| 6 | `theorem` | [prod_finset_product_right'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-finset-product-right--d9b64ea99348334646d3bb7f.md) | 67 | `result-track:d9b64ea99348334646d3bb7f1c9465661e96a2b2924205ed6b4e6c8620e5a128` |
| 7 | `theorem` | [prod_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-product--4df2a3902de02a34a9f155f5.md) | 76 | `result-track:4df2a3902de02a34a9f155f53adfffaa094f922b95308d09215382bc2abfcce3` |
| 8 | `theorem` | [prod_product'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-product--cf67053ec2701e4b34b3caa6.md) | 84 | `result-track:cf67053ec2701e4b34b3caa60b09ece06b2b2dd5c767a1d615fe066fe50c0c23` |
| 9 | `theorem` | [prod_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-product-right--b66d92d3d627e51e44a378f8.md) | 89 | `result-track:b66d92d3d627e51e44a378f89bf15fff62e91a211e98a3e9e49f4fa464066e1b` |
| 10 | `theorem` | [prod_product_right'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-product-right--247a30881240f3dbb034ccc5.md) | 95 | `result-track:247a30881240f3dbb034ccc54fddda5a16fd33769d31a46a5c8a940856693f07` |
| 11 | `theorem` | [prod_comm'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-comm--bb70af7a4678247c8879d51d.md) | 103 | `result-track:bb70af7a4678247c8879d51d9d154c8291db7af7ce2fa4910e2fe2beb1676197` |
| 12 | `theorem` | [prod_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-comm--271223767a2d40451e678973.md) | 117 | `result-track:271223767a2d40451e678973090d42790ac0d2241bed71cce226ffc26cb99b79` |
| 13 | `theorem` | [prod_comm_cycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/prod-comm-cycle--d5eabe01b24160e1a2867382.md) | 123 | `result-track:d5eabe01b24160e1a2867382f8c2bc6a77e45c8e1c08ddddb3e00ab81f30f8a6` |
| 14 | `theorem` | [card_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sigma/Variant3058c504f5973a9ac42010eeac23377a19ec478b081110652e79c301e033161b.lean/declarations/card-sigma--ccca3b3fd156f19d2b91cb61.md) | 130 | `result-track:ccca3b3fd156f19d2b91cb6150568d42c4c5aa12bf1efb673edf34f1a96b248a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
