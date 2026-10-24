# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d429f61bc7c296bd85ba94fbda9ca2395031d93f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d429f61bc7c296bd85ba94fbda9ca2395031d93f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean.json)

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
| 1 | `theorem` | [entry_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/entry-norm-bound-of-unitary--5d2830deda521c67a371bf0b.md) | 57 | `result-track:5d2830deda521c67a371bf0b994994dd9e2c205d10ff88be7dfc48fe14920ced` |
| 2 | `theorem` | [entrywise_sup_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/entrywise-sup-norm-bound-of-unitary--7d5ed99975c7da8bb0daa70d.md) | 90 | `result-track:7d5ed99975c7da8bb0daa70d061e3044596300a35a235dc88b2f7afa17088a03` |
| 3 | `def` | [toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/toeuclideanclm--79052779ac4717e4fe9623a9.md) | 111 | `declaration-track:79052779ac4717e4fe9623a9355a6e17f242b9361dca3d1c20b48609a1301aec` |
| 4 | `lemma` | [continuous_uncurry_toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/continuous-uncurry-toeuclideanclm--ec5c47dca510079789940f19.md) | 119 | `result-track:ec5c47dca510079789940f19c823f6222d0b6705f9256392218f81eefe91a490` |
| 5 | `lemma` | [coe_toEuclideanCLM_eq_toEuclideanLin](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/coe-toeuclideanclm-eq-toeuclideanlin--f896140d08d927ed49e60ad3.md) | 131 | `result-track:f896140d08d927ed49e60ad3028df81902310d03154637f8cd2fe28e174eacb7` |
| 6 | `lemma` | [toEuclideanCLM_toLp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/toeuclideanclm-tolp--cf39aec7428a770ca799e011.md) | 136 | `result-track:cf39aec7428a770ca799e0118d1acf21ded2ba0242a6214b7c4af0c355adc494` |
| 7 | `lemma` | [ofLp_toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/oflp-toeuclideanclm--80c4bece0c0df44fdda4aa06.md) | 140 | `result-track:80c4bece0c0df44fdda4aa06a7ddce52c56b7d14fe1a2a5d5e62309db1c51cc5` |
| 8 | `lemma` | [inner_toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/inner-toeuclideanclm--0293ee886d5ac9f6015b0530.md) | 144 | `result-track:0293ee886d5ac9f6015b05301c00d0a527adf45fa8c338cfd3b867310291ea75` |
| 9 | `def` | [l2OpNormedAddCommGroupAux](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2opnormedaddcommgroupaux--721f7d6b4d1af59624df254d.md) | 161 | `declaration-track:721f7d6b4d1af59624df254dd5b7839029116dd29227e3fbd29526bd4f35c042` |
| 10 | `def` | [l2OpNormedRingAux](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2opnormedringaux--8d88908ef31e4c7ff888a331.md) | 169 | `declaration-track:8d88908ef31e4c7ff888a33124e4f94ad560146dfbb5aa0de940a9a023f2a39b` |
| 11 | `def` | [instL2OpMetricSpace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/instl2opmetricspace--06e1573de429bd1e9b161591.md) | 179 | `declaration-track:06e1573de429bd1e9b161591eecdfb80ad468524014987ed02dd715d9c440a19` |
| 12 | `def` | [instL2OpNormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/instl2opnormedaddcommgroup--9aa7a01d570386eb746b4ff0.md) | 200 | `declaration-track:9aa7a01d570386eb746b4ff0b3faec165a3fc3e2c012174868c9a4c61e48021c` |
| 13 | `lemma` | [l2_opNorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnorm-def--34cde3561e7400a6619cd605.md) | 206 | `result-track:34cde3561e7400a6619cd6058f90c1eb26b3a1902918d5d983b9d368102e1e20` |
| 14 | `lemma` | [l2_opNNNorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnnnorm-def--04576d6a0b9229e34e9e1e14.md) | 209 | `result-track:04576d6a0b9229e34e9e1e1434e0206c0e211502c9352f642c7dafcc5c61eca5` |
| 15 | `lemma` | [l2_opNorm_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnorm-conjtranspose--4bc1d83398235b4458010dcb.md) | 212 | `result-track:4bc1d83398235b4458010dcb2135e8cfca6f8dc271ace71e6624a2aa6da5b338` |
| 16 | `lemma` | [l2_opNNNorm_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnnnorm-conjtranspose--cda18e88aa414f46d1afbcc6.md) | 217 | `result-track:cda18e88aa414f46d1afbcc62589694c573a44575b13640424babcbd322daa26` |
| 17 | `lemma` | [l2_opNorm_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnorm-conjtranspose-mul-self--79ecf20db44183772b9444c6.md) | 220 | `result-track:79ecf20db44183772b9444c6d4e3d1617bd952df4d6aa14b761e4e8136f1fbb3` |
| 18 | `lemma` | [l2_opNNNorm_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnnnorm-conjtranspose-mul-self--3715561b4cd7a5967a5b6a45.md) | 226 | `result-track:3715561b4cd7a5967a5b6a4502b7d0df42579b84857efa1921f1a52c4405ebfd` |
| 19 | `lemma` | [l2_opNorm_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnorm-mulvec--f80437d9c3e45b4dd2343dbe.md) | 230 | `result-track:f80437d9c3e45b4dd2343dbefa84f53440081a7de0a3eff15e325083922d33d0` |
| 20 | `lemma` | [l2_opNNNorm_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnnnorm-mulvec--9b3756eb38c5280ee0d1c92c.md) | 234 | `result-track:9b3756eb38c5280ee0d1c92cb40ec226585fe0f94c53f6fb3d2c6e7720f5ea8a` |
| 21 | `lemma` | [l2_opNorm_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnorm-mul--f421990d13e9a1a306dad202.md) | 238 | `result-track:f421990d13e9a1a306dad202dec298ecf0450377c32ffc731b1c926b39ec6431` |
| 22 | `lemma` | [l2_opNNNorm_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnnnorm-mul--d08577bf31e06bc47aed3fa7.md) | 247 | `result-track:d08577bf31e06bc47aed3fa7fb72c1dc027c8c5d680186aba97331bcb52d73b9` |
| 23 | `lemma` | [l2_opNorm_toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnorm-toeuclideanclm--ad0a733acc70b8c2c6b02a3d.md) | 250 | `result-track:ad0a733acc70b8c2c6b02a3d37e528ee9e28df5f36b95eb4266c2a20ed324be0` |
| 24 | `lemma` | [l2_opNorm_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnorm-diagonal--5558961dcb212b3db7568df2.md) | 254 | `result-track:5558961dcb212b3db7568df2c5019687fdce058344c7fefe1788dad7f339fe1c` |
| 25 | `lemma` | [l2_opNNNorm_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/l2-opnnnorm-diagonal--5a250454d996564f66503634.md) | 270 | `result-track:5a250454d996564f6650363440b7e64790ac760ce11bc935e02eb11edaca92d5` |
| 26 | `def` | [instL2OpNormedSpace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/instl2opnormedspace--520c2a08264b199a88e7d478.md) | 276 | `declaration-track:520c2a08264b199a88e7d47879438b5310476d68b213007b1c864372ed7f43b5` |
| 27 | `def` | [instL2OpNormedRing](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/instl2opnormedring--22f44269f3f38480496308b5.md) | 286 | `declaration-track:22f44269f3f38480496308b569a5c3e6109fb09ca7591aaa8cf60501b718595d` |
| 28 | `lemma` | [cstar_norm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/cstar-norm-def--759b5a1f73724245736785c1.md) | 293 | `result-track:759b5a1f73724245736785c19c43692014253b5480ee274770b0accbd24e8819` |
| 29 | `lemma` | [cstar_nnnorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/cstar-nnnorm-def--5c3fb9bc0c4c723f22e12bbf.md) | 297 | `result-track:5c3fb9bc0c4c723f22e12bbfaa5bb1fdbbde937478728b659164d429b45f8a0e` |
| 30 | `def` | [instL2OpNormedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/instl2opnormedalgebra--92e17ed8caeca4d7d7644c2c.md) | 302 | `declaration-track:92e17ed8caeca4d7d7644c2c3be853f12e56a6a880be4648f7dba8dcf3fd5b12` |
| 31 | `lemma` | [instCStarRing](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/instcstarring--9994c8d4bce22ea35d65b0f1.md) | 309 | `result-track:9994c8d4bce22ea35d65b0f1d8b7dfaef4100e3e9925fb77bf4f1a9464e5c014` |
| 32 | `def` | [instCStarAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant49be5575ebe47da7d2c701c5766ae585eead53231a34971be3011e40bbac1d13.lean/declarations/instcstaralgebra--fecb4c72feafcf034c2b5048.md) | 315 | `declaration-track:fecb4c72feafcf034c2b5048f3b8934f9a2128cc4186aca49485efcdeb3a3af8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
