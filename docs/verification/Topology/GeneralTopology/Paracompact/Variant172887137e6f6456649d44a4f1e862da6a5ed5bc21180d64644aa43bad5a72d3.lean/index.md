# Verification target: GRWTSK.Topology.GeneralTopology.Paracompact.Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d4dcac49497f753f50b685b559543173cc1c4fe",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d4dcac49497f753f50b685b559543173cc1c4fe`.

Source path: `GRWTSK/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ParacompactSpace](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/paracompactspace--ae873e375ef550cc14714d9b.md) | 67 | `declaration-track:ae873e375ef550cc14714d9b38ce3f55e28ae2b6a22d8642d21ec9dee71c30a5` |
| 2 | `theorem` | [precise_refinement](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/precise-refinement--d35d52e965fc3ccebe27ab09.md) | 78 | `result-track:d35d52e965fc3ccebe27ab094671f0a8f0a58af2bc18a647cc98460a1a94c2de` |
| 3 | `theorem` | [precise_refinement_set](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/precise-refinement-set--edb562c901b9a78cb236de05.md) | 103 | `result-track:edb562c901b9a78cb236de0513e6083d074aefa2f9622e467ca8a7a97ceaca11` |
| 4 | `theorem` | [Topology.IsClosedEmbedding.paracompactSpace](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/topology-isclosedembedding-paracompactspace--e6bf035a37dd879202751494.md) | 117 | `result-track:e6bf035a37dd879202751494000685808acf62cf06cc32792bc927ac8fa4691d` |
| 5 | `theorem` | [Homeomorph.paracompactSpace_iff](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/homeomorph-paracompactspace-iff--35e17f21ca7f052af0e70836.md) | 129 | `result-track:35e17f21ca7f052af0e7083687de33778416d87eb2c524435035b87bdcaea3a1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/instance--6cb65305f09752fd2908fe36.md) | 138 | `declaration-track:6cb65305f09752fd2908fe36a3e29ad30b0b96887f808e9935db74cb97bdd163` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/instance--8ce53322d52acbb48f1403d6.md) | 164 | `declaration-track:8ce53322d52acbb48f1403d6d2901e7c75b737123dbcc72e4e6a0b0bd85ac8df` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/instance--f40c3d51561e1c6994642b7a.md) | 169 | `declaration-track:f40c3d51561e1c6994642b7aceae491f9c431ae58588908ef50781b4cbfdb6c7` |
| 9 | `theorem` | [refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/refinement-of-locallycompact-sigmacompact-of-nhds-basis-set--027216887889cf35071e7e1b.md) | 197 | `result-track:027216887889cf35071e7e1b00c3a98f646a5712d72806e3d6800cae54bc6924` |
| 10 | `theorem` | [refinement_of_locallyCompact_sigmaCompact_of_nhds_basis](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/refinement-of-locallycompact-sigmacompact-of-nhds-basis--724c44b4a50e9ab1d4182c8f.md) | 264 | `result-track:724c44b4a50e9ab1d4182c8fabcba1e4a5d155bb6880e9566fbbdc08f474c2f6` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/instance--febf402deb64d79996cec75e.md) | 276 | `declaration-track:febf402deb64d79996cec75eff3a527e55cda32277f48eeb8b183758327aa53b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Paracompact/Variant172887137e6f6456649d44a4f1e862da6a5ed5bc21180d64644aa43bad5a72d3.lean/declarations/instance--69b5b2458c33dcca0e6cc0c3.md) | 289 | `declaration-track:69b5b2458c33dcca0e6cc0c3783956d427d68e160d72d431ca04c9cc1b88dcfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
