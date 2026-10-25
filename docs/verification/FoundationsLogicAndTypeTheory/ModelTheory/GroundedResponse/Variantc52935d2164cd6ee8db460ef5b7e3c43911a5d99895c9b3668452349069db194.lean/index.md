# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.GroundedResponse.Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80af834f9b80f39cefae375048cea9f052f7488b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80af834f9b80f39cefae375048cea9f052f7488b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Language.GroundedClause` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GroundedResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean/declarations/groundedresponse--e4f3f1b257c1aaec7dcb680c.md) | 24 | `declaration-track:e4f3f1b257c1aaec7dcb680c78caa4aa0110f21b7b3e3f75c23c910f4fd5675b` |
| 2 | `inductive` | [ResponseGroundingError](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean/declarations/responsegroundingerror--853fc94f8cea0f342a53cf56.md) | 29 | `declaration-track:853fc94f8cea0f342a53cf56b73561febd0acb32be6426089d8d783c645b2970` |
| 3 | `structure` | [CheckedClauseList](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean/declarations/checkedclauselist--f1eb4b57e8fd83180170d16f.md) | 35 | `declaration-track:f1eb4b57e8fd83180170d16f2d481f5f28a4d6e1791e62339e7f3838fed955bf` |
| 4 | `def` | [validateClauseList](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean/declarations/validateclauselist--da1e66f3ec5a99823e66c8f8.md) | 41 | `declaration-track:da1e66f3ec5a99823e66c8f8004499ab3e5cb5b49e534977c94403ca5078bf6e` |
| 5 | `structure` | [CheckedGroundedResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean/declarations/checkedgroundedresponse--9fde89cfcaa74dd52345f14e.md) | 65 | `declaration-track:9fde89cfcaa74dd52345f14ec7d6245e4aeb1cf11a7836be18e6240d59b02896` |
| 6 | `def` | [validateGroundedResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean/declarations/validategroundedresponse--442e484c05a4e3514de10ce6.md) | 72 | `declaration-track:442e484c05a4e3514de10ce6924be1e3287e544450eb00abe31c03209e5a12c8` |
| 7 | `theorem` | [CheckedGroundedResponse.clause_accepted](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean/declarations/checkedgroundedresponse-clause-accepted--062034fea31c9a12545d7592.md) | 84 | `result-track:062034fea31c9a12545d75925332e1ddf9fde95f143f83b9dc95b082b3940400` |
| 8 | `theorem` | [CheckedAssertion.not_embedding_only](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean/declarations/checkedassertion-not-embedding-only--841441672828af3336efcde0.md) | 94 | `result-track:841441672828af3336efcde037c64e9b9021e561f0223a6f3273b527542c12dc` |
| 9 | `theorem` | [CheckedAssertion.model_authored_not_established](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/GroundedResponse/Variantc52935d2164cd6ee8db460ef5b7e3c43911a5d99895c9b3668452349069db194.lean/declarations/checkedassertion-model-authored-not-established--f2fbbdedb5025d9f6fd2e4d7.md) | 102 | `result-track:f2fbbdedb5025d9f6fd2e4d7d104235f5e3b7fcb82f833e9f01ac8ddeb6e9797` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
