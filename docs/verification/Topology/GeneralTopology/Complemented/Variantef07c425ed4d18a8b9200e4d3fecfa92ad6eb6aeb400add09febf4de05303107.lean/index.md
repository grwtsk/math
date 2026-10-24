# Verification target: GRWTSK.Topology.GeneralTopology.Complemented.Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d5e7f2cb0077c9f263b78e4adc5dc6215610cae",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d5e7f2cb0077c9f263b78e4adc5dc6215610cae`.

Source path: `GRWTSK/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.Banach` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_closedComplemented_of_finiteDimensional_range](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/ker-closedcomplemented-of-finitedimensional-range--5f2229ade3ce7e58f3b4a2e3.md) | 37 | `result-track:5f2229ade3ce7e58f3b4a2e31cfc199ddabee28d92829dc7b782f4ced9f0f3be` |
| 2 | `def` | [equivProdOfSurjectiveOfIsCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/equivprodofsurjectiveofiscompl--3956c640af0a5eb6c76b8579.md) | 51 | `declaration-track:3956c640af0a5eb6c76b8579d411dc8619c55c4a7590e742c9ef14cbdba5befe` |
| 3 | `theorem` | [coe_equivProdOfSurjectiveOfIsCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/coe-equivprodofsurjectiveofiscompl--4470688d080e590edc9467a0.md) | 57 | `result-track:4470688d080e590edc9467a005b6173880affc4245ee217309dfd94f19efa494` |
| 4 | `theorem` | [equivProdOfSurjectiveOfIsCompl_toLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/equivprodofsurjectiveofiscompl-tolinearequiv--03bdd4ae6adb3dd0edcff4ee.md) | 62 | `result-track:03bdd4ae6adb3dd0edcff4eea5671d57ba66b74609b57525bf99bc0d5d7498dd` |
| 5 | `theorem` | [equivProdOfSurjectiveOfIsCompl_apply](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/equivprodofsurjectiveofiscompl-apply--6126424c32164a83c807897e.md) | 68 | `result-track:6126424c32164a83c807897e55f2d1b9953fa676f0652b5631ffb41becf5d749` |
| 6 | `def` | [prodEquivOfClosedCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/prodequivofclosedcompl--3f0f0316e4be95b64f9b8b41.md) | 80 | `declaration-track:3f0f0316e4be95b64f9b8b41a697713138c9feb08186343e12afef11af171abe` |
| 7 | `def` | [linearProjOfClosedCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/linearprojofclosedcompl--e3011d252757fa8886a5f6c3.md) | 87 | `declaration-track:e3011d252757fa8886a5f6c31d10ec18265a7d10aaafc38835fc5330b374956c` |
| 8 | `theorem` | [coe_prodEquivOfClosedCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/coe-prodequivofclosedcompl--db5c64cbc856e1f211bce363.md) | 94 | `result-track:db5c64cbc856e1f211bce363b78e2ddf513db96f8c850e4a29a3d84296d97ab4` |
| 9 | `theorem` | [coe_prodEquivOfClosedCompl_symm](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/coe-prodequivofclosedcompl-symm--dcedb21548600904637ee4df.md) | 99 | `result-track:dcedb21548600904637ee4df3497c268e91195c8adbe6440ede78bbf00353e51` |
| 10 | `theorem` | [coe_continuous_linearProjOfClosedCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/coe-continuous-linearprojofclosedcompl--4c4fff1eb289454ac9d3ee2e.md) | 104 | `result-track:4c4fff1eb289454ac9d3ee2e9ef9709a5ddc2640bab8f14d358609ec7306094f` |
| 11 | `theorem` | [coe_continuous_linearProjOfClosedCompl'](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/coe-continuous-linearprojofclosedcompl--9163845515cd69647490c694.md) | 109 | `result-track:9163845515cd69647490c6943cd68b65575ea42bcff876e4fb0d440d2dfb28c3` |
| 12 | `theorem` | [ClosedComplemented.of_isCompl_isClosed](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/closedcomplemented-of-iscompl-isclosed--2d569052731ae5808281eff5.md) | 113 | `result-track:2d569052731ae5808281eff5f5f0f037ebc50b8b771d729bb7b405b214496c98` |
| 13 | `theorem` | [closedComplemented_iff_isClosed_exists_isClosed_isCompl](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/closedcomplemented-iff-isclosed-exists-isclosed-iscompl--65a3e1d08e8a9e2f6b6d27dc.md) | 119 | `result-track:65a3e1d08e8a9e2f6b6d27dcc17c2a4a99f8bd8666b0012d8fcf3f9c0f165de9` |
| 14 | `theorem` | [ClosedComplemented.of_quotient_finiteDimensional](../../../../../mathematics/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/declarations/closedcomplemented-of-quotient-finitedimensional--1096d143584cd37866bfcc7f.md) | 125 | `result-track:1096d143584cd37866bfcc7ffee1a9ef5c26c654deacea185f76050f7a591b9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
