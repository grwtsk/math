# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.GroundedResponse.Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9357fdd538685b7e086149a85eb0247f69fe1da0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9357fdd538685b7e086149a85eb0247f69fe1da0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Language.GroundedClause` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Rhetorical.Grounding` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GroundedResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/groundedresponse--e607d73234c119220465dde2.md) | 18 | `declaration-track:e607d73234c119220465dde215d9b5319041c463b445ef9d6aed7a463e52b18a` |
| 2 | `inductive` | [ResponseGroundingError](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/responsegroundingerror--e82d37436bf99ede36cc42d6.md) | 26 | `declaration-track:e82d37436bf99ede36cc42d6896ae090a60a9987ae39752c03a9a5ad1be20b92` |
| 3 | `structure` | [CheckedClauseList](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedclauselist--290476e2b20c5d45d5a0de7f.md) | 33 | `declaration-track:290476e2b20c5d45d5a0de7f385f27d2f6f8b6c3874cc38d3dc2f5f39e0ab636` |
| 4 | `def` | [validateClauseList](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/validateclauselist--db632c22138f2f79b1b03dd2.md) | 39 | `declaration-track:db632c22138f2f79b1b03dd2b8b09c9f08d0f7e6b432a60c61ebb512663e37df` |
| 5 | `structure` | [CheckedGroundedResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedgroundedresponse--a6e290667fc87fe316fa4fd4.md) | 63 | `declaration-track:a6e290667fc87fe316fa4fd41ae2016e3f81b21bfb42b72643447e3cf5e755fe` |
| 6 | `def` | [validateGroundedResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/validategroundedresponse--ed8b01d92e11a359cc334b69.md) | 71 | `declaration-track:ed8b01d92e11a359cc334b69ce465cc4e159401b0eafb449fcacaed642c7f29e` |
| 7 | `def` | [ClauseBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/clausebound--7eaf318404580c0e12594585.md) | 90 | `declaration-track:7eaf318404580c0e1259458594c1422614f76769a61a1003aab8096b94a62651` |
| 8 | `inductive` | [RhetoricalLocatorError](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/rhetoricallocatorerror--c905af0031e0fee397258df7.md) | 99 | `declaration-track:c905af0031e0fee397258df75806fa18fa6394ca3a4aac45e099572c2f198d7e` |
| 9 | `structure` | [CheckedExternalRhetoricalLocator](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedexternalrhetoricallocator--f792eb0ea897d2684a3493a8.md) | 113 | `declaration-track:f792eb0ea897d2684a3493a8dd667fcb950688d64504ffedf8a573e93caa6406` |
| 10 | `def` | [validateExternalRhetoricalLocator](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/validateexternalrhetoricallocator--9b0a213783519667f973d944.md) | 131 | `declaration-track:9b0a213783519667f973d944b85c8fd69f484936ec2f3adf17e9e2d8a6880f40` |
| 11 | `theorem` | [CheckedExternalRhetoricalLocator.score_navigation_only](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedexternalrhetoricallocator-score-navigation-only--47f65ffe2f258977a28606d6.md) | 174 | `result-track:47f65ffe2f258977a28606d6c5adfd7897f9773f7960b94076e2465b36c5d7aa` |
| 12 | `theorem` | [CheckedExternalRhetoricalLocator.score_shape_valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedexternalrhetoricallocator-score-shape-valid--3f3990df26ba489707c4cadb.md) | 186 | `result-track:3f3990df26ba489707c4cadbb5d87c116325fbe443ccfd6a4d342d686c1951c6` |
| 13 | `theorem` | [CheckedExternalRhetoricalLocator.score_report_certified](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedexternalrhetoricallocator-score-report-certified--79720807e9fed38a439d1d5e.md) | 198 | `result-track:79720807e9fed38a439d1d5e8100cc6a48386b36091d83fabb4071a21e89004c` |
| 14 | `theorem` | [CheckedExternalRhetoricalLocator.point_diagonal_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedexternalrhetoricallocator-point-diagonal-pos--4d995ec484bfe166d7cb3248.md) | 213 | `result-track:4d995ec484bfe166d7cb32485648e8c16231bb74ea504f4230e7ba92b8830484` |
| 15 | `inductive` | [CheckedRhetoricalLocatorList](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedrhetoricallocatorlist--cb6036f99c8e042c54ef994b.md) | 225 | `declaration-track:cb6036f99c8e042c54ef994b8e21e064f239540b7dcc955841ed043ca63d3ede` |
| 16 | `def` | [validateRhetoricalLocatorList](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/validaterhetoricallocatorlist--e4a5e83458e08dedc8c6d1f5.md) | 238 | `declaration-track:e4a5e83458e08dedc8c6d1f532330d6eebb2d4c4979b942770318a02f5ebcb19` |
| 17 | `inductive` | [RhetoricalResponseGroundingError](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/rhetoricalresponsegroundingerror--091497f3aad4bd96a5bb1126.md) | 257 | `declaration-track:091497f3aad4bd96a5bb1126b8b8e44e54d2dc1eb9897b99f11a916ce3d049a5` |
| 18 | `structure` | [CheckedRhetoricalGroundedResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedrhetoricalgroundedresponse--f8ed25fcb904b494607742f6.md) | 266 | `declaration-track:f8ed25fcb904b494607742f67adc79ff86305572ce23b840f8d938977bf7d1b9` |
| 19 | `def` | [validateRhetoricallyGroundedResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/validaterhetoricallygroundedresponse--b6e39c502f368a51be2b012d.md) | 278 | `declaration-track:b6e39c502f368a51be2b012df01a3d10194b5a92b6034a59fbd5775da669e7de` |
| 20 | `theorem` | [CheckedGroundedResponse.clause_accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedgroundedresponse-clause-accepted--d3b5327e6f7dfa4861d6b2cc.md) | 308 | `result-track:d3b5327e6f7dfa4861d6b2cc48dff0ecc9a6dc819e87a9ac615afb70611f9b9c` |
| 21 | `theorem` | [CheckedAssertion.not_embedding_only](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedassertion-not-embedding-only--088b6bbc5a245a3312cb27d7.md) | 318 | `result-track:088b6bbc5a245a3312cb27d7071fa60d9547117400faf7e6b71f5460bfebbdac` |
| 22 | `theorem` | [CheckedAssertion.model_authored_not_established](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variant998cf06725d8709a84c12e1650c2024606882e2be7009e6d3aa0897bef6e4878.lean/declarations/checkedassertion-model-authored-not-established--20e9bea722e6e901722859b3.md) | 326 | `result-track:20e9bea722e6e901722859b3ec88e074862dbb6facb84cf6c050b2a835721f48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
