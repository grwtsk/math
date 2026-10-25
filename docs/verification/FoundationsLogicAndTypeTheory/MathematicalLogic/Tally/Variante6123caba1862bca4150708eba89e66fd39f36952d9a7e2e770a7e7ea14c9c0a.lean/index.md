# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Tally.Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63afe8458c3929dcb0fea26b4c653d8e2a138c59",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63afe8458c3929dcb0fea26b4c653d8e2a138c59`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Tally](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/tally--592e8bc8d33a1aca451a1aa4.md) | 12 | `declaration-track:592e8bc8d33a1aca451a1aa458e95c518a0468c04c7d28eca0be118c1745e7ad` |
| 2 | `def` | [Tally.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/tally-empty--142ea3a423bc93e7f7b36e36.md) | 16 | `declaration-track:142ea3a423bc93e7f7b36e36c335079341b15e3027334c12150053b89e29c750` |
| 3 | `def` | [Tally.ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/tally-ofnat--4d07c061324ce70868f9b629.md) | 19 | `declaration-track:4d07c061324ce70868f9b6292128c2cac89653767b0a5aae656fbefb72bbe252` |
| 4 | `def` | [Tally.append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/tally-append--c003458127f6dace1cf3b909.md) | 22 | `declaration-track:c003458127f6dace1cf3b909f01ff78df0bc6d2c3035538c7a0f674b02c99620` |
| 5 | `theorem` | [Tally.count_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/tally-count-ofnat--743b7f776c05869d36db4f67.md) | 25 | `result-track:743b7f776c05869d36db4f67a0667c060867a79e3d0861a4331b6d5142019e54` |
| 6 | `theorem` | [Tally.ofNat_count](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/tally-ofnat-count--4202e9f221eb5be21150aba0.md) | 29 | `result-track:4202e9f221eb5be21150aba01571738d1689d7696d9a664f099298865d8b7ea2` |
| 7 | `theorem` | [Tally.count_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/tally-count-append--131d3d80f82c794a5343a7d2.md) | 34 | `result-track:131d3d80f82c794a5343a7d270b808585f6b602ed26370416b59ab5c881af2c5` |
| 8 | `def` | [tallyEquivNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/tallyequivnat--4282d766fbfedc9abe234266.md) | 38 | `declaration-track:4282d766fbfedc9abe234266f1e63a6ee98558fb89f847965e321571129e0716` |
| 9 | `structure` | [CertifiedMark](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/certifiedmark--be2c9faa1d77aba22dd94ecd.md) | 44 | `declaration-track:be2c9faa1d77aba22dd94ecddc3be02659651f4acbb8015e09c15db4d76045ba` |
| 10 | `abbrev` | [CertifiedTally](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/certifiedtally--ad8f04961eae4cd87b012891.md) | 54 | `declaration-track:ad8f04961eae4cd87b012891bad1b031ce0d6252d74db1b461f0c0e9503f9dfd` |
| 11 | `def` | [CertifiedTally.appendMark](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/certifiedtally-appendmark--a6ee213f209df6f3af56d8bc.md) | 56 | `declaration-track:a6ee213f209df6f3af56d8bc5a505e358e8571e0bb6aaaadb211f574263fd638` |
| 12 | `theorem` | [CertifiedTally.length_appendMark](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/certifiedtally-length-appendmark--9a98efd5ed453a72b7f8e74a.md) | 61 | `result-track:9a98efd5ed453a72b7f8e74a00ae0011288b8ff74b46040df2858e2462f840d6` |
| 13 | `theorem` | [CertifiedTally.prefix_appendMark](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/certifiedtally-prefix-appendmark--836f8b666d8e41e9c9c463fd.md) | 67 | `result-track:836f8b666d8e41e9c9c463fdcafb184d7b87a606b9170566906f0acac6ec298d` |
| 14 | `def` | [fieldOrdinal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/fieldordinal--c34b267135c7c81892f395db.md) | 74 | `declaration-track:c34b267135c7c81892f395db1bab271a3f950827d89630a93846a329c7188e2e` |
| 15 | `theorem` | [fieldOrdinal_count](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tally/Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a.lean/declarations/fieldordinal-count--c1571611f43a0ce88df2681b.md) | 77 | `result-track:c1571611f43a0ce88df2681ba799fa63de5459b120e3c63823d7ef4a63a74e5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
