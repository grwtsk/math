# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Braiding.Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66ebc79848cfe35f6dd1e41ab2f9a99f3b46dcd5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66ebc79848cfe35f6dd1e41ab2f9a99f3b46dcd5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/declarations/braiding--36cdfe4c45c67bbe8f300c8e.md) | 51 | `declaration-track:36cdfe4c45c67bbe8f300c8e8f5693bbfcf715a0347d4589a47ab5c64f1c68b4` |
| 2 | `lemma` | [braiding_naturality_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/declarations/braiding-naturality-right--429860f4538ea222ff318c8a.md) | 58 | `result-track:429860f4538ea222ff318c8a718c3c451e9f11540a3376ada9da4d809208c845` |
| 3 | `lemma` | [braiding_naturality_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/declarations/braiding-naturality-left--15885b74ddaf3cb49f350bb5.md) | 65 | `result-track:15885b74ddaf3cb49f350bb5aa20535062fc13769b2f49cff22c9acc9f924d31` |
| 4 | `lemma` | [hexagon_forward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/declarations/hexagon-forward--d763d8bd99752c61f189e0a4.md) | 71 | `result-track:d763d8bd99752c61f189e0a41d78244bf89665ccff028fe2ccbd83825e6c35cd` |
| 5 | `lemma` | [hexagon_reverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/declarations/hexagon-reverse--be590147640e2d0e65a7f09c.md) | 109 | `result-track:be590147640e2d0e65a7f09cb830304570e790fff828740fe636e34942f456d9` |
| 6 | `lemma` | [symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/declarations/symmetry--3e1b208140599ca69e28abf5.md) | 148 | `result-track:3e1b208140599ca69e28abf566585f53347683e9a686333919706253ea5e615a` |
| 7 | `instance` | [braidedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/declarations/braidedcategory--d418dc644680f0447eee67c8.md) | 168 | `declaration-track:d418dc644680f0447eee67c8200d0156328c2116f16ab57768da0efaab16eab8` |
| 8 | `instance` | [symmetricCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Braiding/Variant220ad08216d450147f173c65b540dc95eedd5291d6575aafa2d1c12acf018c3b.lean/declarations/symmetriccategory--2813361c58839afa74955aef.md) | 176 | `declaration-track:2813361c58839afa74955aefe3a262c6a6f8ca8ce6d8712ffcabd941d72e3621` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
