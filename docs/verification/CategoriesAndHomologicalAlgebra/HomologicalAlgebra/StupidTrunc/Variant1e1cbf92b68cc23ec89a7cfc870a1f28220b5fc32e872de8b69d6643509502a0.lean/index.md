# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.StupidTrunc.Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4a21bf38fef78084ffa90d5214b30450399939e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4a21bf38fef78084ffa90d5214b30450399939e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Extend` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.IsSupported` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.Restriction` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stupidTrunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/declarations/stupidtrunc--4900212c9055c2cf9ffa62ce.md) | 37 | `declaration-track:4900212c9055c2cf9ffa62ce87b6110f6761aff16ba46f78c7517e962022fad1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/declarations/instance--c72cb3ea41ebd2351496415c.md) | 39 | `declaration-track:c72cb3ea41ebd2351496415c104c45339fbd0cde21292fffe034e7d9369adc82` |
| 3 | `def` | [stupidTruncXIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/declarations/stupidtruncxiso--706fd7a54115a92a93778be0.md) | 44 | `declaration-track:706fd7a54115a92a93778be01fd9ad4b7560bb449f83ecd8be32ad5a669b5d5e` |
| 4 | `lemma` | [isZero_stupidTrunc_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/declarations/iszero-stupidtrunc-x--bdbfd5ce596d2ab1e4f6c40a.md) | 48 | `result-track:bdbfd5ce596d2ab1e4f6c40a5df6b5cb8ad3418c23c31aaacd75f1c855271d2f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/declarations/instance--99b85b9998d6e15accbea72c.md) | 52 | `declaration-track:99b85b9998d6e15accbea72c221be5bede6bc528229e76573f6207812274d1d0` |
| 6 | `lemma` | [isZero_stupidTrunc_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/declarations/iszero-stupidtrunc-iff--9469a5ca21ec713ebfad267c.md) | 62 | `result-track:9469a5ca21ec713ebfad267c781a81e757d6cfbc79e6d18bdf459ca967ca76d4` |
| 7 | `def` | [stupidTruncMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/declarations/stupidtruncmap--1eca827f3eb1f674abc9604a.md) | 76 | `declaration-track:1eca827f3eb1f674abc9604ace6c76f19d905e4f83af284a280f935a806d89be` |
| 8 | `lemma` | [stupidTruncMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/declarations/stupidtruncmap-id--8d514601368f0ad51b55299c.md) | 81 | `result-track:8d514601368f0ad51b55299c7f5cca956b541bffc62f07c961ad9c3b4b2295db` |
| 9 | `lemma` | [stupidTruncMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/declarations/stupidtruncmap-comp--cfa6a75201de5dbbc162f959.md) | 85 | `result-track:cfa6a75201de5dbbc162f959bcebfce0c4cab3153f05ec69cacd4ec705d05b48` |
| 10 | `lemma` | [stupidTruncMap_stupidTruncXIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/declarations/stupidtruncmap-stupidtruncxiso-hom--2cd3c2dca42684467699b744.md) | 90 | `result-track:2cd3c2dca42684467699b74480796cecb4ae9ed036e96bba14623a8a2eafc476` |
| 11 | `def` | [stupidTruncFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/declarations/stupidtruncfunctor--cf770de836c9cd3b060551b1.md) | 105 | `declaration-track:cf770de836c9cd3b060551b1663d97266ebef9ddf6bb4ba33b92f46a693ee0e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
