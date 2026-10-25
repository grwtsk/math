# Verification target: GRWTSK.Logic.PortPureTypeSystemMetatheory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8de8bb145fe83a09823295fc275df223f0eac98",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/PortPureTypeSystemMetatheory.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8de8bb145fe83a09823295fc275df223f0eac98`.

Source path: `GRWTSK/Logic/PortPureTypeSystemMetatheory.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/PortPureTypeSystemMetatheory.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.PortPureTypeSystem`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystem.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [liftRen_comp](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/liftren-comp--3403532bb3ba28ed2607be41.md) | 18 | `result-track:3403532bb3ba28ed2607be41683c7011626718c101476e0ce888ccd2f7c21490` |
| 2 | `theorem` | [rename_comp](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/rename-comp--1e27c4204c86b7d44e1c5e49.md) | 24 | `result-track:1e27c4204c86b7d44e1c5e49081856ca33e9c4b1ac903dfb76ea4fa6296c6dcd` |
| 3 | `theorem` | [liftSub_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/liftsub-zero--4d9366ac8a680e594cb0957b.md) | 34 | `result-track:4d9366ac8a680e594cb0957bef6aa0e14c464d8ec52327400a4c4fdfdd4bbd53` |
| 4 | `theorem` | [liftSub_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/liftsub-succ--9c6fb1bc93050992b69246d8.md) | 37 | `result-track:9c6fb1bc93050992b69246d8a9e4bf5c71bd6d1e5c1e0402a9c9d7a46a26626d` |
| 5 | `theorem` | [subst_rename](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/subst-rename--5b83850235a9230c63e49ece.md) | 41 | `result-track:5b83850235a9230c63e49ecec2d8eef96b9561c2abfe4a3615401d52da505ddc` |
| 6 | `theorem` | [rename_subst](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/rename-subst--97975437a39d5be069497eeb.md) | 56 | `result-track:97975437a39d5be069497eeb6d08734d48c01aec769c3877456f27019bfcc8c2` |
| 7 | `theorem` | [subst_subst](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/subst-subst--952326240bf681b1d4729791.md) | 76 | `result-track:952326240bf681b1d4729791cdbc6c111b8f8006cd387ebd97071c07f4d4e40f` |
| 8 | `theorem` | [instantiate_rename](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/instantiate-rename--5b6fc6046b1093e939361e0e.md) | 96 | `result-track:5b6fc6046b1093e939361e0e0e174fe600b8a397cef5be37ae28da8ec7b8b2b5` |
| 9 | `theorem` | [instantiate_subst](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/instantiate-subst--17ed8cdacb54718520ecf96e.md) | 105 | `result-track:17ed8cdacb54718520ecf96e7a7cf4529755d65de477fab4c1fc1bf31a7d4ad5` |
| 10 | `theorem` | [rename](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/rename--7bb23f8a0ef2684530e48dcd.md) | 124 | `result-track:7bb23f8a0ef2684530e48dcdcf9f8edd32a858987860742fb52e747a80102d95` |
| 11 | `theorem` | [subst](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/subst--d0a8a14191bdcfc0d1dcea94.md) | 138 | `result-track:d0a8a14191bdcfc0d1dcea942f654921c90853222da18665803bc164e2537852` |
| 12 | `theorem` | [valid](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/valid--ad4b1a6bee8c8610364f7183.md) | 159 | `result-track:ad4b1a6bee8c8610364f71831de9150730d17ce38c09f963befe837005e401c6` |
| 13 | `theorem` | [legal_valid](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemMetatheory.lean/declarations/legal-valid--bb1f570c6e7f3b2a008861b5.md) | 172 | `result-track:bb1f570c6e7f3b2a008861b5ab1bd7bd389c21d31e228c79d64366cff8b7e777` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
