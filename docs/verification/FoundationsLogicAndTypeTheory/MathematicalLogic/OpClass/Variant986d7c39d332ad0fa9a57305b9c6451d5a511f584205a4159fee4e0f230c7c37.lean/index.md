# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OpClass.Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6427c0f58778410b7a899b6e3af4e80213b1ef01",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6427c0f58778410b7a899b6e3af4e80213b1ef01`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSymmOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean/declarations/issymmop--8ace212b909065f0832f3f38.md) | 30 | `declaration-track:8ace212b909065f0832f3f38f19674af17a0c6a69b6bfddd099b96b0b9cf47b7` |
| 2 | `class` | [LeftCommutative](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean/declarations/leftcommutative--7edc2807d74f1b6064ba0d82.md) | 36 | `declaration-track:7edc2807d74f1b6064ba0d826d390302d5f5d5b82497b43af57a0b1689870409` |
| 3 | `class` | [RightCommutative](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean/declarations/rightcommutative--0701e63646b69d7cc0700873.md) | 42 | `declaration-track:0701e63646b69d7cc07008734c1b0ba7fc291c66f630493bf535a431c8d80b36` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean/declarations/instance--acdc0c4aff33880e01362aa4.md) | 46 | `declaration-track:acdc0c4aff33880e01362aa46ea0eaf5b8b29686829b3821d037cc57e190e698` |
| 5 | `theorem` | [IsSymmOp.flip_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean/declarations/issymmop-flip-eq--b57f3c352a6d3fe04bd05f6f.md) | 49 | `result-track:b57f3c352a6d3fe04bd05f6f6926a5f8af90a8426424e6facaca6d65917b3b63` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean/declarations/instance--4e8302f672c54058bdd00e50.md) | 52 | `declaration-track:4e8302f672c54058bdd00e50edfdaaf5dbd8231068a0b43c4036487b3c860189` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean/declarations/instance--5572a0f57327220c5080b3e4.md) | 55 | `declaration-track:5572a0f57327220c5080b3e4d6478396dc0d1c39ee320492eba8775ac102b6f6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean/declarations/instance--0cbdff4dededc091739a55ea.md) | 58 | `declaration-track:0cbdff4dededc091739a55ea9785e8e26e296297a10cd394e5d59e7368255f01` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OpClass/Variant986d7c39d332ad0fa9a57305b9c6451d5a511f584205a4159fee4e0f230c7c37.lean/declarations/instance--e89d624d62e88c11e9f5c234.md) | 61 | `declaration-track:e89d624d62e88c11e9f5c234d630cfe9e5357a8c38e2f3c8e7da4a6c1017b804` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
