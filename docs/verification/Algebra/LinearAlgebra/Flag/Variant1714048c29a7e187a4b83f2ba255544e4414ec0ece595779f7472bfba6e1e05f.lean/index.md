# Verification target: GRWTSK.Algebra.LinearAlgebra.Flag.Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a95c9ffadc24f04353a36ae5f04ea3e9ea1b50c2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a95c9ffadc24f04353a36ae5f04ea3e9ea1b50c2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.FlagRange` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/flag--2cb2c57b47f1a9719fcf703a.md) | 35 | `declaration-track:2cb2c57b47f1a9719fcf703afe5fb8c8d37e789aad4bc79c97314ed6e4489f2b` |
| 2 | `theorem` | [flag_zero](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/flag-zero--5beb3f2a51686cbdf9c719d1.md) | 39 | `result-track:5beb3f2a51686cbdf9c719d14d0cbe417cafcd2a98477ec972ab99d000599556` |
| 3 | `theorem` | [flag_last](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/flag-last--5a450d2622d770a1f658d2b9.md) | 42 | `result-track:5a450d2622d770a1f658d2b9d563e861f22b787c0bcc19820b4f145c4a02a83e` |
| 4 | `theorem` | [flag_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/flag-le-iff--08f7aef1d8ec50d3e78ef7fb.md) | 45 | `result-track:08f7aef1d8ec50d3e78ef7fb48805e48ce3e1b79d0f82e9ea315cd8de9e244c7` |
| 5 | `theorem` | [flag_succ](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/flag-succ--37ed9f9b0b863e195216ff6d.md) | 49 | `result-track:37ed9f9b0b863e195216ff6d4ca7ad7015d4ec746d4f0625fe4c21b7cd205a8f` |
| 6 | `theorem` | [self_mem_flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/self-mem-flag--6a80cde98bdb384ed72811ce.md) | 54 | `result-track:6a80cde98bdb384ed72811ce7ba2f3953bad75da53e0687c2301e6bb2f776c34` |
| 7 | `theorem` | [self_mem_flag_iff](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/self-mem-flag-iff--a89d0494e8e0148d3c977a5a.md) | 59 | `result-track:a89d0494e8e0148d3c977a5a2e329552268b2d838b0601e56ce7c5c78092c10d` |
| 8 | `theorem` | [flag_mono](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/flag-mono--43488af171543acc1a3f96ac.md) | 64 | `result-track:43488af171543acc1a3f96aca808a7d21cd48da164ff916b12c614df5e4c3b1c` |
| 9 | `theorem` | [isChain_range_flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/ischain-range-flag--e27963f22a903d289a2e752e.md) | 67 | `result-track:e27963f22a903d289a2e752e7333fa9e4afa834c505480c6781daff88c244ec8` |
| 10 | `theorem` | [flag_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/flag-strictmono--cf30aeb74389fb66aadf1341.md) | 71 | `result-track:cf30aeb74389fb66aadf1341c346e2d139915b14bb19601edda0d8307ee66b09` |
| 11 | `theorem` | [flag_le_ker_coord_iff](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/flag-le-ker-coord-iff--4251b88f3dd915935006611d.md) | 81 | `result-track:4251b88f3dd915935006611d7c4cd0723befa303e9dba1a324be27f3f24c0065` |
| 12 | `theorem` | [flag_le_ker_coord](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/flag-le-ker-coord--58291f9934cc729c3b2f5a2f.md) | 85 | `result-track:58291f9934cc729c3b2f5a2ff1a13a43bb8b80eba671083b6809dc4fa2836763` |
| 13 | `theorem` | [flag_covby](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/flag-covby--7b31a2be44daa4f31d0b959e.md) | 96 | `result-track:7b31a2be44daa4f31d0b959ea8473bbb04427c9da39a63e50ca597c5f47c00b2` |
| 14 | `theorem` | [flag_wcovby](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/flag-wcovby--a1e87685e444f424e03efd15.md) | 102 | `result-track:a1e87685e444f424e03efd15a496d3173f3bd5847217fce6c4586d5d0d851c3c` |
| 15 | `def` | [toFlag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/toflag--8aa7e17abb58918b72e738b2.md) | 108 | `declaration-track:8aa7e17abb58918b72e738b279c9d8e9b123900c104ec7d6e6a4191f83e90042` |
| 16 | `theorem` | [mem_toFlag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/mem-toflag--0cf4ca7977c263663f06a03d.md) | 112 | `result-track:0cf4ca7977c263663f06a03de292da7d76b3ec8e43401f13cb53c844ec32c079` |
| 17 | `theorem` | [isMaxChain_range_flag](../../../../../mathematics/Algebra/LinearAlgebra/Flag/Variant1714048c29a7e187a4b83f2ba255544e4414ec0ece595779f7472bfba6e1e05f.lean/declarations/ismaxchain-range-flag--d783ab56ea06c671689f1aa9.md) | 115 | `result-track:d783ab56ea06c671689f1aa99b10473cba69ca76ca8dc67657709dd73a880245` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
