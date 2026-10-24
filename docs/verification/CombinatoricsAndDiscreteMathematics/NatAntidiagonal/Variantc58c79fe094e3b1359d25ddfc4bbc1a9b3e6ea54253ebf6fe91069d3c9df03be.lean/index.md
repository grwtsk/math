# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dd962be15d82d98918b8417847fc3ced864a060",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dd962be15d82d98918b8417847fc3ced864a060`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Fin.Tuple` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Tuple` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple--40a8a193a240357bfe7d9ee1.md) | 67 | `declaration-track:40a8a193a240357bfe7d9ee17d6fb059fe85ce976442197c99dea1f6b0f87fd0` |
| 2 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-zero-zero--251a7c1d91e16c41397a8af2.md) | 75 | `result-track:251a7c1d91e16c41397a8af238211cefb9a7a5009e061d5b63e3fa784c1b2663` |
| 3 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-zero-succ--0dd6b8c2c9fc0e24693a7d99.md) | 79 | `result-track:0dd6b8c2c9fc0e24693a7d9941067d23a4053efb3f289a80635cea3998ac30a4` |
| 4 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/mem-antidiagonaltuple--0537f6996437f5d7e0d04636.md) | 82 | `result-track:0537f6996437f5d7e0d0463665644267929083bfb9b6a86de6c44118862c33c5` |
| 5 | `theorem` | [nodup_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/nodup-antidiagonaltuple--974abb5da7a01b8c61ac0fbe.md) | 96 | `result-track:974abb5da7a01b8c61ac0fbef381eb40d8f110908412c3ff8a10e652ca8f2474` |
| 6 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-zero-right--f0e3760888d4705c8f086b9a.md) | 121 | `result-track:f0e3760888d4705c8f086b9a4d994e702d9144469ac5cc2da62298136cfa0724` |
| 7 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-one--9bb7744b2f3b2c6608e75ff4.md) | 129 | `result-track:9bb7744b2f3b2c6608e75ff47f80fd0885781cfd9fffa49ff22ce787b1945e13` |
| 8 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-two--a80e574cfdd75d64033cf78d.md) | 139 | `result-track:a80e574cfdd75d64033cf78d62dd1285553753dc364a0984f48692b407c96295` |
| 9 | `theorem` | [antidiagonalTuple_pairwise_pi_lex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-pairwise-pi-lex--7e85150b0f7d8a8302141748.md) | 146 | `result-track:7e85150b0f7d8a8302141748f1e0f838b8a4528f3c92fd2fb952b25adb92bf4c` |
| 10 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple--3bd349e267bea12f46ec691a.md) | 177 | `declaration-track:3bd349e267bea12f46ec691a2c51c99520f1cf0538866e7351f43bf810c5110b` |
| 11 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-zero-zero--c782bce2582223149073ed4d.md) | 181 | `result-track:c782bce2582223149073ed4d36b567a7b003a32dd5baca409213d0d520201429` |
| 12 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-zero-succ--263f94c01cd50ddd03954480.md) | 185 | `result-track:263f94c01cd50ddd0395448068b14571edb0c8fdab8c3f3e79535ffbed362794` |
| 13 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/mem-antidiagonaltuple--6eff22b4ef5173c3279d6d04.md) | 188 | `result-track:6eff22b4ef5173c3279d6d04fa5b4fbc95e8a05da7bd768d5ea5737c651e7d16` |
| 14 | `theorem` | [nodup_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/nodup-antidiagonaltuple--52afc4f4a60407e3cc849996.md) | 192 | `result-track:52afc4f4a60407e3cc84999636d6913a30e1bd694d2bcc7d6c071bd610d128f0` |
| 15 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-zero-right--d43cc7184e18e021eaa90964.md) | 195 | `result-track:d43cc7184e18e021eaa90964503887ae302bd96297097c9426e30d4ae4fc7c33` |
| 16 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-one--41f1d956c2f79f86df19e6a0.md) | 199 | `result-track:41f1d956c2f79f86df19e6a0eddcdba770707fb494cf43d165f825ce55dc8edf` |
| 17 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-two--aab988808d7c0db11ace7b0c.md) | 202 | `result-track:aab988808d7c0db11ace7b0cd47a76e6fd234beb652a7b4d073eeb9a29699405` |
| 18 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple--65370d27d01f542127448365.md) | 214 | `declaration-track:65370d27d01f5421274483657a5f77155e5ca203a0723d1dc3074fe2707534b3` |
| 19 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-zero-zero--078349cb6739888241dc71d6.md) | 218 | `result-track:078349cb6739888241dc71d6a3d93551376d6d1a7fbe3b5051592270a3ed7eb0` |
| 20 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-zero-succ--be282dba2ad65915f769ed2c.md) | 222 | `result-track:be282dba2ad65915f769ed2ca9776cc00334cfbea259989c5aefd43a96750e63` |
| 21 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/mem-antidiagonaltuple--06985168c55b735804afdff0.md) | 225 | `result-track:06985168c55b735804afdff09ccb387370f2d26ecc0528e15b793dd416166c98` |
| 22 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-zero-right--223bd3e314b03e3eb35570ee.md) | 229 | `result-track:223bd3e314b03e3eb35570ee4bcab02cf1e5717cd58a7b7813b49d172dbb5347` |
| 23 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-one--6bda25489342a6b9b41c2b05.md) | 233 | `result-track:6bda25489342a6b9b41c2b0512c5df11ffb28ea8470f6f56d0e9f65fce5e2dd8` |
| 24 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/antidiagonaltuple-two--0b1e20bfc8e45910da015fb9.md) | 236 | `result-track:0b1e20bfc8e45910da015fb988f7a10e1582a0c7d11bd3961e33e6621bf478b5` |
| 25 | `def` | [sigmaAntidiagonalTupleEquivTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantc58c79fe094e3b1359d25ddfc4bbc1a9b3e6ea54253ebf6fe91069d3c9df03be.lean/declarations/sigmaantidiagonaltupleequivtuple--6d297f09525113e9d4d6da9b.md) | 247 | `declaration-track:6d297f09525113e9d4d6da9b4b3fae9519a8139030c74ce51fff20bc27c70f93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
