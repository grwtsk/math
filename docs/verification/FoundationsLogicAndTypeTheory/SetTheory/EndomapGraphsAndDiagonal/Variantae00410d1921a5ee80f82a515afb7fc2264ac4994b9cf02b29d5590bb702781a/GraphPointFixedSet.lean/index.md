# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.EndomapGraphsAndDiagonal.Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.GraphPointFixedSet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e9bdabbe976b1b89742488367aba415cc2d172f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean/index.md) · [Full source](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e9bdabbe976b1b89742488367aba415cc2d172f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Profiles` — import line 18; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GraphPointRecord](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean/declarations/graphpointrecord--b1c327303806a090871fe565.md) | 41 | `declaration-track:b1c327303806a090871fe565c8a877d0bb689d65f169eca843ab47049d90fe76` |
| 2 | `def` | [graphPointRepresentation](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean/declarations/graphpointrepresentation--389eda63b038e5d6e2275c9f.md) | 46 | `declaration-track:389eda63b038e5d6e2275c9f11da42a505dffee23c0c9ebab7ee2243b2e2a20e` |
| 3 | `def` | [executeGraphPoint](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean/declarations/executegraphpoint--bae5f7fd8013f210a7701a08.md) | 53 | `declaration-track:bae5f7fd8013f210a7701a0897099d3a5ce0c6db377ffc92a2aa8ebf50db4859` |
| 4 | `theorem` | [executeGraphPoint_represents](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean/declarations/executegraphpoint-represents--ebd7533420340c65bf669c8a.md) | 58 | `result-track:ebd7533420340c65bf669c8a2cb2941d8634ecb9e04c0adc89a2829238cdde15` |
| 5 | `theorem` | [executeGraphPoint_liesOnDiagonal_iff_fixed](../../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/EndomapGraphsAndDiagonal/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/GraphPointFixedSet.lean/declarations/executegraphpoint-liesondiagonal-iff-fixed--cf6247ffa14e735ca79aada4.md) | 66 | `result-track:cf6247ffa14e735ca79aada4ace8935eca92f383614cdaedfd046caec6b330de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
