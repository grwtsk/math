# Verification target: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccfdf7bcb9956468688cef3385d809d705a6c245",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccfdf7bcb9956468688cef3385d809d705a6c245`.

Source path: `GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHaus.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.EffectiveEpi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [effectiveEpi_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean/declarations/effectiveepi-tfae--49fda750e76e17eb3ec534c5.md) | 43 | `result-track:49fda750e76e17eb3ec534c50a732c769a9055470bb8535383c4b1e9c409d942` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean/declarations/instance--938f6fd5b249fb2acc0d71e2.md) | 55 | `declaration-track:938f6fd5b249fb2acc0d71e2e5f3df838a5a8cbc65097682987f3d3c8a87c6d5` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean/declarations/example--25ae6cfce5d10fc8fcf0d45d.md) | 58 | `declaration-track:25ae6cfce5d10fc8fcf0d45dc07681a71bf8bd42daeb755382855019d2ccd1fa` |
| 4 | `theorem` | [effectiveEpiFamily_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean/declarations/effectiveepifamily-tfae--a822b69f1ccce507089a8bf0.md) | 62 | `result-track:a822b69f1ccce507089a8bf0a295bd8e45a2f08d0281979366a6cb5b9365235a` |
| 5 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9.lean/declarations/effectiveepifamily-of-jointly-surjective--3aab58a546dbb141b6b99cbd.md) | 105 | `result-track:3aab58a546dbb141b6b99cbdb13acd80dd3c972b0f9d85e40bd0519cce94dd9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
