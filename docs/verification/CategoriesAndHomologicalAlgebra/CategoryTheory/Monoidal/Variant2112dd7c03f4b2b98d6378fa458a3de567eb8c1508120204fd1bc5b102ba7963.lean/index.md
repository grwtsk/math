# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "201e37a4b3f3c3e44ec983677edc40cc5c8ba809",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `201e37a4b3f3c3e44ec983677edc40cc5c8ba809`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Dialectica.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/tensorobj--9290e8c7c177fcb03fd72e74.md) | 32 | `declaration-track:9290e8c7c177fcb03fd72e7422f0c9938f2c6e1a9e66e8fdbed77b5485672731` |
| 2 | `def` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/tensorhom--2dbe67114d27b79d837d72c0.md) | 40 | `declaration-track:2dbe67114d27b79d837d72c0dd6df4e1d23ac7b30500c7cdf119f87ed047ec67` |
| 3 | `def` | [tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/tensorunit--285157d68a25fde8c5cb32af.md) | 57 | `declaration-track:285157d68a25fde8c5cb32afbcdc801c270c4aff1e1f8a99943f461c1aec3a0e` |
| 4 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/leftunitor--f9093cc2ffdaf56ab597d816.md) | 60 | `declaration-track:f9093cc2ffdaf56ab597d8167d4ad6c3ca321015a48942ebf9dfe6cb2143e99a` |
| 5 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/rightunitor--723a2e069f31a56a1329ee82.md) | 64 | `declaration-track:723a2e069f31a56a1329ee82e0b79df857875d84fc0bf3d0777f46a62cc51564` |
| 6 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/associator--a3a60ad49f710138543ee487.md) | 69 | `declaration-track:a3a60ad49f710138543ee487d5db481d74c7d169c0bc6bad43366701ba953f07` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/instance--9b3426ca2a23e7a2c5ed3759.md) | 74 | `declaration-track:9b3426ca2a23e7a2c5ed37593fb43023cfb9884e69c4524f63ac6e6963a7702a` |
| 8 | `theorem` | [tensor_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/tensor-id--7182c7264010999f9fb4747d.md) | 84 | `result-track:7182c7264010999f9fb4747d38a5ca7ff515e3a96c1ccbc0c45cc329cd740743` |
| 9 | `theorem` | [tensor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/tensor-comp--48a5abd9fc205212a279dd02.md) | 86 | `result-track:48a5abd9fc205212a279dd02ee03a0a56592c69494142c8d80e0de22d268fbf9` |
| 10 | `theorem` | [associator_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/associator-naturality--b18559f24440bf0ac68dd501.md) | 91 | `result-track:b18559f24440bf0ac68dd50148176be29136459ffbff94307f1b84243f5a1dd5` |
| 11 | `theorem` | [leftUnitor_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/leftunitor-naturality--1b3f8ae181b989991d96bfbd.md) | 96 | `result-track:1b3f8ae181b989991d96bfbd67303c457b51c9031593a3093caa835a4720c552` |
| 12 | `theorem` | [rightUnitor_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/rightunitor-naturality--0bc212c2f40e5f686b08b196.md) | 100 | `result-track:0bc212c2f40e5f686b08b196f6ec80e4e10cb1d97c9d1181c575ea59faa40666` |
| 13 | `theorem` | [pentagon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/pentagon--32fda2f7cd45d2b2792a827a.md) | 104 | `result-track:32fda2f7cd45d2b2792a827a976c9391cafd3a3bf43a624e6072b3e1cf8eb3ce` |
| 14 | `theorem` | [triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/triangle--01597a2bf2312e0feb0d5b7c.md) | 110 | `result-track:01597a2bf2312e0feb0d5b7c16b0c71afebd9ad632a0d32e98b1d103cd83a171` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/instance--4f30aa4bce274500e585e95c.md) | 114 | `declaration-track:4f30aa4bce274500e585e95c5b310461ccbbfe54ada8f2b9adcc38d32381cd66` |
| 16 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/braiding--1ae16ff44aea32b64ec532f4.md) | 125 | `declaration-track:1ae16ff44aea32b64ec532f4a2f0d2d4cd4688e0fda689212067b91794c0de68` |
| 17 | `theorem` | [symmetry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/symmetry--95dd4f0750ce18e47993b2ff.md) | 129 | `result-track:95dd4f0750ce18e47993b2ff706aa334e4339fe477311abdd8debb6ca7453dd4` |
| 18 | `theorem` | [braiding_naturality_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/braiding-naturality-right--5937f538d4a5b9b0b7220034.md) | 132 | `result-track:5937f538d4a5b9b0b7220034e2a1e8b8dc4a8e1cf16aa4acaca3112fcf4f6d1c` |
| 19 | `theorem` | [braiding_naturality_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/braiding-naturality-left--45312dab939865e269667795.md) | 135 | `result-track:45312dab939865e269667795160f6bc02c71d52e8d02957b24d97f4385b1ca7a` |
| 20 | `theorem` | [hexagon_forward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/hexagon-forward--b3917bcb6c2ce1c86bb0cd4a.md) | 138 | `result-track:b3917bcb6c2ce1c86bb0cd4af5625cc632f16f26ab568a57e129aebdee5676f7` |
| 21 | `theorem` | [hexagon_reverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/hexagon-reverse--d0ca7350e72f4dc2e7994644.md) | 143 | `result-track:d0ca7350e72f4dc2e7994644087af6420491331013fdc301b14e66d851a3ff31` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/declarations/instance--dc7b781b065e95f331a502ff.md) | 148 | `declaration-track:dc7b781b065e95f331a502ffb523a52985dd7bd3c0ec356e43e91301d4fe9aac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
