# Verification target: GRWTSK.Algebra.LinearAlgebra.Grading.Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3558f2b162920cd80d79725aa6d3a8fb5d72bacf",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3558f2b162920cd80d79725aa6d3a8fb5d72bacf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evenOdd](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/evenodd--808118bf73f4a68540d21d1f.md) | 32 | `declaration-track:808118bf73f4a68540d21d1f6afc8ad72e2ea92684185c214b2b14cee9ac590f` |
| 2 | `theorem` | [one_le_evenOdd_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/one-le-evenodd-zero--a8be9b236ad758d3a5e1f9c8.md) | 36 | `result-track:a8be9b236ad758d3a5e1f9c8aa50547eab95f45bc03360dab014f99d4216925e` |
| 3 | `theorem` | [range_ι_le_evenOdd_one](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/range-le-evenodd-one--0e80763ddf322f27eeea1809.md) | 41 | `result-track:0e80763ddf322f27eeea18091dbed9169ca9739b4a0d6eb8a92967af5fffa9e4` |
| 4 | `theorem` | [ι_mem_evenOdd_one](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/mem-evenodd-one--9963ce00259245b010fc1333.md) | 46 | `result-track:9963ce00259245b010fc1333fd68e9f877ed462b5db02eec34f66a3de16e6448` |
| 5 | `theorem` | [ι_mul_ι_mem_evenOdd_zero](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/mul-mem-evenodd-zero--5935e7829da3bb86ce7df049.md) | 50 | `result-track:5935e7829da3bb86ce7df0495c87ce6e24518f9058473c8a7067cf5e28dc3c31` |
| 6 | `theorem` | [evenOdd_mul_le](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/evenodd-mul-le--2bc9edd5294435c7445e7622.md) | 59 | `result-track:2bc9edd5294435c7445e76229e6fbc6c3c104f614f8462e5cd396489753e4b42` |
| 7 | `instance` | [evenOdd.gradedMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/evenodd-gradedmonoid--014f719272383c57eede69e6.md) | 71 | `declaration-track:014f719272383c57eede69e66747d0b50543f14be26cffc54b58495c6180537a` |
| 8 | `def` | [GradedAlgebra.ι](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/gradedalgebra--f84cd32c9d2c2dd80f484420.md) | 79 | `declaration-track:f84cd32c9d2c2dd80f4844203b5e2eac13203d836f5dad3c7c3793ac6a9a6ee2` |
| 9 | `theorem` | [GradedAlgebra.ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/gradedalgebra-apply--3699ac4e22191325d5008b6f.md) | 83 | `result-track:3699ac4e22191325d5008b6f90e604e52c08d03878cc79f3eb253e4d8854ff52` |
| 10 | `theorem` | [GradedAlgebra.ι_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/gradedalgebra-sq-scalar--b9ddad13046d7e12fd361cc3.md) | 88 | `result-track:b9ddad13046d7e12fd361cc3d12863b1a6d2a3c880c355cb7350832ca6ed6217` |
| 11 | `theorem` | [GradedAlgebra.lift_ι_eq](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/gradedalgebra-lift-eq--818bb4aada25412ba2b3711d.md) | 94 | `result-track:818bb4aada25412ba2b3711da024202b0e9ab1396b15ee7d235745ecebdeb4a7` |
| 12 | `instance` | [gradedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/gradedalgebra--7a857f0b8a8303c92ecee388.md) | 128 | `declaration-track:7a857f0b8a8303c92ecee388a9fc2290698b1ebcfcb8a387721638fef68090ce` |
| 13 | `theorem` | [iSup_ι_range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/isup-range-eq-top--57ba50add4579c9f8d12af2d.md) | 143 | `result-track:57ba50add4579c9f8d12af2d69875ad3a6c425503f834ac2d42efe3d7174129b` |
| 14 | `theorem` | [evenOdd_isCompl](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/evenodd-iscompl--f4130e736828cc7548a93a3f.md) | 155 | `result-track:f4130e736828cc7548a93a3fa9eb8ac8099185ec5dd74c2266a2babdc6599ca0` |
| 15 | `theorem` | [evenOdd_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/evenodd-induction--2c0e24601493ac3f998875ba.md) | 165 | `result-track:2c0e24601493ac3f998875baf400aa0f2be7e70bc852ff5b05a00f9967ac14ad` |
| 16 | `theorem` | [even_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/even-induction--36e3ed00d0152bed996b867f.md) | 234 | `result-track:36e3ed00d0152bed996b867f93a06b16f2bde85634066a89246f0797e4a819c1` |
| 17 | `theorem` | [odd_induction](../../../../../mathematics/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/declarations/odd-induction--ebeff096a356e488b24d7482.md) | 251 | `result-track:ebeff096a356e488b24d74829a9e3ea3d189dee05e189f33f8c21e2ca184fe2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
