# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c98782cf659799977b317b398241a3d6f0e16fad",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c98782cf659799977b317b398241a3d6f0e16fad`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasBracketAux](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/hasbracketaux--7b2b51f5bd391e17c3436b52.md) | 45 | `declaration-track:7b2b51f5bd391e17c3436b522389717c22c11d1431dd454a772399656775de05` |
| 2 | `instance` | [lieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/lieringmodule--5d011a36d7764c5455fc13ef.md) | 49 | `declaration-track:5d011a36d7764c5455fc13efeef05c971dfb72b306263351ca3b17d3c81e5416` |
| 3 | `instance` | [lieModule](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/liemodule--13fb1f1d794063170e35ad6d.md) | 68 | `declaration-track:13fb1f1d794063170e35ad6defe7be5fe5a28871db5edaf274ade5a9d2d2c74b` |
| 4 | `theorem` | [lie_tmul_right](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/lie-tmul-right--5e5a0f98b7ef688be9791986.md) | 76 | `result-track:5e5a0f98b7ef688be9791986bbbce2bb53892f7a9057454bd86181e902a5e9ac` |
| 5 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/lift--027cf9c8694ccd0d9cb20b05.md) | 85 | `declaration-track:027cf9c8694ccd0d9cb20b05c6743f5ec9ac43b472d5e65c0cf2adf08e1b260f` |
| 6 | `theorem` | [lift_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/lift-apply--0d909d4a19ac5c2ed57ec555.md) | 95 | `result-track:0d909d4a19ac5c2ed57ec5555365c6632c9ce965c9c09d51bc96a99319cfb112` |
| 7 | `def` | [liftLie](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/liftlie--e96abd9aa087599589b795d6.md) | 102 | `declaration-track:e96abd9aa087599589b795d6d30c6a9390812be4cd573a2b0e748dfc734ecd24` |
| 8 | `theorem` | [coe_liftLie_eq_lift_coe](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/coe-liftlie-eq-lift-coe--e32897b359f6bc0a7fa655c4.md) | 107 | `result-track:e32897b359f6bc0a7fa655c4481b7d71535d9ebd67134c44025fd60e9ecbb218` |
| 9 | `theorem` | [liftLie_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/liftlie-apply--a1c794d021dceade9f0e2155.md) | 116 | `result-track:a1c794d021dceade9f0e2155f5ab5d304bc9143043f6efc8baa9b6d3e1a86aae` |
| 10 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/map--852e08211f37b38fc53e1656.md) | 124 | `declaration-track:852e08211f37b38fc53e16562cbba7b23177d88d2697cf747549332249f4a427` |
| 11 | `theorem` | [toLinearMap_map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/tolinearmap-map--158f20d6d4b9376bf9c78c16.md) | 136 | `result-track:158f20d6d4b9376bf9c78c161268e5e5051c55db03ca504480dc6721faac68b9` |
| 12 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/map-tmul--5d28cdd66cf8f9f4daafbaa5.md) | 143 | `result-track:5d28cdd66cf8f9f4daafbaa5ac4074d2a0ac7918d297cc0df385b40315fdbe01` |
| 13 | `def` | [mapIncl](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/mapincl--b38e01a51f59ec211ae45dd1.md) | 148 | `declaration-track:b38e01a51f59ec211ae45dd1f091f9a8ae7590727b47fa27f987dfb4de9f2c3f` |
| 14 | `theorem` | [mapIncl_def](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/mapincl-def--c1bc708af4ceb720a5c63a98.md) | 152 | `result-track:c1bc708af4ceb720a5c63a9813942f245ccb62972c914591a2c4c3775c108a51` |
| 15 | `def` | [toModuleHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/tomodulehom--c5aaaba2fff7c02435b07c17.md) | 169 | `declaration-track:c5aaaba2fff7c02435b07c175f57bff5854d05cb965453f0e1c72ac1e5f33795` |
| 16 | `theorem` | [toModuleHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/tomodulehom-apply--c8b87847f43ae31c8eef58fa.md) | 175 | `result-track:c8b87847f43ae31c8eef58fa52fa8279c73779ed23eaf62725bd15bd85ee28d5` |
| 17 | `theorem` | [lieIdeal_oper_eq_tensor_map_range](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Variant42a982b87b95190df15fe7e9b320e7e8d670671ad4806b52310c027a4f02f34b.lean/declarations/lieideal-oper-eq-tensor-map-range--776a12c5a29e686038db0ab8.md) | 200 | `result-track:776a12c5a29e686038db0ab8fc365376bc3dd865eee250c817e22363eae40751` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
