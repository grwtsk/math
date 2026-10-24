# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterate.Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "618a7755a9b5ea70e2a9345c154305a9dea60646",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `618a7755a9b5ea70e2a9345c154305a9dea60646`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean/declarations/length-iterate--572e65bb22a9a757bd79415b.md) | 29 | `result-track:572e65bb22a9a757bd79415b281ca22dc2fb730cdcf579a1c2df5b470a5617cb` |
| 2 | `theorem` | [iterate_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean/declarations/iterate-eq-nil--b29d1efbd65da3d638750a25.md) | 33 | `result-track:b29d1efbd65da3d638750a25c9afec612472fe4443e70e0d2b8cc700c79e37ca` |
| 3 | `theorem` | [getElem?_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean/declarations/getelem-iterate--563205eb5340365a8d2dc212.md) | 36 | `result-track:563205eb5340365a8d2dc212df6f91f77b877a848955485b2e3828bc3d9f2829` |
| 4 | `theorem` | [getElem_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean/declarations/getelem-iterate--dc8746bef23e12430b1928a9.md) | 42 | `result-track:dc8746bef23e12430b1928a9a9a2ed101e29b72834f72fa8fcba9a0aaf21a81b` |
| 5 | `theorem` | [mem_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean/declarations/mem-iterate--3eb44edbed2efcead008c45d.md) | 47 | `result-track:3eb44edbed2efcead008c45d249191dd7f8411cee49510fcfee019823a49463b` |
| 6 | `theorem` | [range_map_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean/declarations/range-map-iterate--eb04f24b295302cb993f573c.md) | 52 | `result-track:eb04f24b295302cb993f573cff88adcbff5895e8733a459dfc522c72e1cc6914` |
| 7 | `theorem` | [iterate_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean/declarations/iterate-add--6186590f7a46dda7095adeb9.md) | 56 | `result-track:6186590f7a46dda7095adeb9802a4948b8dea820ab1dc6315bef1f923039577e` |
| 8 | `theorem` | [take_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant34cb832bd56b80679237c97c36e9982e11246327750eb8248242e45355806942.lean/declarations/take-iterate--643e8bfbda47e2381531edae.md) | 62 | `result-track:643e8bfbda47e2381531edae954c0b6e65cf662b878fd4e51b0140d7b215bfe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
