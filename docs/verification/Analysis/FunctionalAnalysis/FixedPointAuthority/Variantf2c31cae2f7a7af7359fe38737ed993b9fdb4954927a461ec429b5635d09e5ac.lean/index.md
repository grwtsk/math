# Verification target: GRWTSK.Analysis.FunctionalAnalysis.FixedPointAuthority.Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdb62e1aa5d1dffdb098b4fbe6da3adc91ac0f20",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdb62e1aa5d1dffdb098b4fbe6da3adc91ac0f20`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.FixedPoints` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Contracting` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [banach_unique](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/declarations/banach-unique--7e107d29353ada4080242307.md) | 29 | `result-track:7e107d29353ada408024230719773a704a464c15c60746f1d70143055164bcb2` |
| 2 | `abbrev` | [banachPoint](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/declarations/banachpoint--03ead9866ef994d618148657.md) | 41 | `declaration-track:03ead9866ef994d618148657ceb27691b42cf156897a2e6e77588803754122ec` |
| 3 | `theorem` | [banach_exists](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/declarations/banach-exists--1f070fbc51a1deefebc5d3b6.md) | 45 | `result-track:1f070fbc51a1deefebc5d3b6c80a55c530726494508c8c468d8869b7a430197a` |
| 4 | `theorem` | [banach_fixed](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/declarations/banach-fixed--c9545bd855adcaf1970a9d79.md) | 49 | `result-track:c9545bd855adcaf1970a9d7976a9ae071b58a078e7b691142f9a0645ea8b8fa5` |
| 5 | `theorem` | [banach_iteration](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/declarations/banach-iteration--ad49864569b9a834225d4e48.md) | 53 | `result-track:ad49864569b9a834225d4e48b5d6927f3f942528112f31d62dd11df591c5426f` |
| 6 | `abbrev` | [knasterTarskiFixedPointLattice](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/declarations/knastertarskifixedpointlattice--d93481aa4660bc2bd29407ca.md) | 65 | `declaration-track:d93481aa4660bc2bd29407ca2a4fad743b14b47cd3b02ff398d4ec86497cd578` |
| 7 | `theorem` | [knasterTarski_least_fixed](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/declarations/knastertarski-least-fixed--7fb5ea152b4a18ad487781a0.md) | 70 | `result-track:7fb5ea152b4a18ad487781a06037df3910c82997747389fe8c2bbffc5043e89e` |
| 8 | `theorem` | [knasterTarski_greatest_fixed](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/declarations/knastertarski-greatest-fixed--9841ff350e3ee2781bb22d5f.md) | 74 | `result-track:9841ff350e3ee2781bb22d5f69d7e00b3324eec4a55d7671c9344a70c607e353` |
| 9 | `theorem` | [knasterTarski_least](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/declarations/knastertarski-least--4c2fdfb6143762eb1e86f7e4.md) | 78 | `result-track:4c2fdfb6143762eb1e86f7e45b917c8ab225a9acc503e53e3f77304ed4a05a3b` |
| 10 | `theorem` | [knasterTarski_greatest](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/declarations/knastertarski-greatest--fc37ae4e1d1c38d1eab2b864.md) | 82 | `result-track:fc37ae4e1d1c38d1eab2b864a0b0c62397f5eb3b5d540b9e6406a56ff41eb067` |
| 11 | `theorem` | [kleene_completeLattice_iteration](../../../../../mathematics/Analysis/FunctionalAnalysis/FixedPointAuthority/Variantf2c31cae2f7a7af7359fe38737ed993b9fdb4954927a461ec429b5635d09e5ac.lean/declarations/kleene-completelattice-iteration--fd6d297cd6be4c267f60071c.md) | 88 | `result-track:fd6d297cd6be4c267f60071cfa6c34df91e58cf351e475818a420b8e54ba3e5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
