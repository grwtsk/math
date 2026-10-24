# Verification target: GRWTSK.Analysis.TestFunction.Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b660da006a77c43dceaa911be9518a8cb220a84d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunction/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/index.md) · [Full source](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b660da006a77c43dceaa911be9518a8cb220a84d`.

Source path: `GRWTSK/Analysis/TestFunction/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunction/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimitiveWeilTestFunction](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/declarations/primitiveweiltestfunction--e1d3577998dbc80a9319cc27.md) | 34 | `declaration-track:e1d3577998dbc80a9319cc2763a896383862c962d4e2931dd493a0c4d2653a85` |
| 2 | `instance` | [instCoeFunPrimitiveWeilTestFunction](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/declarations/instcoefunprimitiveweiltestfunction--803ca55d6d5e8301b6e30216.md) | 44 | `declaration-track:803ca55d6d5e8301b6e302162d5b814f2c4b028206eaf256f4095c18c66f0587` |
| 3 | `theorem` | [coe_mk](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/declarations/coe-mk--ea7ebb0d80587f6ecd293f88.md) | 49 | `result-track:ea7ebb0d80587f6ecd293f883935e97e1413b5a77b5d7b3402749bb5fb008f8b` |
| 4 | `theorem` | [continuous](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/declarations/continuous--8288a9f26e4dbe129db59fc2.md) | 56 | `result-track:8288a9f26e4dbe129db59fc2d6851558d662ba32716d604b9ea067074c5c8d06` |
| 5 | `theorem` | [hasCompactSupport](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/declarations/hascompactsupport--16b8f12d15ff44cb840d757c.md) | 60 | `result-track:16b8f12d15ff44cb840d757c5fbe9834fd4338559fdb3b7a1cf856911305edd6` |
| 6 | `theorem` | [integrable](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/declarations/integrable--9ff088c1cd1081bfc9b921c1.md) | 65 | `result-track:9ff088c1cd1081bfc9b921c147b955389e3b9c8700d3a1337d8479dabec77978` |
| 7 | `theorem` | [locallyIntegrable](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/declarations/locallyintegrable--ac9f12da76fa31930d2d89ef.md) | 69 | `result-track:ac9f12da76fa31930d2d89ef75c92c8e5304955c2cc708a2d55deeea0c2f5d9b` |
| 8 | `def` | [star](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/declarations/star--f4a009e59fcff5132803bd74.md) | 75 | `declaration-track:f4a009e59fcff5132803bd748b9d09b1f3a89a33cde8288359f4a84ee88b3871` |
| 9 | `theorem` | [star_apply](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/declarations/star-apply--b993ec6c873dd70631bd8f0f.md) | 96 | `result-track:b993ec6c873dd70631bd8f0f700e61942b1b67987be6770ec52cb1afbf6d3bf1` |
| 10 | `theorem` | [star_supportRadius](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/declarations/star-supportradius--fe026e4d4e2c5fee7ed97ff6.md) | 101 | `result-track:fe026e4d4e2c5fee7ed97ff68e19c0e5a81427da25fde90c3cd57f58dbd65eab` |
| 11 | `theorem` | [star_star_apply](../../../../mathematics/Analysis/TestFunctions/Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d.lean/declarations/star-star-apply--9d12cb1a8fbf8a128556943d.md) | 106 | `result-track:9d12cb1a8fbf8a128556943d4faddb53029a32d847af716e977da89bfcd5e86b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
