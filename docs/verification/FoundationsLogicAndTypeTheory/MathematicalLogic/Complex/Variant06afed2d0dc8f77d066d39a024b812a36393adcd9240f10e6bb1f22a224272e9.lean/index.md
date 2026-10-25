# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Complex.Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0776ad1964674d18bf1c9a4941e85da12eef9c4f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0776ad1964674d18bf1c9a4941e85da12eef9c4f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [measureSpace](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9.lean/declarations/measurespace--12f791fec72d54e4f4a7953c.md) | 38 | `declaration-track:12f791fec72d54e4f4a7953c62c44362bdcfec1815d85ed2311e9e2f48d51504` |
| 2 | `def` | [measurableEquivPi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9.lean/declarations/measurableequivpi--3a35e0b9dee6aa13b814ebb0.md) | 43 | `declaration-track:3a35e0b9dee6aa13b814ebb0dda9c09c5b5ca59cbe57bc0b344a6a2a87b30644` |
| 3 | `def` | [measurableEquivRealProd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9.lean/declarations/measurableequivrealprod--ebf0f0903b23cd05c4bc7753.md) | 48 | `declaration-track:ebf0f0903b23cd05c4bc7753ee5ec9c2a4b6e7a3177f1456fd8e5459f9b041d6` |
| 4 | `theorem` | [volume_preserving_equiv_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9.lean/declarations/volume-preserving-equiv-pi--8e2b7bbb905502515028c4aa.md) | 52 | `result-track:8e2b7bbb905502515028c4aaf8080320c0db635d855ad2adaed9410ea7d66ea9` |
| 5 | `theorem` | [volume_preserving_equiv_real_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Complex/Variant06afed2d0dc8f77d066d39a024b812a36393adcd9240f10e6bb1f22a224272e9.lean/declarations/volume-preserving-equiv-real-prod--29483a9b9de8aa255246702a.md) | 56 | `result-track:29483a9b9de8aa255246702ad5ec77a59893d20a9856c7a9ac54a95d19677be3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
