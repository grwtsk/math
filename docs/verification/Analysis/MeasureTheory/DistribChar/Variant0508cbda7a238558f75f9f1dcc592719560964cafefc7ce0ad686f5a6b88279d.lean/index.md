# Verification target: GRWTSK.Analysis.MeasureTheory.DistribChar.Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71f4a4f6d961a074fb550cfd4c205b29ebfe343b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71f4a4f6d961a074fb550cfd4c205b29ebfe343b`.

Source path: `GRWTSK/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [distribHaarChar](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/declarations/distribhaarchar--4f0b9a2ff4227286453bfa70.md) | 39 | `declaration-track:4f0b9a2ff4227286453bfa708e90bddb2318cf5d4b2f3d24272346e6b4f1a524` |
| 2 | `lemma` | [distribHaarChar_pos](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/declarations/distribhaarchar-pos--4b09836a88393d3758f97655.md) | 53 | `result-track:4b09836a88393d3758f97655eb5ba036d451987a635e47ecfadf36539787dc89` |
| 3 | `lemma` | [addHaarScalarFactor_smul_eq_distribHaarChar](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/declarations/addhaarscalarfactor-smul-eq-distribhaarchar--ffa18ba8489fd01160298ee4.md) | 59 | `result-track:ffa18ba8489fd01160298ee4660cfd4bccc580faaeb53ebdf93c5a10cb09fc65` |
| 4 | `lemma` | [addHaarScalarFactor_smul_inv_eq_distribHaarChar](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/declarations/addhaarscalarfactor-smul-inv-eq-distribhaarchar--706d88657e91d0e8d0b360bb.md) | 65 | `result-track:706d88657e91d0e8d0b360bb370384a695f55592636a21d935482463daf28eb6` |
| 5 | `lemma` | [addHaarScalarFactor_smul_eq_distribHaarChar_inv](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/declarations/addhaarscalarfactor-smul-eq-distribhaarchar-inv--3dd1f930d6c8f4d02d713652.md) | 72 | `result-track:3dd1f930d6c8f4d02d7136520be1eb846dbc488b8e54416503de09d6c810f0e7` |
| 6 | `lemma` | [distribHaarChar_mul](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/declarations/distribhaarchar-mul--70c9b85349f7b27308e004e0.md) | 79 | `result-track:70c9b85349f7b27308e004e0d5428dda0d03a86e158aa184131ae9c7d23630bc` |
| 7 | `lemma` | [distribHaarChar_eq_div](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/declarations/distribhaarchar-eq-div--a600f855dfaaedf93be33b8a.md) | 84 | `result-track:a600f855dfaaedf93be33b8ad157763a37e7a8c4baae0f93ad12a45ea085ed84` |
| 8 | `lemma` | [distribHaarChar_eq_of_measure_smul_eq_mul](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant0508cbda7a238558f75f9f1dcc592719560964cafefc7ce0ad686f5a6b88279d.lean/declarations/distribhaarchar-eq-of-measure-smul-eq-mul--488fa0fefbe07bc2fb98526a.md) | 88 | `result-track:488fa0fefbe07bc2fb98526a67c856f5ad1b7e6a2a9b4c4995921f45a91b04e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
