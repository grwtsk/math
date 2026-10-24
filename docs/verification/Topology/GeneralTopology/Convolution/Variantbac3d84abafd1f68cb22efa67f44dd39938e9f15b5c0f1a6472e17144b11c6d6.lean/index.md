# Verification target: GRWTSK.Topology.GeneralTopology.Convolution.Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edd59d913195a9d28bba780666aea0e50dbd23ed",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edd59d913195a9d28bba780666aea0e50dbd23ed`.

Source path: `GRWTSK/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convolution` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Normed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Differentiation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.BesicovitchVectorSpace` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convolution_eq_right](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/declarations/convolution-eq-right--de6f667cc070613f3b784944.md) | 61 | `result-track:de6f667cc070613f3b784944900f0bde77d39896ea4a1cf54d1f193d0d5408ed` |
| 2 | `theorem` | [normed_convolution_eq_right](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/declarations/normed-convolution-eq-right--7a82f9a8deaff55f1a9633da.md) | 73 | `result-track:7a82f9a8deaff55f1a9633da09018ecdc13450f5ae473119bfb6fd5150a62fcb` |
| 3 | `theorem` | [dist_normed_convolution_le](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/declarations/dist-normed-convolution-le--13e03b80b792d353fdfe3136.md) | 83 | `result-track:13e03b80b792d353fdfe3136ecbe977058839a1d2f5a292d2c83a0c170dcf3c9` |
| 4 | `theorem` | [convolution_tendsto_right](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/declarations/convolution-tendsto-right--e135cd2533b15a4ef39357be.md) | 96 | `result-track:e135cd2533b15a4ef39357beda07134e926d93d9321020116f210b4c8bc18e40` |
| 5 | `theorem` | [convolution_tendsto_right_of_continuous](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/declarations/convolution-tendsto-right-of-continuous--d4326f879bbfae0ec2d02240.md) | 108 | `result-track:d4326f879bbfae0ec2d02240ef5d8e06f47af9884faab07f020c8eb619d5a1b7` |
| 6 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/declarations/macro-rules--ac942aaca71d45e06c65c128.md) | 115 | `declaration-track:ac942aaca71d45e06c65c12880a7c3643f7eb3e038ccc97950a53ed9d6403638` |
| 7 | `theorem` | [ae_convolution_tendsto_right_of_locally_integrable](../../../../../mathematics/Topology/GeneralTopology/Convolution/Variantbac3d84abafd1f68cb22efa67f44dd39938e9f15b5c0f1a6472e17144b11c6d6.lean/declarations/ae-convolution-tendsto-right-of-locally-integrable--e08b5f6ec00b3c2ffe9e57e7.md) | 120 | `result-track:e08b5f6ec00b3c2ffe9e57e778ca7cbdb3025edb9f08376acc89b3606ae35e33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
