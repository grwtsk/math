# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Lie.Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "429226fca411a93435f6450269f945434acc049f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `429226fca411a93435f6450269f945434acc049f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/instance--bb924e61cb75e7ee783667f2.md) | 36 | `declaration-track:bb924e61cb75e7ee783667f2068337a2ebd3981c3b6534a69812a03c0fdb0237` |
| 2 | `theorem` | [commutator_coe_linear_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/commutator-coe-linear-map--79011e33a643dfa644e856af.md) | 44 | `result-track:79011e33a643dfa644e856af24ee4dcd563fe8ec492522e30a8da17709abaf1f` |
| 3 | `theorem` | [commutator_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/commutator-apply--e33080632d703dabb1bdf1d0.md) | 47 | `result-track:e33080632d703dabb1bdf1d04eed0d438b439d84a6dc75396cb98b945d192016` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/instance--803673edbd39993c7524429c.md) | 50 | `declaration-track:803673edbd39993c7524429c81f832da6768bf23339a00d04e8c1c41bbb135b1` |
| 5 | `instance` | [instLieAlgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/instliealgebra--0501f39440152565107d6a69.md) | 56 | `declaration-track:0501f39440152565107d6a691b0e1475512f0d3bb8fe516226cb09fe4db4fdc6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/instance--c4d2c99eb09931d458a3c71a.md) | 61 | `declaration-track:c4d2c99eb09931d458a3c71a432d518f1fc1bb9456c46248d4e247d218d21263` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/instance--ed2e3dd3790e3292fc597815.md) | 67 | `declaration-track:ed2e3dd3790e3292fc5978153f6d8ed487954f1875dcb0b3c24744afb12462ef` |
| 8 | `lemma` | [bracket_eq_fun](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/bracket-eq-fun--6b639ce024bca8019f6ced49.md) | 72 | `result-track:6b639ce024bca8019f6ced49241fa12766546280146ffbc4580264578ddb6b1a` |
| 9 | `def` | [couple](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/couple--b1493773b5be43bd0df57b6e.md) | 82 | `declaration-track:b1493773b5be43bd0df57b6e1d908892e98f57f34b525bcbd6a20e2cd050a168` |
| 10 | `lemma` | [mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/mem--1008ac916ccfb881634d4a44.md) | 95 | `result-track:1008ac916ccfb881634d4a4497eaf7359bec6977c61b74f7ee705a9bbd4209c6` |
| 11 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/mk--9e58a6143d7d09c4334e9141.md) | 102 | `declaration-track:9e58a6143d7d09c4334e9141054aee198cf65140db8122b430b0a08002f6d678` |
| 12 | `lemma` | [mk_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/mk-left--9d1df19d255b70962c357856.md) | 106 | `result-track:9d1df19d255b70962c3578564d929e915a7afc0e88746444ba344d470238a9da` |
| 13 | `lemma` | [mk_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/mk-right--1a85f74a947027997be26fbf.md) | 109 | `result-track:1a85f74a947027997be26fbf95a4a3455ce50f1b7a76237c8ee88057cbd3c33b` |
| 14 | `lemma` | [apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/ProofTheory/Lie/Variant8428bae7bea1fdcf8b7abf8fc3d401c56bb229ea91c7b8763ebe65b7857e09ce.lean/declarations/apply--aab11955b1154029f234d6e4.md) | 112 | `result-track:aab11955b1154029f234d6e48e5f5bc485a230925d63661e9fa580e4b6236ea1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
