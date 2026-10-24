# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt02.Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46db07bb126b6a7ddb18e6127ab00f08b608baf1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46db07bb126b6a7ddb18e6127ab00f08b608baf1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Order` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramPlus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/gramplus--4a12fe6c3529caef44888825.md) | 12 | `declaration-track:4a12fe6c3529caef44888825e326fc16060601bb617b8c6129d0d6fe0e86bc27` |
| 2 | `def` | [gramMinus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/gramminus--8edb8e90fcfe1517fc86310d.md) | 14 | `declaration-track:8edb8e90fcfe1517fc86310d443f0229965c63258d5556509ff9f955453c1844` |
| 3 | `def` | [pairwiseProfile](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/pairwiseprofile--f6b7597454649dbd876b433e.md) | 16 | `declaration-track:f6b7597454649dbd876b433e9671594cc08f07bd3888b1248f20ba44ab71bdf9` |
| 4 | `def` | [tripleCycle](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/triplecycle--17eb9272ee7981317a792f16.md) | 18 | `declaration-track:17eb9272ee7981317a792f16efa9a43eba82863305ade087ffd104e4c29fc909` |
| 5 | `theorem` | [gramPlus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/gramplus-hermitian--1e3a704b230052a734a4bf70.md) | 20 | `result-track:1e3a704b230052a734a4bf700fc6dd2774836c1516daa982f5870634c8303a55` |
| 6 | `theorem` | [gramMinus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/gramminus-hermitian--f2f3168aede6faafa30f05d5.md) | 23 | `result-track:f2f3168aede6faafa30f05d5128cb00b6d2fd336d6b844087199a480f4f56693` |
| 7 | `theorem` | [gramPlus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/gramplus-energy--dd26549cb0d2e16b96c7c83a.md) | 27 | `result-track:dd26549cb0d2e16b96c7c83aa2be12fd598f27002d706b5d5f372caee0353918` |
| 8 | `theorem` | [gramMinus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/gramminus-energy--fccc747405365548ae243c01.md) | 33 | `result-track:fccc747405365548ae243c01f58681a0f293cc47f3228e65b12ce3f21ddf9537` |
| 9 | `theorem` | [sum_sq_pos](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/sum-sq-pos--449ad32a3f19bb9173c3bc5d.md) | 40 | `result-track:449ad32a3f19bb9173c3bc5d74345ba5e278e4ef7b848d4e0dd809fa995048f1` |
| 10 | `theorem` | [gramPlus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/gramplus-posdef--81b8840df72a2ed67ee53c0e.md) | 52 | `result-track:81b8840df72a2ed67ee53c0ec369bdaa202864eaf08daeb2651b6a80448eb4e3` |
| 11 | `theorem` | [gramMinus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/gramminus-posdef--738e6828c5c468e89285f701.md) | 57 | `result-track:738e6828c5c468e89285f701b092cc80e66604b7aacd79866bb906fe5606a747` |
| 12 | `theorem` | [positive_gram_factor](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/positive-gram-factor--6929624f4342e91104897301.md) | 63 | `result-track:6929624f4342e9110489730112d8fd02989a0ae9735ceac8b6a32af2fef494a1` |
| 13 | `theorem` | [gramPlus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/gramplus-realizable--75a88d756ee25d94f84be8a9.md) | 69 | `result-track:75a88d756ee25d94f84be8a93630c7587ce3eeab9dc3dd2ad069d50bc47c1a36` |
| 14 | `theorem` | [gramMinus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/gramminus-realizable--681aa82bf1051cfa02040801.md) | 71 | `result-track:681aa82bf1051cfa020408018c7e5266615a2841e12afbfc14e3537733fed51e` |
| 15 | `theorem` | [diagonals_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/diagonals-equal--95a90a21a8dc32ab44fa64e9.md) | 74 | `result-track:95a90a21a8dc32ab44fa64e9cb2ce623d7c5ed8c822733ab2eaab3b836221d98` |
| 16 | `theorem` | [pairwise_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/pairwise-equal--edd966044d08f83ca40daad0.md) | 77 | `result-track:edd966044d08f83ca40daad0d40d9107a7d0f323c0c260d4a50d1a8e72882405` |
| 17 | `theorem` | [triple_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/triple-plus--d26b7be66c95d797d2c5b874.md) | 80 | `result-track:d26b7be66c95d797d2c5b87454eb2f2c3824d0055eb1b2c10f084ba0ffb85d91` |
| 18 | `theorem` | [triple_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/triple-minus--c9ded800d286ccd7d88a2bf1.md) | 82 | `result-track:c9ded800d286ccd7d88a2bf183e6f5ac8ce5d43a11998777d024e877c4a5cf5d` |
| 19 | `theorem` | [triple_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/triple-distinct--11fc9aa1d3e3e15eb230bcce.md) | 84 | `result-track:11fc9aa1d3e3e15eb230bcce7f421ab524fe8d630206710761fa53a8ad9875f9` |
| 20 | `theorem` | [det_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/det-plus--7cea684791263ece0a1151fd.md) | 88 | `result-track:7cea684791263ece0a1151fd02f04d0078c668de4ae8a49f2f1d1de4bc197a2d` |
| 21 | `theorem` | [det_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/det-minus--00659a8037e247e02ed0240a.md) | 90 | `result-track:00659a8037e247e02ed0240a0f0e443f54a09e40f847bf2e561023c1b21bb621` |
| 22 | `theorem` | [det_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/det-distinct--6d317e0852fb586f26042a0a.md) | 92 | `result-track:6d317e0852fb586f26042a0ad46a9a2e3ae0134f55d9bffb291a1faa7841d389` |
| 23 | `theorem` | [no_pairwise_triple_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/no-pairwise-triple-decoder--b8a1b3bc24cfb5fd5accb0dd.md) | 96 | `result-track:b8a1b3bc24cfb5fd5accb0dd83edbdfdd140799c9338eeb68b6a7e42a3074581` |
| 24 | `theorem` | [no_pairwise_determinant_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt02/Variant0578440cd04da92ac9718b0e81114d464e5bf273debdf2334e8dc56b1c489f7e.lean/declarations/no-pairwise-determinant-decoder--6b865341ae8553e9fcd499ee.md) | 105 | `result-track:6b865341ae8553e9fcd499eeca91ec9366024817350f20f5d02e6153746175e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
