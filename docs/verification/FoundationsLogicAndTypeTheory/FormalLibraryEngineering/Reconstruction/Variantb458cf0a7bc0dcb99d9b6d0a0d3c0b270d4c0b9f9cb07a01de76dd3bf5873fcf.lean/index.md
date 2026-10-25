# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reconstruction.Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d953cf6b81e915e501942f53aa23c2dbcd4f5dd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d953cf6b81e915e501942f53aa23c2dbcd4f5dd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [downwardClosure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/declarations/downwardclosure--179ab38d9073b7a3985fd385.md) | 28 | `declaration-track:179ab38d9073b7a3985fd385aeb41732171f9c6482e93b03f69f30cf2d0272ae` |
| 2 | `theorem` | [mem_downwardClosure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/declarations/mem-downwardclosure--a7ffe2a17b29212b0067451d.md) | 32 | `result-track:a7ffe2a17b29212b0067451db5582f119e3f6f145257d505edcc04b7d17336d9` |
| 3 | `theorem` | [restriction_subset_block](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/declarations/restriction-subset-block--051636004672b04569dfcebc.md) | 36 | `result-track:051636004672b04569dfcebc37a3e0cb56965f4c3c768108e4c99934819b7da2` |
| 4 | `theorem` | [restriction_mem_downwardClosure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/declarations/restriction-mem-downwardclosure--3052f48560489a904e8ca07d.md) | 39 | `result-track:3052f48560489a904e8ca07d0665ad0177194dc1631bb0669826f9443bdc0380` |
| 5 | `theorem` | [reconstruct_of_cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/declarations/reconstruct-of-cover--5d8bc172d57b2cfacf8af194.md) | 45 | `result-track:5d8bc172d57b2cfacf8af1945c3451ebe3ecc94fae7b2eb4632bf6acc127544c` |
| 6 | `theorem` | [mem_reconstruction_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/declarations/mem-reconstruction-iff--3e6cf68075cc3f779b8259eb.md) | 56 | `result-track:3e6cf68075cc3f779b8259ebefe47f90f40b068104dc9ddbb62f12e4d88d84bb` |
| 7 | `theorem` | [empty_mem_downwardClosure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/declarations/empty-mem-downwardclosure--d64125687de96d71eefe345e.md) | 67 | `result-track:d64125687de96d71eefe345e8d9c8a442ad93ddffeef3c8428349535bf4c1501` |
| 8 | `theorem` | [image_restriction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/declarations/image-restriction--ca2f3a30265d69800ca86d06.md) | 73 | `result-track:ca2f3a30265d69800ca86d064cbbee03fb114d12da4f4cec65f71857699e4bca` |
| 9 | `theorem` | [image_difference](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/declarations/image-difference--fa5bfad7a24963d78647783c.md) | 77 | `result-track:fa5bfad7a24963d78647783cd7308175be820bfa7683db29ebcd57d1bcda098f` |
| 10 | `theorem` | [image_cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/declarations/image-cover--bcd4c3281dfa651afe64b7f8.md) | 88 | `result-track:bcd4c3281dfa651afe64b7f8334534c01e9848f957779cff918b5ba23404c7d0` |
| 11 | `theorem` | [equiv_reconstruct_of_cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reconstruction/Variantb458cf0a7bc0dcb99d9b6d0a0d3c0b270d4c0b9f9cb07a01de76dd3bf5873fcf.lean/declarations/equiv-reconstruct-of-cover--927d05148ca79b182242f2db.md) | 95 | `result-track:927d05148ca79b182242f2db563ffd1b4974594efe541a1166af7390807d57e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
