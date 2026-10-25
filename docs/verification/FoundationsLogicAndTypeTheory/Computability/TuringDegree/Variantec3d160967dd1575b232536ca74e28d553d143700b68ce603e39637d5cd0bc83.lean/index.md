# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.TuringDegree.Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e991c7d5e5e56444220db6e9f415c1102691684f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e991c7d5e5e56444220db6e9f415c1102691684f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean.json)

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
| 1 | `abbrev` | [TuringReducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingreducible--21fd19de86ef625cd5b7aabf.md) | 55 | `declaration-track:21fd19de86ef625cd5b7aabf924bd421ea973a28d70d2446c3c73d4c69cc1c55` |
| 2 | `abbrev` | [TuringEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingequivalent--83e468b3c74a368ba3264084.md) | 61 | `declaration-track:83e468b3c74a368ba3264084fb71a6bce799d96997ce20740d4f9b4b4aefea69` |
| 3 | `lemma` | [Partrec.turingReducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/partrec-turingreducible--eb4ce3db7f8193b6b874b9cd.md) | 70 | `result-track:eb4ce3db7f8193b6b874b9cdbfa9feecd8768cbd23366e1fd5c9a6701bcb93a0` |
| 4 | `lemma` | [TuringReducible.partrec_of_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingreducible-partrec-of-const--c5e7751878caf6699e4fff98.md) | 74 | `result-track:c5e7751878caf6699e4fff981e24cd060ecabfa9b0d185c2218b4cb6a528f831` |
| 5 | `theorem` | [partrec_iff_forall_turingReducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/partrec-iff-forall-turingreducible--44486d023d3ad6f559f7491a.md) | 79 | `result-track:44486d023d3ad6f559f7491ade03bf53ca48200c772e1f74c915073f00ea3205` |
| 6 | `theorem` | [TuringReducible.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingreducible-refl--8e04c5ca874b5fbfd5fa6fd1.md) | 82 | `result-track:8e04c5ca874b5fbfd5fa6fd1fb5e2a6547ac79ed0b84065cd7f9751b0edf7960` |
| 7 | `theorem` | [TuringReducible.rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingreducible-rfl--8574be269795f85eb3d809c7.md) | 83 | `result-track:8574be269795f85eb3d809c778e11fcf154c573a6d604d86e6b79683d640982c` |
| 8 | `theorem` | [TuringReducible.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingreducible-trans--7ba6fd1c6478fb8a261fdfd5.md) | 85 | `result-track:7ba6fd1c6478fb8a261fdfd59393ad26a231184f530dd7e22af49f4b8d1e3935` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/instance--054dc412281a280ddb882200.md) | 88 | `declaration-track:054dc412281a280ddb8822005519fb4a9f6fdc8c6180ef49027598d729eaa9f1` |
| 10 | `theorem` | [TuringEquivalent.equivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingequivalent-equivalence--a26f26371d72c0bdd00ee7a1.md) | 92 | `result-track:a26f26371d72c0bdd00ee7a1ae5fd25b55594f5e20dd535d6ab69657c1ad66d6` |
| 11 | `theorem` | [TuringEquivalent.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingequivalent-refl--b1ed59112b1c530968a30e05.md) | 96 | `result-track:b1ed59112b1c530968a30e059d24466793936980b3234b5dc0fe08a9916173e9` |
| 12 | `theorem` | [TuringEquivalent.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingequivalent-symm--3732b97d80b19dd172a5b944.md) | 100 | `result-track:3732b97d80b19dd172a5b944c1e7d80d3f4bac924c772a29aeed0d96655ba6f3` |
| 13 | `theorem` | [TuringEquivalent.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingequivalent-trans--2824d3168ed8a0597ac20466.md) | 104 | `result-track:2824d3168ed8a0597ac20466d464c4be9c8aa293335b2d620f41fd70990d1370` |
| 14 | `abbrev` | [TuringDegree](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingdegree--11ff708990cd6c002901a82c.md) | 110 | `declaration-track:11ff708990cd6c002901a82c1d114c051ee08ae9aeb1bac29cada4fda46c643d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/instance--eed1c4fda0d25fd10a8dbcbe.md) | 114 | `declaration-track:eed1c4fda0d25fd10a8dbcbe30bd655122ad2998a309c5319c9f3290f98c7821` |
| 16 | `instance` | [TuringDegree.instPartialOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantec3d160967dd1575b232536ca74e28d553d143700b68ce603e39637d5cd0bc83.lean/declarations/turingdegree-instpartialorder--3d16cbb314efd2954addac75.md) | 119 | `declaration-track:3d16cbb314efd2954addac7545d9485849c30abb065fbcbc1e6666eef68ea25a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
