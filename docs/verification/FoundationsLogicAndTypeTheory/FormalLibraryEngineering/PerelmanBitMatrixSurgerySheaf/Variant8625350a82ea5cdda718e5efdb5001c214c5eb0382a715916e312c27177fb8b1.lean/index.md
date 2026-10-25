# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PerelmanBitMatrixSurgerySheaf.Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94fbb70a2e350638dd4f7dbe17f5db969d27cded",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94fbb70a2e350638dd4f7dbe17f5db969d27cded`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.FinitePhaseBitmatrixAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Lookup` — import line 7; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Residue` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SurgeryCellKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/surgerycellkind--145982e8a8adb64ee0596c5c.md) | 26 | `declaration-track:145982e8a8adb64ee0596c5c30c03297107a41c469abc77c8937ea54e30b7a8a` |
| 2 | `inductive` | [SurgerySheafClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/surgerysheafclass--a03dad5b646762ffac29e82e.md) | 34 | `declaration-track:a03dad5b646762ffac29e82e4e50804e653f4dfaed8fd5fc51cf8ff99d5320a2` |
| 3 | `structure` | [BitMatrixSurgeryCell](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/bitmatrixsurgerycell--a2dcab66a32c8961d1dfb0b8.md) | 42 | `declaration-track:a2dcab66a32c8961d1dfb0b8c80de518144de0706fcd93a6c3e285c313f37d11` |
| 4 | `def` | [classifySurgeryCell](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/classifysurgerycell--2fd24e8f5de61ed7aad404a6.md) | 51 | `declaration-track:2fd24e8f5de61ed7aad404a6b1075205a408dbaf87eb7fd7778faecfed5df7cb` |
| 5 | `def` | [surgeryCellKindOfBucket](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/surgerycellkindofbucket--39987d92e09ae5c94b8e3c8d.md) | 58 | `declaration-track:39987d92e09ae5c94b8e3c8d7fe51b19419df5517682451c5ee59ade5c6e4ecf` |
| 6 | `def` | [surgeryCellKindForBucket](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/surgerycellkindforbucket--19fcf9d526835d82683fb360.md) | 65 | `declaration-track:19fcf9d526835d82683fb360c25ac317ebb3a9368470c9448583435f9e47463b` |
| 7 | `def` | [residueBitForSurgeryClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/residuebitforsurgeryclass--5c1c871e672e1cb152022636.md) | 69 | `declaration-track:5c1c871e672e1cb1520226362c2a8400bc3c6de9aab8f892f721030e3df9951c` |
| 8 | `def` | [surgeryResidueBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/surgeryresiduebit--186f37ea106ee0544a9870f2.md) | 77 | `declaration-track:186f37ea106ee0544a9870f21e931ae0e8f7961ae86f549b3834afdf5f7f1a1c` |
| 9 | `def` | [residueBitForBucket](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/residuebitforbucket--234a0d935006d29206a0e197.md) | 80 | `declaration-track:234a0d935006d29206a0e19780c9c92b2e02cfaf498f73c9d95b6ed3a022b0bc` |
| 10 | `def` | [mkBitMatrixSurgeryCell](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/mkbitmatrixsurgerycell--c92c2faf96262529eba86c8d.md) | 83 | `declaration-track:c92c2faf96262529eba86c8d15950de1ae263b2294522a2f27237665575bef28` |
| 11 | `def` | [surgeryCellForMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/surgerycellformatrix--3777061e2bcfe14e37b08879.md) | 93 | `declaration-track:3777061e2bcfe14e37b08879363cd39cafc42022af5ac49a36fe5f8b7c6327f8` |
| 12 | `def` | [surgeryCellsFromAllMat2F2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/surgerycellsfromallmat2f2--29c96e6ccb4bef337598f45d.md) | 96 | `declaration-track:29c96e6ccb4bef337598f45d2edf4b492815e5fb3843985990bb1747080bdef5` |
| 13 | `theorem` | [mk_cell_phase_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/mk-cell-phase-eq--67c05e8eeee80b307f56f443.md) | 99 | `result-track:67c05e8eeee80b307f56f443bf832e3dda66d863c2ffd6c485e20b5bb734f3c5` |
| 14 | `theorem` | [mk_cell_bucket_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/mk-cell-bucket-eq--17c6d36c90a301d44efb781b.md) | 103 | `result-track:17c6d36c90a301d44efb781b1aa590946f6329181a36824537526818634a4e26` |
| 15 | `theorem` | [mk_cell_surgeryClass_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/mk-cell-surgeryclass-eq--8f3e6bdf99353d375b857b5f.md) | 108 | `result-track:8f3e6bdf99353d375b857b5f57ce41f162c00b80f3626843a7d2407f14124473` |
| 16 | `theorem` | [mk_cell_residueBit_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/mk-cell-residuebit-eq--18a220642d736d04b376c728.md) | 113 | `result-track:18a220642d736d04b376c728ad0c203ec40bc76e0d35b441e796a23b1695ca0e` |
| 17 | `def` | [perelmanAuthorityResidue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/perelmanauthorityresidue--d4700fcc3cb0daed4f2c5b15.md) | 119 | `declaration-track:d4700fcc3cb0daed4f2c5b159d2d13339b656db6061ea426babec7bceefb3574` |
| 18 | `structure` | [PerelmanBitMatrixSurgerySheafSurface](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/perelmanbitmatrixsurgerysheafsurface--5571a4f5b170e413f67949f0.md) | 125 | `declaration-track:5571a4f5b170e413f67949f052574dd5b763452b95585589ae83727a67bd1ca5` |
| 19 | `def` | [defaultPerelmanBitMatrixSurgerySheafSurface](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/defaultperelmanbitmatrixsurgerysheafsurface--52352b365729f1efe99a3a9d.md) | 136 | `declaration-track:52352b365729f1efe99a3a9d255dbd5526ddf51ac49283187014b5fc9db32bb3` |
| 20 | `structure` | [PreservesBitMatrixSurgerySheaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/preservesbitmatrixsurgerysheaf--b2af50fadfe922e319ae8e34.md) | 147 | `declaration-track:b2af50fadfe922e319ae8e34640bdfe5f1e72e73d64307ee64f6c620073c8c1c` |
| 21 | `theorem` | [zero_bucket_classifies_as_collapse_residue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/zero-bucket-classifies-as-collapse-residue--cd5ce15ae59b0cc9f32a5f90.md) | 162 | `result-track:cd5ce15ae59b0cc9f32a5f90a797afee1f2372edc6388d43bfe653c73183583f` |
| 22 | `theorem` | [identity_bucket_classifies_as_smooth_witness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/identity-bucket-classifies-as-smooth-witness--06614e60fa96a9de7af8e088.md) | 167 | `result-track:06614e60fa96a9de7af8e0885c05880a33e1dcf5541195f789e98a1ad96a31b9` |
| 23 | `theorem` | [rank_one_singular_classifies_as_neck_candidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/rank-one-singular-classifies-as-neck-candidate--501ef8e3b44e9aa08a662f4d.md) | 172 | `result-track:501ef8e3b44e9aa08a662f4d651df53145110cbb546a780f5ef0d09469330589` |
| 24 | `theorem` | [nonidentity_invertible_classifies_as_local_witness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/nonidentity-invertible-classifies-as-local-witness--d8135184621c014ec6387f4f.md) | 177 | `result-track:d8135184621c014ec6387f4f1a58e35c503fe5b46c1f5c11e65d358a87668918` |
| 25 | `theorem` | [perelman_authority_residue_is_open](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/perelman-authority-residue-is-open--aaa13d023bd728c0eac1ccdf.md) | 182 | `result-track:aaa13d023bd728c0eac1ccdfd1c18e64475c20cb8ffa917448ddab9ebd5de1f2` |
| 26 | `theorem` | [perelman_authority_residue_obligation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/perelman-authority-residue-obligation--e36705d642d8ef670d419759.md) | 186 | `result-track:e36705d642d8ef670d41975953abc647c421611049098a03e568085dae6e93ba` |
| 27 | `theorem` | [perelman_authority_residue_status](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/perelman-authority-residue-status--6d37d4ca8ea54b3817ec22fa.md) | 191 | `result-track:6d37d4ca8ea54b3817ec22fa83e56656f17955e1270827bf6296350760d86a00` |
| 28 | `theorem` | [default_surface_has_no_theorem_claim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/default-surface-has-no-theorem-claim--18d8e605ecdc7bf6bd42b2e1.md) | 196 | `result-track:18d8e605ecdc7bf6bd42b2e17af112bb4eb35b6eefbba9dc6e9e983a2fa61992` |
| 29 | `theorem` | [default_surface_retains_perelman_residue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/default-surface-retains-perelman-residue--5cb38f813d6dd4a405756bdd.md) | 200 | `result-track:5cb38f813d6dd4a405756bdda85c2eb9184ba0d8469d0673a8873c5e83630854` |
| 30 | `theorem` | [default_surface_denies_spin4_orbit_claim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/default-surface-denies-spin4-orbit-claim--9a6df283755d27c3fb83a73a.md) | 205 | `result-track:9a6df283755d27c3fb83a73a379468e3e3be3f3379c553047e73b2315d7eb364` |
| 31 | `theorem` | [default_surface_denies_conjugacy_orbit_claim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/default-surface-denies-conjugacy-orbit-claim--4d3e964deb29c9eb0452bc75.md) | 209 | `result-track:4d3e964deb29c9eb0452bc754df707ce86b21d1d2a6e3d7ba29e7e901e6d0f5d` |
| 32 | `theorem` | [default_surface_cell_count](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/default-surface-cell-count--6dff121f268ee542d339122c.md) | 214 | `result-track:6dff121f268ee542d339122c15ac86928eb47097ece67b8524b089c726377565` |
| 33 | `theorem` | [default_surface_cell_count_sixteen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/default-surface-cell-count-sixteen--4103c72d321e855af86c056d.md) | 219 | `result-track:4103c72d321e855af86c056d6d3eb6c3f8215f08f8ca49fe252c64f87b6d72c2` |
| 34 | `theorem` | [finite_surgery_surface_is_not_perelman_theorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/finite-surgery-surface-is-not-perelman-theorem--83c8a452cc1da24b8b99ab74.md) | 223 | `result-track:83c8a452cc1da24b8b99ab74b507b5404ff044bba79e29aee2a6e9d9c7c2add5` |
| 35 | `theorem` | [surgery_sections_glue_unique_finite_surface](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8625350a82ea5cdda718e5efdb5001c214c5eb0382a715916e312c27177fb8b1.lean/declarations/surgery-sections-glue-unique-finite-surface--6f28fd1a581a62ab4bae9068.md) | 231 | `result-track:6f28fd1a581a62ab4bae906849c92e3525617cc5e17079fa72914d9ce10d2988` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
