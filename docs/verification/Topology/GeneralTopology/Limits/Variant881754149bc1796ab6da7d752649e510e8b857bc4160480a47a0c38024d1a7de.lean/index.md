# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f72790e39c04414d980e74bab429f05a39598f4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f72790e39c04414d980e74bab429f05a39598f4`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHaus.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.Limits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean/declarations/instance--974c98e0b2407b406f1244d5.md) | 22 | `declaration-track:974c98e0b2407b406f1244d56f6907761acbf4fbff3c382979251860e006f660` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean/declarations/instance--417677917ac096984177db58.md) | 25 | `declaration-track:417677917ac096984177db583751d11a3bf6590f80a3f52d0dd43fb8ac29d89d` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean/declarations/example--bbbd3db77e8a3cca2e605c16.md) | 28 | `declaration-track:bbbd3db77e8a3cca2e605c16e234b31d99bd6f05f32ebfded50394b5ecf49168` |
| 4 | `abbrev` | [isTerminalPUnit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean/declarations/isterminalpunit--3338ac372f9425e6424d79d8.md) | 31 | `declaration-track:3338ac372f9425e6424d79d8e6e6eb865b95aa5439a9603a978a99e1ad7ad11e` |
| 5 | `def` | [terminalIsoPUnit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean/declarations/terminalisopunit--d46791015b5f032a6723efda.md) | 34 | `declaration-track:d46791015b5f032a6723efda7447b135a3ddc988412d3cdda193077c37d9b923` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variant881754149bc1796ab6da7d752649e510e8b857bc4160480a47a0c38024d1a7de.lean/declarations/example--a76b75c045fcd2b8e0be3215.md) | 37 | `declaration-track:a76b75c045fcd2b8e0be32150b274958acc118246bee9e216a914243336de611` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
