# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Basic.Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fc371125e17f87a73b61f69570dc6bf475a6567",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fc371125e17f87a73b61f69570dc6bf475a6567`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean.json)

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
| 1 | `inductive` | [FieldAxiom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/declarations/fieldaxiom--a6c10725698d5e5a6ef9bad5.md) | 42 | `declaration-track:a6c10725698d5e5a6ef9bad5be722342ae392d25b45a7c698eb57e53c5a043c2` |
| 2 | `def` | [FieldAxiom.toSentence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/declarations/fieldaxiom-tosentence--648345293c5c8e5c117b3bdf.md) | 55 | `declaration-track:648345293c5c8e5c117b3bdffd5200a163dd097e02eb1c30ed3653b7184bfdaf` |
| 3 | `def` | [FieldAxiom.toProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/declarations/fieldaxiom-toprop--9947f673c95935d46d492e43.md) | 68 | `declaration-track:9947f673c95935d46d492e4317b74fa6b376c9d99065f3ac0f66ad21b8eba9fd` |
| 4 | `def` | [_root_.FirstOrder.Language.Theory.field](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/declarations/root-firstorder-language-theory-field--40e5cdb2377ac27ff6f4b82f.md) | 81 | `declaration-track:40e5cdb2377ac27ff6f4b82f67af76d6ad3c69805ccd14170e6414ab1b3fd503` |
| 5 | `theorem` | [FieldAxiom.realize_toSentence_iff_toProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/declarations/fieldaxiom-realize-tosentence-iff-toprop--eb62407c4d708a17e0db50a6.md) | 84 | `result-track:eb62407c4d708a17e0db50a67466751ace938d23011edc37a723ae8a4804258f` |
| 6 | `theorem` | [FieldAxiom.toProp_of_model](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/declarations/fieldaxiom-toprop-of-model--49b5fc3a493950f1a47d09da.md) | 91 | `result-track:49b5fc3a493950f1a47d09daffb592519e2f9216f4d0430b743daed3d885f296` |
| 7 | `abbrev` | [fieldOfModelField](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/declarations/fieldofmodelfield--06332b678dbe9b82261be075.md) | 105 | `declaration-track:06332b678dbe9b82261be075af7c6370c0ebcc645599c966f4ac2a530715b242` |
| 8 | `abbrev` | [compatibleRingOfModelField](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/declarations/compatibleringofmodelfield--c1018d8a601aeb820dae75e5.md) | 140 | `declaration-track:c1018d8a601aeb820dae75e5d99e9552f2901a7b8097926025e573fe07e74bc9` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/declarations/instance--aa7abf9e6feb6201fc746a36.md) | 146 | `declaration-track:aa7abf9e6feb6201fc746a36bfd020f9436513bb16df5861d9b50017aa2df660` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
