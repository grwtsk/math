# Verification target: GRWTSK.Topology.GeneralTopology.Closeds.Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "805416ce25b28ddd9e00b42dc5f28beb17eb86c5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `805416ce25b28ddd9e00b42dc5f28beb17eb86c5`.

Source path: `GRWTSK/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Closeds.emetricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/closeds-emetricspace--6d037aeab03a8da3e90501b8.md) | 39 | `declaration-track:6d037aeab03a8da3e90501b806076c02c877f1e8bc780d9472ffc7c49019f5a5` |
| 2 | `theorem` | [continuous_infEdist_hausdorffEdist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/continuous-infedist-hausdorffedist--6072be530c53df6fca051918.md) | 48 | `result-track:6072be530c53df6fca051918f8386ca6f386f80194214aa1e9e32c916b9aacb8` |
| 3 | `theorem` | [isClosed_subsets_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/isclosed-subsets-of-isclosed--9223f498a9b94e7bc3b83221.md) | 64 | `result-track:9223f498a9b94e7bc3b832215f10468a26695aa5faeee327c1c0aa91bfde8258` |
| 4 | `theorem` | [Closeds.edist_eq](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/closeds-edist-eq--6f34fcc2f08cf30601c2a5bf.md) | 77 | `result-track:6f34fcc2f08cf30601c2a5bf4e62ba4167a9047113dbbb477f7749ebacb24453` |
| 5 | `instance` | [Closeds.completeSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/closeds-completespace--0b2ae210e52ba0aa260f4080.md) | 82 | `declaration-track:0b2ae210e52ba0aa260f4080b01fa2c37ab90801d5d10241c6c3078774fee9ea` |
| 6 | `instance` | [Closeds.compactSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/closeds-compactspace--d89c9f5725bfe7d8de4ac818.md) | 177 | `declaration-track:d89c9f5725bfe7d8de4ac818a70cb4b008681fb11dcdea35622b072ee9c9921a` |
| 7 | `instance` | [NonemptyCompacts.emetricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/nonemptycompacts-emetricspace--684e05ef01dde115e98d0133.md) | 225 | `declaration-track:684e05ef01dde115e98d01332cb94da250a779c0d828004e0626be27964630c4` |
| 8 | `theorem` | [NonemptyCompacts.ToCloseds.isUniformEmbedding](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/nonemptycompacts-tocloseds-isuniformembedding--74a472cc15f393d09a72c683.md) | 235 | `result-track:74a472cc15f393d09a72c683a06861d00d3a0579a5737979025fd2169b14470d` |
| 9 | `theorem` | [NonemptyCompacts.isClosed_in_closeds](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/nonemptycompacts-isclosed-in-closeds--0a9549fd036c2ccd7c37f780.md) | 240 | `result-track:0a9549fd036c2ccd7c37f7802ca26b73f9dbfc0e4eb6da02812e16c43127e523` |
| 10 | `instance` | [NonemptyCompacts.completeSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/nonemptycompacts-completespace--189b5c07cb2188fe23eef713.md) | 279 | `declaration-track:189b5c07cb2188fe23eef713a0cb3fad8b7ec20f28487ce04133017b16d8fe6f` |
| 11 | `instance` | [NonemptyCompacts.compactSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/nonemptycompacts-compactspace--44319e7791d7c1a3a06944b5.md) | 286 | `declaration-track:44319e7791d7c1a3a06944b5456440fc56bd9927da18b2ff275696796c5d2405` |
| 12 | `instance` | [NonemptyCompacts.secondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/nonemptycompacts-secondcountabletopology--966958c25b65975b7b36140b.md) | 292 | `declaration-track:966958c25b65975b7b36140b3c86e768cd6f906294d1ce8d2048448289fde40a` |
| 13 | `instance` | [NonemptyCompacts.metricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/nonemptycompacts-metricspace--5c4b487e6480d354905eedd0.md) | 381 | `declaration-track:5c4b487e6480d354905eedd04126008d02d45c33c8b057ce1f4bb122902b5928` |
| 14 | `theorem` | [NonemptyCompacts.dist_eq](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/nonemptycompacts-dist-eq--71a3886491ade193e4b4f87a.md) | 387 | `result-track:71a3886491ade193e4b4f87ad392b1848806fc66cd891227fc1b9235cda4dc8f` |
| 15 | `theorem` | [lipschitz_infDist_set](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/lipschitz-infdist-set--0cbbebe9cd61a6e60cadb89f.md) | 391 | `result-track:0cbbebe9cd61a6e60cadb89fe145a6521d762410581c75fe7029501546c611fb` |
| 16 | `theorem` | [lipschitz_infDist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/lipschitz-infdist--76e173b2f2f2a07fa74d4b43.md) | 396 | `result-track:76e173b2f2f2a07fa74d4b433addad8f018f00b5e209d93bc4dc9d2ef3497551` |
| 17 | `theorem` | [uniformContinuous_infDist_Hausdorff_dist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant5f4225eb46bf89785f926d80564997e08a35954ab161294746035499576f8e4b.lean/declarations/uniformcontinuous-infdist-hausdorff-dist--42dffa5809e5101fd696672f.md) | 401 | `result-track:42dffa5809e5101fd696672f356f7d21cebab96b5f22f7293cc2b2d4b364932d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
