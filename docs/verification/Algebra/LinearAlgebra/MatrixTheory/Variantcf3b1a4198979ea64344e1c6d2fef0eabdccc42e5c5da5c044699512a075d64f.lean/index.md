# Verification target: GRWTSK.Analysis.Matrix.Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd4f2a74305ede1d35827fb7ad57733c242a0607",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Matrix/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd4f2a74305ede1d35827fb7ad57733c242a0607`.

Source path: `GRWTSK/Analysis/Matrix/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Matrix/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Matrix` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [entry_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/entry-norm-bound-of-unitary--d59e80e93b8642f090a051fc.md) | 47 | `result-track:d59e80e93b8642f090a051fcaea3c0a1072af3854980b43490dee46ba0785755` |
| 2 | `theorem` | [entrywise_sup_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/entrywise-sup-norm-bound-of-unitary--b0944a5fb75a38bdf72a377c.md) | 80 | `result-track:b0944a5fb75a38bdf72a377c6685ab15f5c71c7c251a72914845938e8c00c40a` |
| 3 | `def` | [toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/toeuclideanclm--879733dd06d46e767852f3e9.md) | 104 | `declaration-track:879733dd06d46e767852f3e998775374b6eab22d1af0d15dbe761002616afd8c` |
| 4 | `lemma` | [coe_toEuclideanCLM_eq_toEuclideanLin](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/coe-toeuclideanclm-eq-toeuclideanlin--3b46539ca7a8919cd3cd94cc.md) | 111 | `result-track:3b46539ca7a8919cd3cd94cc2ecb5797fa56be40ffc4da7676408fe091c3c6a4` |
| 5 | `lemma` | [toEuclideanCLM_piLp_equiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/toeuclideanclm-pilp-equiv-symm--66e8a0e078bcd03fb45523e0.md) | 116 | `result-track:66e8a0e078bcd03fb45523e085f94378047341f4f2418fdcb523acddb776a48d` |
| 6 | `lemma` | [piLp_equiv_toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/pilp-equiv-toeuclideanclm--ffb67b563c6c84601d661c07.md) | 122 | `result-track:ffb67b563c6c84601d661c07a8623cdf0ceb93178f557c6cc2ceef2400a5974c` |
| 7 | `def` | [l2OpNormedAddCommGroupAux](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2opnormedaddcommgroupaux--e343f54f5ba07c4604dccd8b.md) | 129 | `declaration-track:e343f54f5ba07c4604dccd8b2b814231ba4eea6b087af6e498855aad858b5b91` |
| 8 | `def` | [l2OpNormedRingAux](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2opnormedringaux--48630ea3ccaaa054a5b91a5e.md) | 136 | `declaration-track:48630ea3ccaaa054a5b91a5e279cf3572786840cb908b3d6c7a4048f3ee5a983` |
| 9 | `def` | [instL2OpMetricSpace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/instl2opmetricspace--774994bf9cdf8697774722cb.md) | 145 | `declaration-track:774994bf9cdf8697774722cb126dc0ebdd7c535c0a5041e62154ef03bbbe47f8` |
| 10 | `def` | [instL2OpNormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/instl2opnormedaddcommgroup--bf58ec0f86a566d6ae5caa8f.md) | 165 | `declaration-track:bf58ec0f86a566d6ae5caa8f5a2e691bdb61db823306d9b3733f8f7e7bd3c563` |
| 11 | `lemma` | [l2_opNorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2-opnorm-def--f2868c0dbdc7d9341724b558.md) | 171 | `result-track:f2868c0dbdc7d9341724b5589d2630b9f348c5deda9bf998230fcbcede0d9f0d` |
| 12 | `lemma` | [l2_opNNNorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2-opnnnorm-def--4cf0b3e2e1dfdd69d84fe240.md) | 174 | `result-track:4cf0b3e2e1dfdd69d84fe2400eef1da14ad6f8d5166c9f6c9a02db25a63ef496` |
| 13 | `lemma` | [l2_opNorm_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2-opnorm-conjtranspose--73a149ab1748a801f8f9cc81.md) | 177 | `result-track:73a149ab1748a801f8f9cc813bdbbea209fd33a6cdcadcefacb6f0cc1c3af744` |
| 14 | `lemma` | [l2_opNNNorm_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2-opnnnorm-conjtranspose--b695d45b5d438d6a24d15caf.md) | 182 | `result-track:b695d45b5d438d6a24d15caf7b24ecfb130aad244f81694682431686cb0f8a0e` |
| 15 | `lemma` | [l2_opNorm_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2-opnorm-conjtranspose-mul-self--a0df47f4a4e360467e7fe156.md) | 185 | `result-track:a0df47f4a4e360467e7fe1562e16a9af687e3e6401fddf49ff4ac9cb0d6dc662` |
| 16 | `lemma` | [l2_opNNNorm_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2-opnnnorm-conjtranspose-mul-self--320bfd24280b0700c2cb6da7.md) | 191 | `result-track:320bfd24280b0700c2cb6da721e426d81e13983393268888e2b4b36c322bfe06` |
| 17 | `lemma` | [l2_opNorm_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2-opnorm-mulvec--6d16a2970771676231c31238.md) | 195 | `result-track:6d16a2970771676231c31238c2a9a4458dc09e9055a0fd626f2ddea6a8e617dd` |
| 18 | `lemma` | [l2_opNNNorm_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2-opnnnorm-mulvec--b1ea2d6a3d541a37db6e6dc3.md) | 199 | `result-track:b1ea2d6a3d541a37db6e6dc3204f045fe780bd3b031bf9770c0472643ac1ae0f` |
| 19 | `lemma` | [l2_opNorm_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2-opnorm-mul--c8174e795a8bac9548c14266.md) | 203 | `result-track:c8174e795a8bac9548c1426672f9f17e7e59e2e30575e8befc202e14c582cd51` |
| 20 | `lemma` | [l2_opNNNorm_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/l2-opnnnorm-mul--32dbf258e344e73b523c1023.md) | 212 | `result-track:32dbf258e344e73b523c102327031d9fb6a943dc925bda79f8aa47133e306b7e` |
| 21 | `def` | [instL2OpNormedSpace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/instl2opnormedspace--9b889a8fb43911692cedb44b.md) | 217 | `declaration-track:9b889a8fb43911692cedb44b1bbae6d6559ca528d800cd0d148ad1c0917dfc0a` |
| 22 | `def` | [instL2OpNormedRing](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/instl2opnormedring--52912a8bab01a2c688cda5e3.md) | 226 | `declaration-track:52912a8bab01a2c688cda5e303e63806e7e2ed3e9774f6a7dbe8287e5e08ac81` |
| 23 | `lemma` | [cstar_norm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/cstar-norm-def--1498b13d471662049990a4f0.md) | 233 | `result-track:1498b13d471662049990a4f02802320cce2af1b573b16d47deda0581988eaf78` |
| 24 | `lemma` | [cstar_nnnorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/cstar-nnnorm-def--ec570f6549ab68ed962fd584.md) | 237 | `result-track:ec570f6549ab68ed962fd584f4beca329764858d1a70d7e0488ed602cada7b1a` |
| 25 | `def` | [instL2OpNormedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/instl2opnormedalgebra--82c0ef88269b34112c911566.md) | 241 | `declaration-track:82c0ef88269b34112c91156694937445fced1b03d89e6da92f60e7308e919b1f` |
| 26 | `lemma` | [instCStarRing](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean/declarations/instcstarring--4663a00cc07ce0751be7e2e4.md) | 248 | `result-track:4663a00cc07ce0751be7e2e43180791c125a71f28a02ca3dab92b72963fb7923` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
