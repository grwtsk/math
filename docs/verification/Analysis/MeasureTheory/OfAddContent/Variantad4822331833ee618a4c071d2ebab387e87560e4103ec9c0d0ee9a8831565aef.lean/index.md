# Verification target: GRWTSK.Analysis.MeasureTheory.OfAddContent.Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b07fafebcc199d07608b2a0dd6ae43c38f7c124",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b07fafebcc199d07608b2a0dd6ae43c38f7c124`.

Source path: `GRWTSK/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.SetSemiring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.AddContent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Trim` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofFunction_eq](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/declarations/offunction-eq--96fa26caca707dca4fd15afd.md) | 51 | `result-track:96fa26caca707dca4fd15afdaad648b787a57ec04d137cfdeffa0f8c7cd3343e` |
| 2 | `theorem` | [inducedOuterMeasure_eq](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/declarations/inducedoutermeasure-eq--7a742e581c137894f9816e6e.md) | 68 | `result-track:7a742e581c137894f9816e6e310bd9e88813b4b762084785b5ee629cc67b4da5` |
| 3 | `theorem` | [isCaratheodory_ofFunction_of_mem](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/declarations/iscaratheodory-offunction-of-mem--85bb32639e89ee60b3342021.md) | 82 | `result-track:85bb32639e89ee60b3342021a591b1657f309b8c078c5dc63826f82d4c658e1d` |
| 4 | `theorem` | [isCaratheodory_inducedOuterMeasure_of_mem](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/declarations/iscaratheodory-inducedoutermeasure-of-mem--c64799a6e1728b9c2e112ff7.md) | 116 | `result-track:c64799a6e1728b9c2e112ff723266805f810f4c7534db4ac604f35a1124cb908` |
| 5 | `theorem` | [isCaratheodory_inducedOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/declarations/iscaratheodory-inducedoutermeasure--0250b6e7e26fee0fe8d640d7.md) | 121 | `result-track:0250b6e7e26fee0fe8d640d7b67a8ceed945b730f11b55357827f827ed4a836f` |
| 6 | `def` | [measureCaratheodory](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/declarations/measurecaratheodory--5bf761a3cb84b101198b0399.md) | 132 | `declaration-track:5bf761a3cb84b101198b0399a1f5ae557bee55ec8ec9067974b692b1cd6b0656` |
| 7 | `theorem` | [measureCaratheodory_eq_inducedOuterMeasure](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/declarations/measurecaratheodory-eq-inducedoutermeasure--9ad7fd2254ce9f79d6996a96.md) | 149 | `result-track:9ad7fd2254ce9f79d6996a96e587a6ea5b45d9cb546b23f786d08b87d1d52140` |
| 8 | `theorem` | [measureCaratheodory_eq](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/declarations/measurecaratheodory-eq--0c32e740a098ed651486bfe6.md) | 154 | `result-track:0c32e740a098ed651486bfe6bce78217ca2c25ae237a18c274e052899ad661bf` |
| 9 | `def` | [measure](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/declarations/measure--834b4fcc741e78ada9c72136.md) | 161 | `declaration-track:834b4fcc741e78ada9c721366957a521ffb99382e2e7319569b84d1110ae0b38` |
| 10 | `theorem` | [measure_eq](../../../../../mathematics/Analysis/MeasureTheory/OfAddContent/Variantad4822331833ee618a4c071d2ebab387e87560e4103ec9c0d0ee9a8831565aef.lean/declarations/measure-eq--a9a2bf1ef3750b9a25f0d170.md) | 169 | `result-track:a9a2bf1ef3750b9a25f0d1709eba7ce7320d7f8a157ac2d7ca15a990de7024c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
