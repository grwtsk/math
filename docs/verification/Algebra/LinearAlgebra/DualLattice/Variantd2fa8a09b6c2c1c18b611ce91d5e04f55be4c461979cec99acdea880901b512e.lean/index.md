# Verification target: GRWTSK.Algebra.LinearAlgebra.DualLattice.Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63811d51628b38bf4be51a08335bb354422c02a4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63811d51628b38bf4be51a08335bb354422c02a4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.Properties` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/declarations/dualsubmodule--a5cb30a0638c2b74be09fd07.md) | 32 | `declaration-track:a5cb30a0638c2b74be09fd07fb8460b7e8e99dc936ed5bab0cb9b618da1d7eb3` |
| 2 | `lemma` | [mem_dualSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/declarations/mem-dualsubmodule--2bdac95332d8b745709ee01c.md) | 41 | `result-track:2bdac95332d8b745709ee01cbe03058fd224ab6bd6ee4ffdcb3c5cec905cc596` |
| 3 | `lemma` | [le_flip_dualSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/declarations/le-flip-dualsubmodule--e1a5a6c767bfa409b707ea80.md) | 44 | `result-track:e1a5a6c767bfa409b707ea8099a5dd034c5e68464e26851ea9bbe93cc0b52c4d` |
| 4 | `def` | [dualSubmoduleParing](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/declarations/dualsubmoduleparing--748d3aff5c44fbe6df75184c.md) | 53 | `declaration-track:748d3aff5c44fbe6df75184cdec3f4f1e56acf5294b6f5dea2f74fe3b3a02d67` |
| 5 | `lemma` | [dualSubmoduleParing_spec](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/declarations/dualsubmoduleparing-spec--811df8ed854011783806987c.md) | 57 | `result-track:811df8ed854011783806987c9d6b8804b34cc1955eb96da83fd07846ba81123b` |
| 6 | `def` | [dualSubmoduleToDual](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/declarations/dualsubmoduletodual--dbb35aa964753ba7aafe3d9c.md) | 65 | `declaration-track:dbb35aa964753ba7aafe3d9c5fa105bbec9e12556c76a9b6d26842e438bab0af` |
| 7 | `lemma` | [dualSubmoduleToDual_injective](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/declarations/dualsubmoduletodual-injective--f3ab48a72fa2ec9fb119e05f.md) | 77 | `result-track:f3ab48a72fa2ec9fb119e05fc43df6620cb961a4e1b6c7373eb1d26e47770c6c` |
| 8 | `lemma` | [dualSubmodule_span_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/declarations/dualsubmodule-span-of-basis--2c16c8ffa94b8492a677258b.md) | 87 | `result-track:2c16c8ffa94b8492a677258bede6fd7f03a53b45cea090c2670cab0e62b54162` |
| 9 | `lemma` | [dualSubmodule_dualSubmodule_flip_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/declarations/dualsubmodule-dualsubmodule-flip-of-basis--d4db03076760b793414ef498.md) | 112 | `result-track:d4db03076760b793414ef49885996a6976f108586c2bcf2b88f0b6fe86c2b200` |
| 10 | `lemma` | [dualSubmodule_flip_dualSubmodule_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/declarations/dualsubmodule-flip-dualsubmodule-of-basis--d89a3b6f0bad08727965fb55.md) | 121 | `result-track:d89a3b6f0bad08727965fb55170a1ab36c56770deacfd0738ef99e281c801721` |
| 11 | `lemma` | [dualSubmodule_dualSubmodule_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/declarations/dualsubmodule-dualsubmodule-of-basis--131c4b45bfd3e40f304641ee.md) | 130 | `result-track:131c4b45bfd3e40f304641eed820c6bc4e15d2567209d88218492fdaf97e55a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
