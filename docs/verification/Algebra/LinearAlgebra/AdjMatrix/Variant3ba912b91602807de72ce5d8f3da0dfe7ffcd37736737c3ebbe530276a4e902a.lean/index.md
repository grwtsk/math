# Verification target: GRWTSK.Algebra.LinearAlgebra.AdjMatrix.Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65a506351d7685c4d3f0eda7c9ba229128b16056",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65a506351d7685c4d3f0eda7c9ba229128b16056`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Connectivity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAdjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/isadjmatrix--29cce995abbbce25fef9b2b5.md) | 53 | `declaration-track:29cce995abbbce25fef9b2b5b9eeab97367dc1335fcac981eb003a4648b0d623` |
| 2 | `theorem` | [apply_diag_ne](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/apply-diag-ne--b4968bc4affb1b679482752a.md) | 64 | `result-track:b4968bc4affb1b679482752aa76fa0ce59565a64e9e71a7c3f52e7ad3b334ff7` |
| 3 | `theorem` | [apply_ne_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/apply-ne-one-iff--96660770981a9ad40e39c944.md) | 69 | `result-track:96660770981a9ad40e39c944d025c7c9d030e17368ab642ddad79f32f0be60e7` |
| 4 | `theorem` | [apply_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/apply-ne-zero-iff--d14999eb65a9a5d4df081da9.md) | 74 | `result-track:d14999eb65a9a5d4df081da95b0837a2871b9d0dcaeadfda533ac035a1dc6296` |
| 5 | `def` | [toGraph](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/tograph--a4df74d6efeef5e68853737f.md) | 81 | `declaration-track:a4df74d6efeef5e68853737f9cf6b942cf059acbbc380680a29820f77ee54924` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/instance--2c9aff02836e6f5bab44cea9.md) | 87 | `declaration-track:2c9aff02836e6f5bab44cea946da5282677156ae3004f07e5ecaf27986ff0944` |
| 7 | `def` | [compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/compl--ea42e4914d74e377f88c8f04.md) | 96 | `declaration-track:ea42e4914d74e377f88c8f04858789487d1f2ed77c4826d0c676294a1148f470` |
| 8 | `theorem` | [compl_apply_diag](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/compl-apply-diag--2cb90066ea725bc21d0a680c.md) | 105 | `result-track:2cb90066ea725bc21d0a680cec6786a21d34225b895250a8172ae6475d2bea9d` |
| 9 | `theorem` | [compl_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/compl-apply--9c42a015cb0c1c1bf7ed703f.md) | 109 | `result-track:9c42a015cb0c1c1bf7ed703f9171683f82e0466b532017ad8afd81d221e068ca` |
| 10 | `theorem` | [isSymm_compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/issymm-compl--850dd0e4431ff435e4b69a61.md) | 115 | `result-track:850dd0e4431ff435e4b69a61a7b7617c99c95bef8d2cb17a634af8f2b5fbeb9f` |
| 11 | `theorem` | [isAdjMatrix_compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/isadjmatrix-compl--f4a9848bf66bd90de75b6b89.md) | 121 | `result-track:f4a9848bf66bd90de75b6b890646f790ef9d9ef1afc467962e698c408c439ded` |
| 12 | `theorem` | [compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/compl--a5b5a58178e3e8be30c69cf6.md) | 130 | `result-track:a5b5a58178e3e8be30c69cf6040e089e981b9b88374d293ba84bc5803b187865` |
| 13 | `theorem` | [toGraph_compl_eq](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/tograph-compl-eq--71f6c517ab48e5dfd7d365b9.md) | 134 | `result-track:71f6c517ab48e5dfd7d365b981c1249cb75ed86e4b2b2f65803f2f26596f9350` |
| 14 | `def` | [adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/adjmatrix--da8076ad7a89b419b8071b0a.md) | 156 | `declaration-track:da8076ad7a89b419b8071b0a2e8e232ccfc4a9ffeafafe2c195bd1b9ec8a81e6` |
| 15 | `theorem` | [adjMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/adjmatrix-apply--c8a7a5b5f21978103154d805.md) | 164 | `result-track:c8a7a5b5f21978103154d80508d2504771bfbfadcbff795f7a63380c55a09404` |
| 16 | `theorem` | [transpose_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/transpose-adjmatrix--3f3bfa66cf57552afa2a02cd.md) | 170 | `result-track:3f3bfa66cf57552afa2a02cded2fccfdde893a3a0e2d01b67e9c43ce10a874d2` |
| 17 | `theorem` | [isSymm_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/issymm-adjmatrix--fe57b785d9068f9a81fe468a.md) | 176 | `result-track:fe57b785d9068f9a81fe468ae49a66cae84d511fdcbf3581e22a985f252233c1` |
| 18 | `theorem` | [isAdjMatrix_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/isadjmatrix-adjmatrix--bb5ac137f5d6ee97c83dedb8.md) | 184 | `result-track:bb5ac137f5d6ee97c83dedb8066166887848df496ebf3366c415bcc04c30ff85` |
| 19 | `theorem` | [toGraph_adjMatrix_eq](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/tograph-adjmatrix-eq--0c93411de77dea51d5a73e25.md) | 189 | `result-track:0c93411de77dea51d5a73e25a628af6349daeef736339b409f78845770fb03ba` |
| 20 | `theorem` | [adjMatrix_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/adjmatrix-dotproduct--4d9ce74d503272211c6b52a2.md) | 199 | `result-track:4d9ce74d503272211c6b52a24ebb998d4f7b385018d0eb4d2d57ae8e284e2a7f` |
| 21 | `theorem` | [dotProduct_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/dotproduct-adjmatrix--54df70f767d1ea39322c34a3.md) | 205 | `result-track:54df70f767d1ea39322c34a362a793e90546a73aed6d7be54ffd88db78638bf4` |
| 22 | `theorem` | [adjMatrix_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/adjmatrix-mulvec-apply--91c23df1dae776ba33a3fb00.md) | 211 | `result-track:91c23df1dae776ba33a3fb0024fafe3dfa2cdc7d085db78f3759dfafc4eb85f3` |
| 23 | `theorem` | [adjMatrix_vecMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/adjmatrix-vecmul-apply--ca068e6bf7e288d6836c9b6c.md) | 217 | `result-track:ca068e6bf7e288d6836c9b6c4e041f9fa10834e341d6bd2b84f1835ae7e2e2b9` |
| 24 | `theorem` | [adjMatrix_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/adjmatrix-mul-apply--918d823000f8b82f67f4d3ff.md) | 225 | `result-track:918d823000f8b82f67f4d3ffdf41c83f807410a5bad613122e28ccc9291ed9c2` |
| 25 | `theorem` | [mul_adjMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/mul-adjmatrix-apply--fadc1e40ef4325e3e53b7c58.md) | 231 | `result-track:fadc1e40ef4325e3e53b7c58bdaf22f07ea761e9ba8fbab3ce8465faa00eb282` |
| 26 | `theorem` | [trace_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/trace-adjmatrix--ecc1c869f2ad83b1169746e9.md) | 239 | `result-track:ecc1c869f2ad83b1169746e9647af7716db177375c0cade94bf42e82b1ac7947` |
| 27 | `theorem` | [adjMatrix_mul_self_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/adjmatrix-mul-self-apply-self--d866ad313b03bed79c1232c8.md) | 245 | `result-track:d866ad313b03bed79c1232c893b55d27f79d32beb482b77868077b6626554cec` |
| 28 | `theorem` | [adjMatrix_mulVec_const_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/adjmatrix-mulvec-const-apply--0bad4364927155f3c281a3c6.md) | 252 | `result-track:0bad4364927155f3c281a3c6a453e00b5c2797363d3bc3d6b96b755c2d5807ad` |
| 29 | `theorem` | [adjMatrix_mulVec_const_apply_of_regular](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/adjmatrix-mulvec-const-apply-of-regular--88d31d7108fd0d266562276f.md) | 256 | `result-track:88d31d7108fd0d266562276f19457fe083a2a9ea0fce5d2320ece2652d2d1bea` |
| 30 | `theorem` | [adjMatrix_pow_apply_eq_card_walk](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/adjmatrix-pow-apply-eq-card-walk--092bfd25b33784d1e0040009.md) | 261 | `result-track:092bfd25b33784d1e0040009e96beeec1589e863ff750a34b83dd69e829bd541` |
| 31 | `theorem` | [adjMatrix_toGraph_eq](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant3ba912b91602807de72ce5d8f3da0dfe7ffcd37736737c3ebbe530276a4e902a.lean/declarations/adjmatrix-tograph-eq--d587369a5ff4ba6231640989.md) | 292 | `result-track:d587369a5ff4ba6231640989bee820c39dda69d689d9fc61898a67328ada4db5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
