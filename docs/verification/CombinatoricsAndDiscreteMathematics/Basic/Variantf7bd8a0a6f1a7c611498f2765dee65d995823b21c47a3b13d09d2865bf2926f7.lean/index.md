# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b49702d374c938a30c65105b66e187055296749d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b49702d374c938a30c65105b66e187055296749d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FarFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean/declarations/farfromtrianglefree--2f6b4288452b2fb8220c0ce7.md) | 41 | `declaration-track:2f6b4288452b2fb8220c0ce7d93e31f1269d3bdc7544f6c9d6caca8a545de8f3` |
| 2 | `theorem` | [farFromTriangleFree_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean/declarations/farfromtrianglefree-iff--3b27bcb979aa49499a556eeb.md) | 45 | `result-track:3b27bcb979aa49499a556eeb63a502bf146158041d77d726468f225029a5de76` |
| 3 | `theorem` | [FarFromTriangleFree.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean/declarations/farfromtrianglefree-mono--13a89576e48e2c7854191061.md) | 52 | `result-track:13a89576e48e2c7854191061947ae766fc64763b7f140f4c2b734f2e1827bbef` |
| 4 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean/declarations/farfromtrianglefree-cliquefinset-nonempty--8316c90240badcc2296f572c.md) | 56 | `result-track:8316c90240badcc2296f572cbcca35c7aef355093c665532a02ae9215dabaef2` |
| 5 | `theorem` | [FarFromTriangleFree.nonpos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean/declarations/farfromtrianglefree-nonpos--7bbd303244f07b773a5cfb00.md) | 65 | `result-track:7bbd303244f07b773a5cfb0042b4d59bf25f4847453d9f72664f623decbb2e41` |
| 6 | `theorem` | [CliqueFree.not_farFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean/declarations/cliquefree-not-farfromtrianglefree--a9e1726ba5b4e4edfdab11bd.md) | 72 | `result-track:a9e1726ba5b4e4edfdab11bd4ed7ef7a063e09896ff07d5028f7e508aef01818` |
| 7 | `theorem` | [FarFromTriangleFree.not_cliqueFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean/declarations/farfromtrianglefree-not-cliquefree--936b2a300afe651b7d5fec00.md) | 76 | `result-track:936b2a300afe651b7d5fec00f3a0d2e04b5b2cd47229c4a2563a1e7bc4f080cf` |
| 8 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantf7bd8a0a6f1a7c611498f2765dee65d995823b21c47a3b13d09d2865bf2926f7.lean/declarations/farfromtrianglefree-cliquefinset-nonempty--26b6231ed7450d24d6a50ce2.md) | 80 | `result-track:26b6231ed7450d24d6a50ce2ae797e500c7692ff0e6f50db6825889babd54d96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
