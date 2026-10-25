# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Pigeonhole.Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8db3882da37ef299a35ab3b999665ea50ea11f52",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8db3882da37ef299a35ab3b999665ea50ea11f52`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_pigeonhole](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/declarations/infinite-pigeonhole--85c49b6b5afbff1b93af290c.md) | 26 | `result-track:85c49b6b5afbff1b93af290c612012fb91fdb1a98bd1ac49f59eaf44c1ade9c3` |
| 2 | `theorem` | [infinite_pigeonhole_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/declarations/infinite-pigeonhole-card--cbf959e7ec27a6b30f70669b.md) | 41 | `result-track:cbf959e7ec27a6b30f70669b2514dd18e6d463ef99be079c92d1abd07c6880c4` |
| 3 | `theorem` | [infinite_pigeonhole_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/declarations/infinite-pigeonhole-set--09f89066f878bf353a329f50.md) | 48 | `result-track:09f89066f878bf353a329f5097001c15c58485306976ce9b23ebc940fb31d6a8` |
| 4 | `theorem` | [infinite_pigeonhole_card_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/declarations/infinite-pigeonhole-card-lt--e1f981386a7e40ec19dbc005.md) | 65 | `result-track:e1f981386a7e40ec19dbc005a52e4c7e80c7e857fcd8036d351c50cc83b17378` |
| 5 | `theorem` | [exists_infinite_fiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/declarations/exists-infinite-fiber--717f631d5d7556ad316fed02.md) | 73 | `result-track:717f631d5d7556ad316fed02080d4346f0b3c10477e6dedfd07b82697d933e39` |
| 6 | `theorem` | [le_range_of_union_finset_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Pigeonhole/Variantcb512eb7cfcf4f2b5c39077714a83b3fc0b82b40e572fbdbd198e872b612f6d4.lean/declarations/le-range-of-union-finset-eq-top--6a7931d0db82a54ad5c8efe3.md) | 83 | `result-track:6a7931d0db82a54ad5c8efe33aefec693881e71429683c7c2a08ccbff0dd2f0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
