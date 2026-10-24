# Verification target: GRWTSK.Analysis.Matrix.Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "310b7e41131fe4dec43cf89d0e8dabe50cff3c9c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Matrix/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `310b7e41131fe4dec43cf89d0e8dabe50cff3c9c`.

Source path: `GRWTSK/Analysis/Matrix/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Matrix/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Matrix` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [entry_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/entry-norm-bound-of-unitary--05286854fb3453fbdc2b7e2b.md) | 55 | `result-track:05286854fb3453fbdc2b7e2be40b8b477e68d400dea0ecb5bdbf7b4c3dba0387` |
| 2 | `theorem` | [entrywise_sup_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/entrywise-sup-norm-bound-of-unitary--132d1a866adc9dbf3bec02b9.md) | 88 | `result-track:132d1a866adc9dbf3bec02b9860db57e69ee27910af9ab37ce1bcaab20d8d17b` |
| 3 | `def` | [toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/toeuclideanclm--fd91bf4380e0147266fa9f9d.md) | 112 | `declaration-track:fd91bf4380e0147266fa9f9dc2da0a56a70070d8c503e2f4d52148d0dde40c89` |
| 4 | `lemma` | [coe_toEuclideanCLM_eq_toEuclideanLin](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/coe-toeuclideanclm-eq-toeuclideanlin--2b3201dd8069ab51038f6ecf.md) | 119 | `result-track:2b3201dd8069ab51038f6ecf7188ef34a75dc585422aa50e96e531f93ba2465e` |
| 5 | `lemma` | [toEuclideanCLM_piLp_equiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/toeuclideanclm-pilp-equiv-symm--d4ca355ef8d95d25d6f6ed35.md) | 124 | `result-track:d4ca355ef8d95d25d6f6ed352bd52b5da4a94a0cbdc382b30b90a03b2a72225a` |
| 6 | `lemma` | [piLp_equiv_toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/pilp-equiv-toeuclideanclm--9c5e8685086e3c50e1bd0707.md) | 130 | `result-track:9c5e8685086e3c50e1bd07076b91f02262ff8e155a19a8618584f9b434106c14` |
| 7 | `def` | [l2OpNormedAddCommGroupAux](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2opnormedaddcommgroupaux--f2235b4cb68529c2d198855d.md) | 137 | `declaration-track:f2235b4cb68529c2d198855d8dddc039af18ecad86d0c92fb9c0114f801b2c75` |
| 8 | `def` | [l2OpNormedRingAux](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2opnormedringaux--b6f0823e93f48a00a7e9a054.md) | 144 | `declaration-track:b6f0823e93f48a00a7e9a0543311543d952b1aaa80b22c69a7f6c05a05be7e75` |
| 9 | `def` | [instL2OpMetricSpace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/instl2opmetricspace--91a6dc466418405167d25d53.md) | 153 | `declaration-track:91a6dc466418405167d25d537e1755417e5e702bb651ba43a4f5e00538a0bab4` |
| 10 | `def` | [instL2OpNormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/instl2opnormedaddcommgroup--da9355af52b64c00eb2ad7e9.md) | 173 | `declaration-track:da9355af52b64c00eb2ad7e986a3f2b19c2fc6f83805d1c6c37b12b9ee222f66` |
| 11 | `lemma` | [l2_opNorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2-opnorm-def--c372ce5eb561c38ffb60e886.md) | 179 | `result-track:c372ce5eb561c38ffb60e886ee37ea5102a2dbf52d3335a18c7d3993f5362fd1` |
| 12 | `lemma` | [l2_opNNNorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2-opnnnorm-def--da59d66b4c507997603a07da.md) | 182 | `result-track:da59d66b4c507997603a07dac3c91a7663c3a53250febc103ae44c91b4c55efb` |
| 13 | `lemma` | [l2_opNorm_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2-opnorm-conjtranspose--10b96430c88e8ce206732fba.md) | 185 | `result-track:10b96430c88e8ce206732fba00080423f05863c8abebb3b94c03c57431a2ce29` |
| 14 | `lemma` | [l2_opNNNorm_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2-opnnnorm-conjtranspose--1686565d8051aa1aaeec0f0b.md) | 190 | `result-track:1686565d8051aa1aaeec0f0b327743f7504db6e95bcf2a28fdba66ddcf60f10c` |
| 15 | `lemma` | [l2_opNorm_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2-opnorm-conjtranspose-mul-self--228cccd68c5a15d376df31d0.md) | 193 | `result-track:228cccd68c5a15d376df31d04c663ce2d98e8389d55f01c858cc28b76cf8be58` |
| 16 | `lemma` | [l2_opNNNorm_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2-opnnnorm-conjtranspose-mul-self--56393d83a836cf853b98eea8.md) | 199 | `result-track:56393d83a836cf853b98eea8efc7effff428e9b371519f1b1f39da7e374012b9` |
| 17 | `lemma` | [l2_opNorm_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2-opnorm-mulvec--83bb6a620f42644c2b2b7ebc.md) | 203 | `result-track:83bb6a620f42644c2b2b7ebc9b21800b5ff70239c899430e526f530617e1e459` |
| 18 | `lemma` | [l2_opNNNorm_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2-opnnnorm-mulvec--c8f18fa8e3553058a3217cff.md) | 207 | `result-track:c8f18fa8e3553058a3217cffcd82f220545c0954f270eb47de2b463e950680ab` |
| 19 | `lemma` | [l2_opNorm_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2-opnorm-mul--f877890c4081c99c43df2edd.md) | 211 | `result-track:f877890c4081c99c43df2eddf7c0aa049ba764ce4c25020cd61841dc4703fc22` |
| 20 | `lemma` | [l2_opNNNorm_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/l2-opnnnorm-mul--f186beb041be2309e266d87e.md) | 220 | `result-track:f186beb041be2309e266d87ef98d7d78c16b87cbfb8d757b7b068136fb66ac15` |
| 21 | `def` | [instL2OpNormedSpace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/instl2opnormedspace--9d571bbb6391e5320c5c2675.md) | 225 | `declaration-track:9d571bbb6391e5320c5c2675afc812b24f1dcf9e33c84fb8aeef33f68a8d9e34` |
| 22 | `def` | [instL2OpNormedRing](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/instl2opnormedring--47c3febe1ac54727170168c9.md) | 234 | `declaration-track:47c3febe1ac54727170168c9df99455ca21c3dc7ff926a01d5f28817357f1139` |
| 23 | `lemma` | [cstar_norm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/cstar-norm-def--32590fd20354f9b65926abaa.md) | 241 | `result-track:32590fd20354f9b65926abaaf9e0516440e45fb19f226413687cf59a3473d716` |
| 24 | `lemma` | [cstar_nnnorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/cstar-nnnorm-def--e26e6a4a8a2351d665fdde1f.md) | 245 | `result-track:e26e6a4a8a2351d665fdde1f57b8daa21e05f2959c1665cb76ad616ae08dd0d9` |
| 25 | `def` | [instL2OpNormedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/instl2opnormedalgebra--053d16505ebeacc7214b3dde.md) | 249 | `declaration-track:053d16505ebeacc7214b3ddec12cae0c3c867675d45dbf478e7039e3b95ef2f6` |
| 26 | `lemma` | [instCStarRing](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantf69a68095687acca951a4bf7c0fd3f06751ccdb3f4022b7e36e053342723f4e5.lean/declarations/instcstarring--5585cec607afce99a99ce1fe.md) | 256 | `result-track:5585cec607afce99a99ce1feb4b54aa38b788ec03ce769b1a876a430c07d543f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
