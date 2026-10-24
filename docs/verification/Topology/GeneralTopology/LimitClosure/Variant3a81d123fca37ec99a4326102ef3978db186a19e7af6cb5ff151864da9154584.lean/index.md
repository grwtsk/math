# Verification target: GRWTSK.Topology.GeneralTopology.LimitClosure.Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f5ed38e6b601986f3b31b98607985a59a50a050",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f5ed38e6b601986f3b31b98607985a59a50a050`.

Source path: `GRWTSK/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.SquareRoot.OrdinalFamily` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UniformCofinalScaleCertificate](../../../../../mathematics/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean/declarations/uniformcofinalscalecertificate--4b4a2e15563cb0285168cc66.md) | 21 | `declaration-track:4b4a2e15563cb0285168cc66250fe1f42e58c88efacdaf44177402610d208c54` |
| 2 | `structure` | [NormalizedLimitCompatibilityCertificate](../../../../../mathematics/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean/declarations/normalizedlimitcompatibilitycertificate--5fc9119610044122f922087b.md) | 47 | `declaration-track:5fc9119610044122f922087ba959d3994a7adf22fe080d62c28261f1c6f2e0a2` |
| 3 | `abbrev` | [LimitNormCompatibilityCertificate](../../../../../mathematics/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean/declarations/limitnormcompatibilitycertificate--dd73f58bc92aece3b23e6f6c.md) | 97 | `declaration-track:dd73f58bc92aece3b23e6f6cea693ee63997a9a7e3e9119569174e403f4deae0` |
| 4 | `def` | [NormalizedLimitBounded](../../../../../mathematics/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean/declarations/normalizedlimitbounded--52181a0b3f202a25cd7fecd7.md) | 100 | `declaration-track:52181a0b3f202a25cd7fecd74997c1970504083baef1eaf784c0c658a8b999a3` |
| 5 | `constant` | [*](../../../../../mathematics/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean/declarations/anonymous--2194174e3db21099726e466b.md) | 108 | `declaration-track:2194174e3db21099726e466b45e068459400115f23d618154613e1d9e4249960` |
| 6 | `theorem` | [normalized_limit_square_root_bound](../../../../../mathematics/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean/declarations/normalized-limit-square-root-bound--fe9d94c324a072e9aa529be9.md) | 110 | `result-track:fe9d94c324a072e9aa529be991559b6b8a4bf86fe7910406ead7a8b23b7383ac` |
| 7 | `theorem` | [normalized_limit_inherits_uniform_constant](../../../../../mathematics/Topology/GeneralTopology/LimitClosure/Variant3a81d123fca37ec99a4326102ef3978db186a19e7af6cb5ff151864da9154584.lean/declarations/normalized-limit-inherits-uniform-constant--e5cf0381edeb3ef834d31fea.md) | 129 | `result-track:e5cf0381edeb3ef834d31feae87e360de47711034e4aebd7f177f711963f0170` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
