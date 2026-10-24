# Verification target: GRWTSK.Algebra.LinearAlgebra.Block.Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44ac81479012621f8c9392f74d4b4b77ff43dc22",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44ac81479012621f8c9392f74d4b4b77ff43dc22`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BlockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular--1c038745d7867179ce6a0036.md) | 55 | `declaration-track:1c038745d7867179ce6a003672cb6659728ce0618b8a766f4dc712962e6de1c8` |
| 2 | `theorem` | [BlockTriangular.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-submatrix--247c67b9b5c4301b6b580960.md) | 60 | `result-track:247c67b9b5c4301b6b5809608d25169cbdf9ce1cfcbd1e26c04abfbc523ea6f0` |
| 3 | `theorem` | [blockTriangular_reindex_iff](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-reindex-iff--d55631cd7c7dfacfc14cdd06.md) | 64 | `result-track:d55631cd7c7dfacfc14cdd067e439ed696373acc27fddf00be6877e864f99f2a` |
| 4 | `theorem` | [BlockTriangular.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-transpose--ae73383c9040da432d058bd8.md) | 73 | `result-track:ae73383c9040da432d058bd8d1e8631d5b449022e09e5831478e57b93273f7f4` |
| 5 | `theorem` | [blockTriangular_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-transpose-iff--20d1bffdb5e31ae3f4607b4f.md) | 79 | `result-track:20d1bffdb5e31ae3f4607b4ffe3dae732a52d7019cae841e800cfe318ce2cf3b` |
| 6 | `theorem` | [blockTriangular_zero](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-zero--df57277fa66548230bd1a237.md) | 85 | `result-track:df57277fa66548230bd1a2373707e631ff325184f6ae7f2284af857bd779c5cf` |
| 7 | `theorem` | [BlockTriangular.neg](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-neg--65fbec5cf9037ad933fa445c.md) | 88 | `result-track:65fbec5cf9037ad933fa445ccf21d79384d74f31753fe4bc783ae5c0c3babb56` |
| 8 | `theorem` | [BlockTriangular.add](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-add--9d1a07f8122c6b4677a78456.md) | 92 | `result-track:9d1a07f8122c6b4677a78456ed035083c4d63325c67308bc3708480d9baec238` |
| 9 | `theorem` | [BlockTriangular.sub](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-sub--69dd407379dd053be6fd3aad.md) | 96 | `result-track:69dd407379dd053be6fd3aadfec0b2d3bd23f8299a6aaa226186cd9d66ab89d4` |
| 10 | `theorem` | [blockTriangular_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-diagonal--cc00b96c6d726c5ebb93756a.md) | 106 | `result-track:cc00b96c6d726c5ebb93756a2032c65f06353ca2de4b3eed36aa7a5ca5da28a6` |
| 11 | `theorem` | [blockTriangular_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-blockdiagonal--a04042b71cda112dc318f13f.md) | 110 | `result-track:a04042b71cda112dc318f13fc161721726e1b956c2b08ce4a81eea6602026595` |
| 12 | `theorem` | [blockTriangular_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-blockdiagonal--edd6222afda31e5a28fa39a0.md) | 116 | `result-track:edd6222afda31e5a28fa39a02d181c6428d1fcfe2881d6616626737e027d730b` |
| 13 | `theorem` | [BlockTriangular.mul](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-mul--54e215e12c1e509ed6f51e04.md) | 129 | `result-track:54e215e12c1e509ed6f51e04f3b2a52d8088211e9861fe3eff1f9363a13680e9` |
| 14 | `theorem` | [upper_two_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/upper-two-blocktriangular--e35f9e04ee1f2abc0f1b9f5f.md) | 141 | `result-track:e35f9e04ee1f2abc0f1b9f5f58c2e92072e264bd6f9324e04cc79cba7c28a60b` |
| 15 | `theorem` | [equiv_block_det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/equiv-block-det--f343bd642a4e5522b003a25e.md) | 152 | `result-track:f343bd642a4e5522b003a25ea1ec1d979769ddf860368337ae62b4b2f6f63616` |
| 16 | `theorem` | [det_toSquareBlock_id](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/det-tosquareblock-id--fa806b131790b811efe08fac.md) | 158 | `result-track:fa806b131790b811efe08fac2f79f79830d42e502c99cdbf0b44f8dbc81d451e` |
| 17 | `theorem` | [det_toBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/det-toblock--626b33f5f9525e406d964817.md) | 163 | `result-track:626b33f5f9525e406d964817f47a1ce757e35b5f7cb58811893c81cc003c8ebf` |
| 18 | `theorem` | [twoBlockTriangular_det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/twoblocktriangular-det--0a0d6aadd3fa8efe610415fd.md) | 177 | `result-track:0a0d6aadd3fa8efe610415fd833a1c70c5385f35ef3ed6838611ab32cb39e138` |
| 19 | `theorem` | [twoBlockTriangular_det'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/twoblocktriangular-det--2f9eacd32c219d74a84d36da.md) | 187 | `result-track:2f9eacd32c219d74a84d36dae3fc751d323f4042d3f67e82b4b5ceb85bbaa6d3` |
| 20 | `theorem` | [BlockTriangular.det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-det--fe4ea3138621c5dbac7ad53d.md) | 196 | `result-track:fe4ea3138621c5dbac7ad53da5e421f494757a34dd66eadbb5129a9fa0097c08` |
| 21 | `theorem` | [BlockTriangular.det_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-det-fintype--0a2e341a4bc9a6e3f414f9eb.md) | 229 | `result-track:0a2e341a4bc9a6e3f414f9eb5b8258319f225a791a1962824c8f209f2be7585e` |
| 22 | `theorem` | [det_of_upperTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/det-of-uppertriangular--5d070ebd4aa204b0bfd93f3f.md) | 236 | `result-track:5d070ebd4aa204b0bfd93f3f5a84703ae0a7d7e8fe8fc4bae02b0d8c67298811` |
| 23 | `theorem` | [det_of_lowerTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/det-of-lowertriangular--88a8c5b74d362bf096d9d7f9.md) | 242 | `result-track:88a8c5b74d362bf096d9d7f971ea74ecbd321ad8e04c550e2628d000d505d6d6` |
| 24 | `theorem` | [BlockTriangular.toBlock_inverse_mul_toBlock_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-toblock-inverse-mul-toblock-eq-one--665270332631eb2fb067831b.md) | 251 | `result-track:665270332631eb2fb067831b9f46555d791cd470050e82e787f15b081181819b` |
| 25 | `theorem` | [BlockTriangular.inv_toBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-inv-toblock--ddcc279281143b6586fa2c22.md) | 270 | `result-track:ddcc279281143b6586fa2c22e4d73d5546cea6ade9db8c6bacfd5e3f9ce35f14` |
| 26 | `def` | [BlockTriangular.invertibleToBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-invertibletoblock--a02dd58274e2ae6260413fad.md) | 278 | `declaration-track:a02dd58274e2ae6260413fad83e5ea63f649318913fbd1f08c7ee72972952e0b` |
| 27 | `theorem` | [toBlock_inverse_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/toblock-inverse-eq-zero--042b176edb7f802e1b17d000.md) | 286 | `result-track:042b176edb7f802e1b17d000274d304902bfcf8116add6fc883660a35b2e86b3` |
| 28 | `theorem` | [blockTriangular_inv_of_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean/declarations/blocktriangular-inv-of-blocktriangular--2d5d071fe99ff79c57f6cfb2.md) | 307 | `result-track:2d5d071fe99ff79c57f6cfb243fc114f7422adc951ac011963f1d812c1fcaa00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
