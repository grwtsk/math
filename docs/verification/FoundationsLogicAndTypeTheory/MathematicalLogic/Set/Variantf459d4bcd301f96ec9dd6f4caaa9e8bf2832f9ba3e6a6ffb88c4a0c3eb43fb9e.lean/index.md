# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Set.Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43f2261c2205107a5ab624c5b4c72a1eb965c145",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43f2261c2205107a5ab624c5b4c72a1eb965c145`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Image` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Equiv.asEmbedding_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/equiv-asembedding-range--b7885676b6f37828731b311a.md) | 28 | `result-track:b7885676b6f37828731b311a6cd7c414d2dc9220638b0e3793c13d235df44b8e` |
| 2 | `def` | [optionElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/optionelim--36835ea6ae1db5b51aa9cba7.md) | 41 | `declaration-track:36835ea6ae1db5b51aa9cba7dcff19ec76ed9f13b767202c2ffed06822ffc948` |
| 3 | `def` | [optionEmbeddingEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/optionembeddingequiv--d546710af723974ccbfea84c.md) | 46 | `declaration-track:d546710af723974ccbfea84c4c3705783467cfe4bdf49e53c7358fb2fe44f54a` |
| 4 | `def` | [codRestrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/codrestrict--2cfc7e2b0607d13d490eb57e.md) | 53 | `declaration-track:2cfc7e2b0607d13d490eb57e2bfb995b28f992d38d21ddeb1f3a4de4a980cd4c` |
| 5 | `theorem` | [codRestrict_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/codrestrict-apply--2c34b96b01bddac5ee770d0e.md) | 57 | `result-track:2c34b96b01bddac5ee770d0e465a260069f354e367027b78508b9854ad63ef33` |
| 6 | `def` | [image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/image--0bcb8b44a60c546f64f0c479.md) | 64 | `declaration-track:0bcb8b44a60c546f64f0c4796dfb5970a7b8bffc1979f5cbec49824a489da096` |
| 7 | `def` | [embeddingOfSubset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/embeddingofsubset--f3d5580997e68535c6a85df6.md) | 75 | `declaration-track:f3d5580997e68535c6a85df6913511b64e57b592b457a02d5a66ba3996209fc9` |
| 8 | `def` | [subtypeOrEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/subtypeorequiv--6877dd0f58c6c92f04b01381.md) | 92 | `declaration-track:6877dd0f58c6c92f04b013818c9ac961dc3c7e16b0e1a748d9eaeb36255e67c8` |
| 9 | `theorem` | [subtypeOrEquiv_symm_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/subtypeorequiv-symm-inl--841774a928809049d71db206.md) | 120 | `result-track:841774a928809049d71db206037b75eba70490ad6e9307983f1e2091f8f12f14` |
| 10 | `theorem` | [subtypeOrEquiv_symm_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/subtypeorequiv-symm-inr--3ecd6beada7aaa39963a39b6.md) | 125 | `result-track:3ecd6beada7aaa39963a39b6c0a3428fc568ca18b79979d85a78a0cc4819f809` |
| 11 | `def` | [Function.Embedding.sumSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/function-embedding-sumset--99796561c3c1763973578d2c.md) | 136 | `declaration-track:99796561c3c1763973578d2c319f6341f60d450886b471f475e560cbe6aabbb6` |
| 12 | `lemma` | [Function.Embedding.coe_sumSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/function-embedding-coe-sumset--a5c70a73ab2c7af2f4e1232e.md) | 145 | `result-track:a5c70a73ab2c7af2f4e1232e5f12c2697b9a4ce88c0be77338bb66a7d28396ba` |
| 13 | `theorem` | [Function.Embedding.sumSet_preimage_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/function-embedding-sumset-preimage-inl--25151d152216c8645a234bea.md) | 148 | `result-track:25151d152216c8645a234beaa806e527b2eb72d1178c79c66a5b54b782ea988f` |
| 14 | `theorem` | [Function.Embedding.sumSet_preimage_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/function-embedding-sumset-preimage-inr--c8eebe21c0296af149f2b1ae.md) | 152 | `result-track:c8eebe21c0296af149f2b1ae9f9d258b249f35510f14cd1e3478071b22b913ee` |
| 15 | `theorem` | [Function.Embedding.sumSet_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/function-embedding-sumset-range--4c82601e4db6a0423358924d.md) | 156 | `result-track:4c82601e4db6a0423358924d21bbabd63bf7a7c6823b193c1baa422e42b3f955` |
| 16 | `def` | [Function.Embedding.sigmaSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/function-embedding-sigmaset--de34e561134e1e2d5590774e.md) | 164 | `declaration-track:de34e561134e1e2d5590774e77e61bfe9980686bdcf97ccbe0e2f8f69c42c36b` |
| 17 | `lemma` | [Function.Embedding.coe_sigmaSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/function-embedding-coe-sigmaset--9262a19ee59d1cf5eb1a942c.md) | 172 | `result-track:9262a19ee59d1cf5eb1a942cdd13c8016feb7faeeeed730805f55ea6ec607ffa` |
| 18 | `theorem` | [Function.Embedding.sigmaSet_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/function-embedding-sigmaset-preimage--ac2ba8758f9e1c547e53a568.md) | 175 | `result-track:ac2ba8758f9e1c547e53a568ff5ab589fd7bedaa6ec5544cb09a3b972d13e9e2` |
| 19 | `theorem` | [Function.Embedding.sigmaSet_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Set/Variantf459d4bcd301f96ec9dd6f4caaa9e8bf2832f9ba3e6a6ffb88c4a0c3eb43fb9e.lean/declarations/function-embedding-sigmaset-range--84a4c95c078fb266e1c4f12c.md) | 180 | `result-track:84a4c95c078fb266e1c4f12c0232c69098618e5f422c81305cb57ec455eb0b3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
