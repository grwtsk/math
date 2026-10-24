# Verification target: GRWTSK.Algebra.GroupTheory.Rank.Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4db199222ff879d55ad9dac60a821a88f2b9f3b9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4db199222ff879d55ad9dac60a821a88f2b9f3b9`.

Source path: `GRWTSK/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Finiteness` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/declarations/rank--5119e9283c9a5ffa2f395464.md) | 29 | `declaration-track:5119e9283c9a5ffa2f3954647ee57f11a00ff80f3f66fe43d6458432bbebd4c8` |
| 2 | `lemma` | [rank_spec](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/declarations/rank-spec--7b30730d3f749fadfd8e288a.md) | 33 | `result-track:7b30730d3f749fadfd8e288a86bbb9de915ef5346783cd393b7c46ce43a103b9` |
| 3 | `lemma` | [rank_le](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/declarations/rank-le--b73bd9329f791db7086b7fce.md) | 37 | `result-track:b73bd9329f791db7086b7fce4c993dfefa7c2affdff0fb5b690433b861f304f9` |
| 4 | `lemma` | [rank_le_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/declarations/rank-le-of-surjective--50fa1561ff64b7f0a378112b.md) | 41 | `result-track:50fa1561ff64b7f0a378112b2f0d90828ca6e143c3199eb957a3c507f0649cab` |
| 5 | `lemma` | [rank_range_le](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/declarations/rank-range-le--cc18db053b99f28f27f56066.md) | 50 | `result-track:cc18db053b99f28f27f56066a3ea2b936e48643abc0662d157d813ec0cfec197` |
| 6 | `lemma` | [rank_congr](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/declarations/rank-congr--e3d3ffb6ec1df956d6cd9235.md) | 54 | `result-track:e3d3ffb6ec1df956d6cd9235ed7e2df2d82128b9be15008c711494749d78e368` |
| 7 | `lemma` | [rank_congr](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/declarations/rank-congr--91ce50216d4863ddbc7d74b5.md) | 63 | `result-track:91ce50216d4863ddbc7d74b52b5f95570ecfd0486b14724c8c2f7bafaadd15af` |
| 8 | `lemma` | [rank_closure_finset_le_card](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/declarations/rank-closure-finset-le-card--0878ec4408aad5758b465b44.md) | 67 | `result-track:0878ec4408aad5758b465b44bd21462f1d1082f91e7331512824550539c95f98` |
| 9 | `lemma` | [rank_closure_finite_le_nat_card](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/declarations/rank-closure-finite-le-nat-card--c02d02a2700b276f26052e33.md) | 80 | `result-track:c02d02a2700b276f26052e33c92511b516356b25b4d1bd54161611fb789812b6` |
| 10 | `lemma` | [nat_card_centralizer_nat_card_stabilizer](../../../../../mathematics/Algebra/GroupTheory/Rank/Variant528397b5710c78ab00b1b0aa2637b722f503f7241959459581c13cb1fbc15244.lean/declarations/nat-card-centralizer-nat-card-stabilizer--984f3258df320859e249da39.md) | 85 | `result-track:984f3258df320859e249da394c0ddaea8b8ec8bbc17d814d989e3b15b664d88d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
