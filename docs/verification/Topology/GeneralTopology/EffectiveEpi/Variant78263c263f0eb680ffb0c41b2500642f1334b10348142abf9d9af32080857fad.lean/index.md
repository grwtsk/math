# Verification target: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e132cdbf53d8010becfd47f4563aaf629f68dd9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e132cdbf53d8010becfd47f4563aaf629f68dd9`.

Source path: `GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EffectiveEpi/Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHausLike.EffectiveEpi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.Limits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [effectiveEpi_iff_surjective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad.lean/declarations/effectiveepi-iff-surjective--b29b2c48cc08ddd6ff8c8631.md) | 24 | `result-track:b29b2c48cc08ddd6ff8c86310a003670502bcfb3263efccfa0337c84f6c999b9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad.lean/declarations/instance--7c7e36e32353c407844e7690.md) | 30 | `declaration-track:7c7e36e32353c407844e76905898b14ee728744041c7ecbae2c5cdcec1e728ce` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant78263c263f0eb680ffb0c41b2500642f1334b10348142abf9d9af32080857fad.lean/declarations/example--2d2d5740f8d7ebd2dd8806a3.md) | 35 | `declaration-track:2d2d5740f8d7ebd2dd8806a385d48e7640f6e4454bf427ebf3f206063bb0eb3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
