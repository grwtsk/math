# Verification target: GRWTSK.Algebra.LinearAlgebra.AdjMatrix.Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ade766ef29a6190377730797996b4bedae00d7e0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ade766ef29a6190377730797996b4bedae00d7e0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity.WalkCounting` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAdjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/isadjmatrix--4bc8b1ef428a447b35e6a40a.md) | 58 | `declaration-track:4bc8b1ef428a447b35e6a40a48442c8288ccdb7abd1262fb00d10b476f57a950` |
| 2 | `theorem` | [apply_diag_ne](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/apply-diag-ne--aca9c14cbc9b9988dc5b365c.md) | 68 | `result-track:aca9c14cbc9b9988dc5b365c584b9a1ddcc1bc4baba1ff209e54d05cc9b32a61` |
| 3 | `theorem` | [apply_ne_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/apply-ne-one-iff--d90d9af2225dd38a58971e9a.md) | 72 | `result-track:d90d9af2225dd38a58971e9a6b150124d0b9146b95b65a36a944e2c01a4c9a9c` |
| 4 | `theorem` | [apply_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/apply-ne-zero-iff--534a1398d122ebd70eb57c9b.md) | 76 | `result-track:534a1398d122ebd70eb57c9b09fbdb069688c2822c822a450f929241c8b739ab` |
| 5 | `def` | [toGraph](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/tograph--ee9459e66204b9e20e11a179.md) | 82 | `declaration-track:ee9459e66204b9e20e11a1795c6967cddd14d4b1ac70fa0824feac1e209d7eb3` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/instance--eefb4cf99869bd5ab8fc138c.md) | 87 | `declaration-track:eefb4cf99869bd5ab8fc138ce1792fa7d53c0917c7d0db95429dab49586bb6f9` |
| 7 | `def` | [compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/compl--f0c73e3a5b2486030c33defa.md) | 96 | `declaration-track:f0c73e3a5b2486030c33defab1818b8d290f288229bca68d3dacbe13ff9995fd` |
| 8 | `theorem` | [compl_apply_diag](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/compl-apply-diag--1f52c36dcb76ec49f7ae7a9b.md) | 104 | `result-track:1f52c36dcb76ec49f7ae7a9ba04f775e3ee5bbcbf37cc9409ab727f8a1d55da6` |
| 9 | `theorem` | [compl_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/compl-apply--1ee762b93184bf986189d329.md) | 107 | `result-track:1ee762b93184bf986189d329b0dfc5f0998c34c717dd5d94bb779b79ffab1715` |
| 10 | `theorem` | [isSymm_compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/issymm-compl--2c4c1c7de0bc7c60351504af.md) | 112 | `result-track:2c4c1c7de0bc7c60351504af0b9024cc5a955202b941082159849f93c57da64d` |
| 11 | `theorem` | [isAdjMatrix_compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/isadjmatrix-compl--bde8d9151cb419ac8ea1161e.md) | 117 | `result-track:bde8d9151cb419ac8ea1161e54809d5de1ee5ef83f02357f309c4563e86a8f56` |
| 12 | `theorem` | [compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/compl--6593f2ba1d0b761224ab7467.md) | 125 | `result-track:6593f2ba1d0b761224ab7467402a9358cc6a8a4c0eb9190a568893bd9d3f9b4c` |
| 13 | `theorem` | [toGraph_compl_eq](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/tograph-compl-eq--2c15d8f6763db8bdec1994c8.md) | 128 | `result-track:2c15d8f6763db8bdec1994c80b1e12560e3d8a4c1d1db65f6c82897fcda13f80` |
| 14 | `def` | [adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/adjmatrix--fe4c568d94315f397d3767da.md) | 148 | `declaration-track:fe4c568d94315f397d3767da8acf7611d2fb23ae45eaff13d151bf1e5b2bfb90` |
| 15 | `theorem` | [adjMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/adjmatrix-apply--e43041539de12761def7b47a.md) | 153 | `result-track:e43041539de12761def7b47ac6b74a508405d312208f2d3cbfa0567ae76c7bc4` |
| 16 | `theorem` | [transpose_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/transpose-adjmatrix--265bad1a8ad94da4941cb9ee.md) | 158 | `result-track:265bad1a8ad94da4941cb9eea74a7ef8aa6e7450571f6139cc6729f6bb43b199` |
| 17 | `theorem` | [isSymm_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/issymm-adjmatrix--42d2f643d04f502ffa7492c8.md) | 163 | `result-track:42d2f643d04f502ffa7492c8a53ccb152682903d815334231b7b38857aa760ab` |
| 18 | `theorem` | [isAdjMatrix_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/isadjmatrix-adjmatrix--9bd6b4d9bd946cf52320fd38.md) | 170 | `result-track:9bd6b4d9bd946cf52320fd387e17bc5e84c2e9aa7be6b785530c3717648f67fd` |
| 19 | `theorem` | [toGraph_adjMatrix_eq](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/tograph-adjmatrix-eq--7539b89d6bd1514eeeaa9605.md) | 174 | `result-track:7539b89d6bd1514eeeaa9605b217d56f29ebb9de0417233150c389bc3b9516fc` |
| 20 | `theorem` | [one_add_adjMatrix_add_compl_adjMatrix_eq_allOnes](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/one-add-adjmatrix-add-compl-adjmatrix-eq-allones--70ab4edccc97b83094bbf363.md) | 183 | `result-track:70ab4edccc97b83094bbf363838f1c3570cf60a7e6533642c495a998be8d96e4` |
| 21 | `theorem` | [adjMatrix_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/adjmatrix-dotproduct--bb6eb0c604960c08784d2f21.md) | 195 | `result-track:bb6eb0c604960c08784d2f217bb747f7db3e713e786471765b670f6d44e4a1aa` |
| 22 | `theorem` | [dotProduct_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/dotproduct-adjmatrix--5177a0ae2f2abb7243b56cac.md) | 200 | `result-track:5177a0ae2f2abb7243b56cacf52364bcd31994bae09a1ab25ef9727d4f2c42ff` |
| 23 | `theorem` | [adjMatrix_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/adjmatrix-mulvec-apply--20f467dbf28505e7d845675c.md) | 205 | `result-track:20f467dbf28505e7d845675c1ae11f2ccb742bb83b3214d3b29c38db2a0fb946` |
| 24 | `theorem` | [adjMatrix_vecMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/adjmatrix-vecmul-apply--20cc681eff4ba958a16bc408.md) | 210 | `result-track:20cc681eff4ba958a16bc408a3014490f6b7c79f55b625f1fa4aec7676a9e35e` |
| 25 | `theorem` | [adjMatrix_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/adjmatrix-mul-apply--5659eb8779afe10f8854a725.md) | 217 | `result-track:5659eb8779afe10f8854a72597a1447722a3c8b2ed59cc9546d3d3e76db3cffe` |
| 26 | `theorem` | [mul_adjMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/mul-adjmatrix-apply--a45a821462772b4877f040a5.md) | 222 | `result-track:a45a821462772b4877f040a5cc91c6d211c0be50079adc3c5712ec72d8d618aa` |
| 27 | `theorem` | [trace_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/trace-adjmatrix--2a7f702c3bae3937e5be678e.md) | 228 | `result-track:2a7f702c3bae3937e5be678e38f845d8fec9e0ad6644e5f4f2c189d7ed9c1e8e` |
| 28 | `theorem` | [adjMatrix_mul_self_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/adjmatrix-mul-self-apply-self--138aaaff1c4e66309a08be0c.md) | 231 | `result-track:138aaaff1c4e66309a08be0c52f751e6352818f49143823eb4eb2711fd4bd423` |
| 29 | `theorem` | [adjMatrix_mulVec_const_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/adjmatrix-mulvec-const-apply--6320c99d621bc72461232407.md) | 236 | `result-track:6320c99d621bc72461232407733b292f2c825a0f70956743ef8d2f392730d208` |
| 30 | `theorem` | [adjMatrix_mulVec_const_apply_of_regular](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/adjmatrix-mulvec-const-apply-of-regular--0f76cf27dc047894e26586e4.md) | 239 | `result-track:0f76cf27dc047894e26586e47f7c5d878d4d032945983e7799d01e88260045ea` |
| 31 | `theorem` | [adjMatrix_pow_apply_eq_card_walk](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/adjmatrix-pow-apply-eq-card-walk--31043c9991a9c3bdd213dddd.md) | 243 | `result-track:31043c9991a9c3bdd213dddd5421dd7dbeee138837d050bef112a2ba05bd93f7` |
| 32 | `theorem` | [dotProduct_mulVec_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/dotproduct-mulvec-adjmatrix--09723d224d66dfa7dab1c56e.md) | 263 | `result-track:09723d224d66dfa7dab1c56e689957e4d51862315c652636a0df4a67184de58a` |
| 33 | `theorem` | [adjMatrix_toGraph_eq](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant44f2faec1cd7ffd8362f3e520ceb7b3aae2756939d1a153338ad0d85820acaa0.lean/declarations/adjmatrix-tograph-eq--8f59b4c1a0e6644ebff295cf.md) | 277 | `result-track:8f59b4c1a0e6644ebff295cf5b294ca48dfd29b09921d85773ad53084347c795` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
