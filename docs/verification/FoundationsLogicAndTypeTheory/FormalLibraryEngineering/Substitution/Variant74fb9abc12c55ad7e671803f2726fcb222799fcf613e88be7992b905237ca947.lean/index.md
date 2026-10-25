# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Substitution.Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "650bdea7fa30785d195ce0a4d61468adc88a4c3e",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `650bdea7fa30785d195ce0a4d61468adc88a4c3e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Congruence` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/compsub--617aa7252dd78351808f7bb5.md) | 23 | `declaration-track:617aa7252dd78351808f7bb58d386dab5a3aa1ca6c217eef56d24bc9ea663137` |
| 2 | `theorem` | [subst_compSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/subst-compsub--d19d8ecd5189dd14dc733acb.md) | 24 | `result-track:d19d8ecd5189dd14dc733acbe1235fe8452e06d655526b35bd96fede1148992f` |
| 3 | `theorem` | [lift_comp_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/lift-comp-cons--41dfad79bc463755fcc25482.md) | 26 | `result-track:41dfad79bc463755fcc2548210a5d148f6e007a1bab4fb3f300b043f51d6aad2` |
| 4 | `theorem` | [raise_subst_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/raise-subst-cons--958c17530b70b79c85abdb88.md) | 31 | `result-track:958c17530b70b79c85abdb88611650a72684e4ac9bef124e6e7878c8061b9846` |
| 5 | `theorem` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/lift--4dd784980b550350bb22931d.md) | 41 | `result-track:4dd784980b550350bb22931d1fd2d9dd76b4b130118c772429648d3ffa19104f` |
| 6 | `def` | [GoodReplacement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/goodreplacement--f70023d741b1faf9eb565506.md) | 56 | `declaration-track:f70023d741b1faf9eb5655066c48f923c1a0cf0be9f9d711beaf2269897dd519` |
| 7 | `theorem` | [goodReplacement_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/goodreplacement-lift--7c628dbc79bfd94a0827c37c.md) | 61 | `result-track:7c628dbc79bfd94a0827c37c3d10165de42a0c5b50cc3b5f087a6b2bdb22bf12` |
| 8 | `theorem` | [neutral_readGood](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/neutral-readgood--216f5eb15b425ef0d8bc03ef.md) | 96 | `result-track:216f5eb15b425ef0d8bc03ef47aca596b8081581325860b627d8d5d197897a3d` |
| 9 | `theorem` | [sort_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/sort-val-retarget--32858aeef171d3fe30baa7b9.md) | 123 | `result-track:32858aeef171d3fe30baa7b9f9e7970b4c3b25263bf98fa8f10378721e975203` |
| 10 | `theorem` | [lookup_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/lookup-val-retarget--6a768700f5a20136c9481f3f.md) | 132 | `result-track:6a768700f5a20136c9481f3f237796ee7129c4fa55830dec5248a28ee9480fe4` |
| 11 | `theorem` | [abstractionAction_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/abstractionaction-retarget--e3fcfb980149317e90edf212.md) | 141 | `result-track:e3fcfb980149317e90edf2123116f696064b32fd115a1e04a5755aed8878cc9e` |
| 12 | `theorem` | [abstraction_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/abstraction-val-retarget--8b9150ca8fbb74edf7e42ec4.md) | 173 | `result-track:8b9150ca8fbb74edf7e42ec44f085ed79d86ca4617d0c12292248d7e91c95ee7` |
| 13 | `theorem` | [product_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/product-val-retarget--c3fcd7230026e32a20239367.md) | 186 | `result-track:c3fcd7230026e32a2023936716aad9bf8535a4b8182e4cbde7ff343eac1ef556` |
| 14 | `theorem` | [application_val_retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/application-val-retarget--ff326b1b94376b4941e85a77.md) | 203 | `result-track:ff326b1b94376b4941e85a77259a8fb1bd9192bb45957b5266a72cd00c7f350d` |
| 15 | `theorem` | [preEvaluate_retarget_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/preevaluate-retarget-val--c58bfb7fe85b91cca4ffa5a6.md) | 221 | `result-track:c58bfb7fe85b91cca4ffa5a6ad939f3761656e1b1a8cbbc91191f7db1348c2cc` |
| 16 | `theorem` | [preEvaluate_retarget_parameter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/preevaluate-retarget-parameter--52d5cae29522df058082cb46.md) | 243 | `result-track:52d5cae29522df058082cb460b7b041691eb66076e7960bbba9ce4f749235113` |
| 17 | `structure` | [Assigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/assigned--4056b95e8d6d27e7002236f3.md) | 256 | `declaration-track:4056b95e8d6d27e7002236f3656bb305138fb27ff755445333e7ebf2cd858828` |
| 18 | `theorem` | [raw_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/raw-eq--ccceb4640ff00088b4de5aad.md) | 267 | `result-track:ccceb4640ff00088b4de5aadc7e3d08725250181d508341c2f4e3b6963b320be` |
| 19 | `theorem` | [normal_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/normal-eq--d0f2cafb6178f2f91180a2ac.md) | 270 | `result-track:d0f2cafb6178f2f91180a2aceb815fa3f38797636e2c20084f443df6939d3ee1` |
| 20 | `theorem` | [cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/cons--29b5feeca7fec304d3daf542.md) | 274 | `result-track:29b5feeca7fec304d3daf54228a3c7ca6a25888c7f743be31e5cd2bb298650b7` |
| 21 | `theorem` | [preEvaluate_read_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/preevaluate-read-outside--98e34db673826c198bfa00af.md) | 312 | `result-track:98e34db673826c198bfa00afb0551eb1227155f6fdaaedd84a23c8f326d2a55c` |
| 22 | `theorem` | [preEvaluate_neutral_read_inactive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/preevaluate-neutral-read-inactive--4f76dcf2f065c8d83d8747a7.md) | 329 | `result-track:4f76dcf2f065c8d83d8747a7503b1d05d121ed86004b8a28b36578413491a3f8` |
| 23 | `theorem` | [readGood_outside](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/readgood-outside--633c37eaf2feafdac0552a60.md) | 352 | `result-track:633c37eaf2feafdac0552a603debe72fd9f2389f669a4627d5ac48dd4534dc4d` |
| 24 | `abbrev` | [ProductGood](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/productgood--d8fdc80772b80ac9915666f3.md) | 363 | `declaration-track:d8fdc80772b80ac9915666f35d2dc326d18de9363cee420a1028aee14b60fcbf` |
| 25 | `theorem` | [goodness_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/goodness-subst--d8f88d020c63e867458bb358.md) | 370 | `result-track:d8f88d020c63e867458bb358a106b7f2a9afc9d07a8dc9b57f6cac68ea8ccece` |
| 26 | `theorem` | [baseRead_substitution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/baseread-substitution--5cdb292bb5170fd9e29404f2.md) | 495 | `result-track:5cdb292bb5170fd9e29404f2e411d440c1fa02b827fe06b32994c8fba0b4d1e8` |
| 27 | `theorem` | [preEvaluate_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/preevaluate-subst--a9beb1eb937085c131f3663d.md) | 530 | `result-track:a9beb1eb937085c131f3663d441dfe7e581d36102104dbfc63a5556e11aa2b15` |
| 28 | `theorem` | [comp_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/comp-single--bdd60c5dec9d7a4e6a994719.md) | 666 | `result-track:bdd60c5dec9d7a4e6a9947195ff90a2017d97ba23423f68e25a315f1e54e4d06` |
| 29 | `def` | [single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/single--34e39062e1bd3381ca1d91bf.md) | 675 | `declaration-track:34e39062e1bd3381ca1d91bfdd83334ac5bd26baa6e5ef65ae67b798a0fdbf7a` |
| 30 | `theorem` | [goodness_recontext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/goodness-recontext--2c82fb475a0840b98366c7a9.md) | 697 | `result-track:2c82fb475a0840b98366c7a913885412564448b86627f8e9d07a73b7f2dd8c30` |
| 31 | `theorem` | [single_guard](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/single-guard--6f987782ff1bfd33827bbcb5.md) | 732 | `result-track:6f987782ff1bfd33827bbcb5f173c2b5c965d389f7f7bec52d03f9816fe72dc7` |
| 32 | `theorem` | [single_goodReplacement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/single-goodreplacement--63cd98d502473845beac835a.md) | 744 | `result-track:63cd98d502473845beac835af5911d09d1424cba8d9267fb7d619b616ae47dae` |
| 33 | `theorem` | [single_assigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean/declarations/single-assigned--c471ec1650c12dd85bf4be93.md) | 758 | `result-track:c471ec1650c12dd85bf4be93ac666c5af84f78e275a0295db39023e09ddf12d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
