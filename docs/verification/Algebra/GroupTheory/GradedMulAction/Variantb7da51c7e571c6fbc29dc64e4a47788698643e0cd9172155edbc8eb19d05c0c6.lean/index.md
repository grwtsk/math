# Verification target: GRWTSK.Algebra.GroupTheory.GradedMulAction.Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c18189892bc7c12ffcae5a295c61ffbead16fab",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c18189892bc7c12ffcae5a295c61ffbead16fab`.

Source path: `GRWTSK/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GradedMonoid` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/gsmul--a36d5b2cf99c932036f6ad29.md) | 63 | `declaration-track:a36d5b2cf99c932036f6ad29c144bb8f721701f659d7dea4fd1efb0ad78d9bfa` |
| 2 | `instance` | [GMul.toGSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/gmul-togsmul--9c590e2f30f1bb19d867cdb1.md) | 69 | `declaration-track:9c590e2f30f1bb19d867cdb17607c2ac44409c242e2df26fa23e33091d01d31e` |
| 3 | `instance` | [GSmul.toSMul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/gsmul-tosmul--74ec098932670191b71df4cf.md) | 72 | `declaration-track:74ec098932670191b71df4cf0d90e890cdfd43889c41a00498b86a0b7352b281` |
| 4 | `theorem` | [mk_smul_mk](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/mk-smul-mk--cb25d9e1f047d24e74ad42c2.md) | 76 | `result-track:cb25d9e1f047d24e74ad42c2d67ddcc5387117cf5cf26bf7011ae861a7d47a16` |
| 5 | `class` | [GMulAction](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/gmulaction--b5f7a043b45d7858a760a11f.md) | 82 | `declaration-track:b5f7a043b45d7858a760a11fcf20a92e60eb33a205980ec62ac037713deae0a8` |
| 6 | `instance` | [GMonoid.toGMulAction](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/gmonoid-togmulaction--c00956dd06dc0752e96c0c79.md) | 90 | `declaration-track:c00956dd06dc0752e96c0c79f4973c128dff98094c2c1e5c63cb2f8b2cb1328c` |
| 7 | `instance` | [GMulAction.toMulAction](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/gmulaction-tomulaction--1899a4b25868b9308325cc82.md) | 96 | `declaration-track:1899a4b25868b9308325cc822f03eb148dfb79c1e89dc08a35eaee6dc875d0d7` |
| 8 | `class` | [SetLike.GradedSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/setlike-gradedsmul--39e34cf2c12b406d5f77f48e.md) | 115 | `declaration-track:39e34cf2c12b406d5f77f48e278792d6845baf539304a7929604161d46a68728` |
| 9 | `instance` | [SetLike.toGSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/setlike-togsmul--cff0be36c4f75bdd1db0ec94.md) | 121 | `declaration-track:cff0be36c4f75bdd1db0ec94f8cd7ebfe9595e81280ebe5e3f52d0c64ae13d74` |
| 10 | `theorem` | [SetLike.coe_GSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/setlike-coe-gsmul--2d22261a5b9209fba1c86eba.md) | 136 | `result-track:2d22261a5b9209fba1c86ebae18247c58db5c7ec345f669ebf0e15266eb4a56b` |
| 11 | `instance` | [SetLike.GradedMul.toGradedSmul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/setlike-gradedmul-togradedsmul--436013bebf33d899a010606a.md) | 143 | `declaration-track:436013bebf33d899a010606aeda295a9402b5e85803b289999b189a149c6f6e5` |
| 12 | `theorem` | [SetLike.Homogeneous.graded_smul](../../../../../mathematics/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/declarations/setlike-homogeneous-graded-smul--8f0401b9997bcc3b24ec7cd1.md) | 154 | `result-track:8f0401b9997bcc3b24ec7cd1c8a0cde917448b2a92ace0156aa96e822217320d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
