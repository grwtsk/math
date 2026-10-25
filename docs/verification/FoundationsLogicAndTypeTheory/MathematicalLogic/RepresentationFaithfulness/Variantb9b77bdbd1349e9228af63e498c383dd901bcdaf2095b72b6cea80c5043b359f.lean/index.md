# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RepresentationFaithfulness.Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1603f3567713d041a49c4101183b9215bddd46c0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1603f3567713d041a49c4101183b9215bddd46c0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Monodromy.Representation` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Research.TorsionShellComparison` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SelectedTwistGroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean/declarations/selectedtwistgroup--40d8d7a2511bb29cc9f0319e.md) | 29 | `declaration-track:40d8d7a2511bb29cc9f0319e3db1911f597482022a15366ed833d236b824de55` |
| 2 | `def` | [Faithful](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean/declarations/faithful--7d5f37e78786af3ed625525a.md) | 37 | `declaration-track:7d5f37e78786af3ed625525ac35003d8590e6642b840a1f041eeb7a1b97b0d7d` |
| 3 | `def` | [SurjectiveOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean/declarations/surjectiveon--f37ac526b686e07b6353f8f1.md) | 44 | `declaration-track:f37ac526b686e07b6353f8f1bf88313177d87e94d339eed1de0f162ec67a16a7` |
| 4 | `structure` | [ClassifiesSelectedTwists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean/declarations/classifiesselectedtwists--7ea4da992b7d850331abf438.md) | 52 | `declaration-track:7ea4da992b7d850331abf43872fc3ad45a6245719bd2c05566e33763982ced9c` |
| 5 | `theorem` | [every_selected_twist_has_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean/declarations/every-selected-twist-has-preimage--95322a9aba9087ba963c0c22.md) | 61 | `result-track:95322a9aba9087ba963c0c225f2378a2ae77403b5fec3a6ee64c3b14c0c79123` |
| 6 | `theorem` | [selected_twist_preimage_unique_of_faithful](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f.lean/declarations/selected-twist-preimage-unique-of-faithful--d3b7906ce97634581cc4c74b.md) | 73 | `result-track:d3b7906ce97634581cc4c74bb8c2a47ba75cc97f8741535cc99914c4bb7bad52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
