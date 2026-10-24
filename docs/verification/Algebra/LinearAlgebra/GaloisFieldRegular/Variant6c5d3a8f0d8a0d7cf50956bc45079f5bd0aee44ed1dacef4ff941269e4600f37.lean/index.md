# Verification target: GRWTSK.Algebra.LinearAlgebra.GaloisFieldRegular.Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d501631dcaa36963996b1c81b258054c1c4907e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d501631dcaa36963996b1c81b258054c1c4907e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GaloisField` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gf2MatMul](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/gf2matmul--1f8d9e449fe10cad47b28062.md) | 43 | `declaration-track:1f8d9e449fe10cad47b2806235cff713fe7f7185a1f264d7da27db18b783924c` |
| 2 | `def` | [gf2IdentityMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/gf2identitymatrix--b118c1cce7298709c6a94975.md) | 48 | `declaration-track:b118c1cce7298709c6a94975720bad8c86fae7d6b8e2a452ad91b3aa2cc9a991` |
| 3 | `theorem` | [boolMatrixGF2Equiv_identity](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/boolmatrixgf2equiv-identity--cdb17066b63d79ddb07e2437.md) | 52 | `result-track:cdb17066b63d79ddb07e2437c460a2b02efc63c362fd951fa8da88bebd59d9e3` |
| 4 | `theorem` | [gf2MatMul_identity_left](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/gf2matmul-identity-left--b6442ed80019b19ae63bd74d.md) | 60 | `result-track:b6442ed80019b19ae63bd74d7dec4c86d097b42402ca4a19c2614cc0029b083c` |
| 5 | `theorem` | [gf2MatMul_identity_right](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/gf2matmul-identity-right--aebf23aa940b41434e067190.md) | 67 | `result-track:aebf23aa940b41434e067190289c43ffd7abf3bf585b49b389f6b53b9b9debf3` |
| 6 | `theorem` | [gf2MatMul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/gf2matmul-assoc--b35844b50e8ab887846dc0b6.md) | 73 | `result-track:b35844b50e8ab887846dc0b60fd50d4fb486dad3754c853a67228d4468eccae4` |
| 7 | `theorem` | [gf2MatMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/gf2matmul-apply--3f106b8f40077c7ed77bb779.md) | 83 | `result-track:3f106b8f40077c7ed77bb779141c3ee40f0d0a172bfaa19ad12803dc3b91291d` |
| 8 | `def` | [leftMulLinear](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/leftmullinear--db069c7169c8628da315c904.md) | 102 | `declaration-track:db069c7169c8628da315c9043e63afe393f33bf4f944a5e7048e2790cdaffe73` |
| 9 | `theorem` | [leftMulLinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/leftmullinear-apply--463a1842d8d812f933bc6f3b.md) | 106 | `result-track:463a1842d8d812f933bc6f3bd71a24ecb9806521c9ec480765a47e11beaf7e8e` |
| 10 | `def` | [regularMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularmatrix--30aff97467b5587cf8fabbad.md) | 111 | `declaration-track:30aff97467b5587cf8fabbada3c81ef7aee3f69a4ea6ec117b4920e520638600` |
| 11 | `theorem` | [regularMatrix_zero](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularmatrix-zero--ee68bdbf332a0be458c62907.md) | 118 | `result-track:ee68bdbf332a0be458c629076be94cb40d246bc6ed4d8426d87ae6cd9613a127` |
| 12 | `theorem` | [regularMatrix_one](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularmatrix-one--9a1ee4953a9ec99c46d2ead6.md) | 124 | `result-track:9a1ee4953a9ec99c46d2ead61319f1d8d2f4159125e30f4742143417beb60038` |
| 13 | `theorem` | [regularMatrix_add](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularmatrix-add--bcb2ade35255d4e68fa33b59.md) | 129 | `result-track:bcb2ade35255d4e68fa33b59e9a1526e22e9f8c48f774612068a37bd7fd8f3f3` |
| 14 | `theorem` | [regularMatrix_mul](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularmatrix-mul--ef8c3fa73301f2904dcc7fda.md) | 143 | `result-track:ef8c3fa73301f2904dcc7fdac4dcb027d78cc68fdfffc2ad1166db4ec31f0fe0` |
| 15 | `def` | [regularRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularrepresentation--8490bc2e0ff6248b3ee00c08.md) | 153 | `declaration-track:8490bc2e0ff6248b3ee00c086c31a521bca3f14744512def29d9ed3aec0f7d0e` |
| 16 | `theorem` | [regularRepresentation_apply](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularrepresentation-apply--7ec6adbc43638e6492b3f285.md) | 159 | `result-track:7ec6adbc43638e6492b3f2850f056b540fcaf0d2f21fd03f6a676cbc4c29152f` |
| 17 | `theorem` | [regularMatrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularmatrix-injective--98cbdbb22f61a8322f2bdbce.md) | 170 | `result-track:98cbdbb22f61a8322f2bdbceeaec3ce2cc67536377dcf508a40365db70d03bca` |
| 18 | `def` | [regularBinMat](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularbinmat--2b483f9691591ffaf9c28e46.md) | 184 | `declaration-track:2b483f9691591ffaf9c28e460f911e870177a2c6f8177fb68e52b04e30540db6` |
| 19 | `theorem` | [regularBinMat_add](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularbinmat-add--54515afe37da8d4f4364d1d7.md) | 191 | `result-track:54515afe37da8d4f4364d1d7f81e64d4f9ad41c2fc0aeb66cea4ae3b60b965e8` |
| 20 | `theorem` | [regularBinMat_mul](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularbinmat-mul--4caa3463343ee20629692a5a.md) | 201 | `result-track:4caa3463343ee20629692a5a8bf8ab9328e520d9df65e13773a50adad06651b9` |
| 21 | `theorem` | [regularBinMat_one](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularbinmat-one--4bf914edf9216e65e2441d2e.md) | 210 | `result-track:4bf914edf9216e65e2441d2e773f054bcb542b388edcc55bffa7442e34aee025` |
| 22 | `theorem` | [regularBinMat_injective](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularbinmat-injective--de3c8bb0556ed46e48a3e883.md) | 217 | `result-track:de3c8bb0556ed46e48a3e883c858075b59b1353757761dbcc177e412bb59ff5f` |
| 23 | `theorem` | [regularBinMat_inverse](../../../../../mathematics/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/declarations/regularbinmat-inverse--aaf21f14cb67f58e4fe6b94a.md) | 225 | `result-track:aaf21f14cb67f58e4fe6b94a4ad93e63f265d8a8501af0772ecef4e5f00581c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
