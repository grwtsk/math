# Verification target: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variantf86cee9a908b034dea6aff9b3f25ad83a472edaf1dd1554ede9157e910ee9a6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab193b03a5af271b7c2055d8b1d9ce0b9f4629b3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variantf86cee9a908b034dea6aff9b3f25ad83a472edaf1dd1554ede9157e910ee9a6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantf86cee9a908b034dea6aff9b3f25ad83a472edaf1dd1554ede9157e910ee9a6a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantf86cee9a908b034dea6aff9b3f25ad83a472edaf1dd1554ede9157e910ee9a6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab193b03a5af271b7c2055d8b1d9ce0b9f4629b3`.

Source path: `GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variantf86cee9a908b034dea6aff9b3f25ad83a472edaf1dd1554ede9157e910ee9a6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EffectiveEpi/Variantf86cee9a908b034dea6aff9b3f25ad83a472edaf1dd1554ede9157e910ee9a6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHausLike.EffectiveEpi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.LightProfinite.Limits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [effectiveEpi_iff_surjective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantf86cee9a908b034dea6aff9b3f25ad83a472edaf1dd1554ede9157e910ee9a6a.lean/declarations/effectiveepi-iff-surjective--264c685d59706c325f4610b9.md) | 32 | `result-track:264c685d59706c325f4610b95db5b2d141a8e556f6e21ee22637dee5647929e6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantf86cee9a908b034dea6aff9b3f25ad83a472edaf1dd1554ede9157e910ee9a6a.lean/declarations/instance--43a4f7143aad886ad14fd1d6.md) | 38 | `declaration-track:43a4f7143aad886ad14fd1d692a31281df1737e70454d4dccba7799399685f5f` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantf86cee9a908b034dea6aff9b3f25ad83a472edaf1dd1554ede9157e910ee9a6a.lean/declarations/example--af1efeaf32d57c348a2f8b26.md) | 43 | `declaration-track:af1efeaf32d57c348a2f8b269fb08411e7c5b74a65eff5c12316bb84515e16d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
