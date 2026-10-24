# Verification target: GRWTSK.Algebra.GroupTheory.Equidecomp.Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd46e800175d9c983b05bf4beb539d5a7aaff93f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd46e800175d9c983b05bf4beb539d5a7aaff93f`.

Source path: `GRWTSK/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.PartialEquiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDecompOn](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/isdecompon--9226796d4c8d6f41d2796090.md) | 69 | `declaration-track:9226796d4c8d6f41d2796090cda155aa82a71e9805b60211f3bb24f8ed464fa5` |
| 2 | `structure` | [_root_.Equidecomp](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/root-equidecomp--b9f58c0056a7e8f387cbd0a9.md) | 81 | `declaration-track:b9f58c0056a7e8f387cbd0a9c4ad7097eb5565722dc19c23fb56c991b6805a9c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/instance--ec7108b26992ac56ed4d6c8a.md) | 87 | `declaration-track:ec7108b26992ac56ed4d6c8a27334899189649d9dc9bde9f0c36059d8699ed12` |
| 4 | `def` | [witness](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/witness--350937d3cf40851b1f0b5af3.md) | 91 | `declaration-track:350937d3cf40851b1f0b5af388ec9b1b86986f9a4e80853f9bfa6bd5224aa457` |
| 5 | `theorem` | [isDecompOn](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/isdecompon--0a8196022273ce51bb18ed72.md) | 93 | `result-track:0a8196022273ce51bb18ed72009516f3daf14605106f23faf18ff0995ea729c1` |
| 6 | `theorem` | [apply_mem_target](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/apply-mem-target--2fd132402a876a613298d9eb.md) | 96 | `result-track:2fd132402a876a613298d9eb22962f2baf83caea4c82a7263128eec832e18f1a` |
| 7 | `theorem` | [toPartialEquiv_injective](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/topartialequiv-injective--85307f14bb6effcb6b408d94.md) | 99 | `result-track:85307f14bb6effcb6b408d947a5a12d68ec8d040a92358005153d5fe80e32002` |
| 8 | `theorem` | [IsDecompOn.mono](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/isdecompon-mono--83ac3e5d714a0be5a23d9bc1.md) | 103 | `result-track:83ac3e5d714a0be5a23d9bc155a77ecae2008e4a6dab8545b2027d0cba06b6fa` |
| 9 | `def` | [restr](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/restr--4f3cbc28a5706e988a7b864d.md) | 111 | `declaration-track:4f3cbc28a5706e988a7b864d83dd78135bfbdf34a060baedb83992ac5b083199` |
| 10 | `theorem` | [toPartialEquiv_restr](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/topartialequiv-restr--8a2d60a406027fe9b1c4ce35.md) | 117 | `result-track:8a2d60a406027fe9b1c4ce358acd1542b8f6b31b83dff6e40d5b119b9fb85d79` |
| 11 | `theorem` | [source_restr](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/source-restr--4b1571601cd630faf12d7aa7.md) | 120 | `result-track:4b1571601cd630faf12d7aa78044d49d9571ca68b325d03d2a704bf68c6d282a` |
| 12 | `theorem` | [restr_of_source_subset](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/restr-of-source-subset--8da27c036adf0c7a70081a72.md) | 123 | `result-track:8da27c036adf0c7a70081a7212f623f3afdf8fdefe1281d4d2f8e92d3c5ec103` |
| 13 | `theorem` | [restr_univ](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/restr-univ--a58b9069b163080f4cf11712.md) | 129 | `result-track:a58b9069b163080f4cf117129eb08527d4e71be3068fa46ae139af4e8091f20b` |
| 14 | `def` | [refl](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/refl--5853d548f8eed210bfb8cdef.md) | 142 | `declaration-track:5853d548f8eed210bfb8cdefb4c954060b15a598107c2003cad66c00cffae2a2` |
| 15 | `theorem` | [IsDecompOn.comp'](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/isdecompon-comp--b093169810803c96b4b07e35.md) | 149 | `result-track:b093169810803c96b4b07e35bca6564bfed64528c9a19c660265642db1d50b01` |
| 16 | `theorem` | [IsDecompOn.comp](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/isdecompon-comp--07edcd1fe20fe44addc85937.md) | 159 | `result-track:07edcd1fe20fe44addc85937510ab4706578d2440e1d91d841ccbe3baa2c883d` |
| 17 | `def` | [trans](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/trans--bf891efa17b38ebcd987b069.md) | 167 | `declaration-track:bf891efa17b38ebcd987b0699dd3b29a7fa22e41d3df9d5191ea42c953feefa7` |
| 18 | `theorem` | [IsDecompOn.of_leftInvOn](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/isdecompon-of-leftinvon--19787740b4284b383dbe3342.md) | 178 | `result-track:19787740b4284b383dbe334208ce86315f49625be5f2e78e7e92b44372773e7f` |
| 19 | `def` | [symm](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/symm--edbb16d5e906c9d2d9230fc1.md) | 187 | `declaration-track:edbb16d5e906c9d2d9230fc17cffd3d2c0d50725a0feac48b329d0181bd53d5c` |
| 20 | `theorem` | [map_target](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/map-target--969545457dec9805db86052a.md) | 193 | `result-track:969545457dec9805db86052a895d0877d10103c750f0b1de1900e854c1bade62` |
| 21 | `theorem` | [left_inv](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/left-inv--6b2ad55c19d8f8ed13471e54.md) | 196 | `result-track:6b2ad55c19d8f8ed13471e541d2849551bc8674dade1d639608c16f831cb1b14` |
| 22 | `theorem` | [right_inv](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/right-inv--34782788a1078dbf976e5c29.md) | 199 | `result-track:34782788a1078dbf976e5c2947926584f0bf2531dcf3be4b6e998cf010187ced` |
| 23 | `theorem` | [symm_symm](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/symm-symm--9921186208a7f27351d6b71f.md) | 203 | `result-track:9921186208a7f27351d6b71f27c7b3adb477766a9ad57e0000094f432bf8dc30` |
| 24 | `theorem` | [symm_involutive](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/symm-involutive--63cd6e89c2d31f398eb1ca8e.md) | 205 | `result-track:63cd6e89c2d31f398eb1ca8e9654788036e7e6473ced9f82c973c27fddb06691` |
| 25 | `theorem` | [symm_bijective](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/symm-bijective--838bfe128d24db17d77b6efc.md) | 207 | `result-track:838bfe128d24db17d77b6efcac5eb0f7f7ae9d40190231e1791bd187f7241667` |
| 26 | `theorem` | [refl_symm](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/refl-symm--a69c53f09f82ce73b9009a49.md) | 210 | `result-track:a69c53f09f82ce73b9009a4927d4d10a7f701e38712a0d27e1ed80ac321b7654` |
| 27 | `theorem` | [restr_refl_symm](../../../../../mathematics/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/declarations/restr-refl-symm--eb2a47208d220a4f4163e592.md) | 213 | `result-track:eb2a47208d220a4f4163e592e290cfd7d2aeba2a198e83c8a8b137a501a83143` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
