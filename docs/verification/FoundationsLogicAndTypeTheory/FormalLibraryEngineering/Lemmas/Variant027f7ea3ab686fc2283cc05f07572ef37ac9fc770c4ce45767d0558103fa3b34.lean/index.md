# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36829758f9c916aacd5eb8db626fb001477f69ae",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36829758f9c916aacd5eb8db626fb001477f69ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Ext` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [instMonadLiftTOfMonadLift_instMonadLiftTOfPure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/declarations/instmonadlifttofmonadlift-instmonadlifttofpure--093aa695d41bfa207142474c.md) | 25 | `result-track:093aa695d41bfa207142474c3dad6ce4aa04b6702f1b812be15801420ece642b` |
| 2 | `theorem` | [monadLift_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/declarations/monadlift-map--270e3c3ba7c4d37ef14c1f6b.md) | 36 | `result-track:270e3c3ba7c4d37ef14c1f6b0f47d8fbfb844da3b6fe7675cbce894e4e4fd08e` |
| 3 | `theorem` | [monadLift_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/declarations/monadlift-seq--5de5f9bde501d45ce2b15c96.md) | 41 | `result-track:5de5f9bde501d45ce2b15c96a5270106ac66eb5f6a868963591182bdc06baf2e` |
| 4 | `theorem` | [monadLift_seqLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/declarations/monadlift-seqleft--05e0cccc9f07eccd231b71bd.md) | 45 | `result-track:05e0cccc9f07eccd231b71bdecd5684d4193ecac4e47eacd3fde7d8c157cf9f4` |
| 5 | `theorem` | [monadLift_seqRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/declarations/monadlift-seqright--19a9416dece947c13baea8b2.md) | 49 | `result-track:19a9416dece947c13baea8b2c0b43d74ece6b6c27c337a47d21a6bd0c5886a52` |
| 6 | `theorem` | [liftM_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/declarations/liftm-pure--35067401ca4ab93524e1147f.md) | 56 | `result-track:35067401ca4ab93524e1147f60506b4c27aaa3a46cb65ca7bb3eadd4f311add1` |
| 7 | `theorem` | [liftM_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/declarations/liftm-bind--70cec780392b707f4e621d5a.md) | 60 | `result-track:70cec780392b707f4e621d5a99cf94f1ff12c832b3a14f7042169599a08bd09d` |
| 8 | `theorem` | [liftM_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/declarations/liftm-map--8cda63bcbd774e83c4a2435d.md) | 65 | `result-track:8cda63bcbd774e83c4a2435dbf3d9370cea788ae94e15b11d9de8c0a87060ff8` |
| 9 | `theorem` | [liftM_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/declarations/liftm-seq--61e1a62b1c3b9a5e6c6fcaa0.md) | 70 | `result-track:61e1a62b1c3b9a5e6c6fcaa0970fa1613d3d0c85ae875230ab940b10e0869688` |
| 10 | `theorem` | [liftM_seqLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/declarations/liftm-seqleft--c155d5e090e482f17db615d6.md) | 75 | `result-track:c155d5e090e482f17db615d68fd3d48d8599f129938ed00580b1481f8c6280fb` |
| 11 | `theorem` | [liftM_seqRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34.lean/declarations/liftm-seqright--76a2000e2fe2033431691f37.md) | 80 | `result-track:76a2000e2fe2033431691f370a4bc8a06700af5810f8f0a27cb42efa8a3fb4de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
