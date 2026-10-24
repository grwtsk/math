# Verification target: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb5912834404b98e6c585f8bbfa09f14e23362cd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb5912834404b98e6c585f8bbfa09f14e23362cd`.

Source path: `GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.ReflectsPreregular` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.EffectiveEpi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Stonean.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [effectiveEpi_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean/declarations/effectiveepi-tfae--39d7fad247ed2646c9bf470f.md) | 39 | `result-track:39d7fad247ed2646c9bf470f2ae1991d3977ea7563172f923b22dcbf30efae1b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean/declarations/instance--ff1a9acde5f899f653ac45d9.md) | 51 | `declaration-track:ff1a9acde5f899f653ac45d9bbf37d28c830fc93aa14ddd35814e1aad99f0edf` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean/declarations/instance--6bc7dd5f684ffea998c96c28.md) | 55 | `declaration-track:6bc7dd5f684ffea998c96c2855bff6e194fd563025cebbcda7a48658e4654b23` |
| 4 | `def` | [profiniteToCompHausEffectivePresentation](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean/declarations/profinitetocomphauseffectivepresentation--51ed969a1132875dc60cda04.md) | 62 | `declaration-track:51ed969a1132875dc60cda049af2c251c0a014aa3d9b5220e1a34f4b632bd651` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean/declarations/instance--1a3b540d92b3d8f36551b6cf.md) | 68 | `declaration-track:1a3b540d92b3d8f36551b6cf9ba69766134764208f29eda90a93a86d7210b19f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean/declarations/instance--de2ee930319108414c337f97.md) | 71 | `declaration-track:de2ee930319108414c337f97d24e32fa6412d40422609fdd743c8b813ea370f2` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean/declarations/example--558960c718b40787ec380586.md) | 73 | `declaration-track:558960c718b40787ec380586bfc7903bc4129313ae3e4aa2aa210560f978d8eb` |
| 8 | `theorem` | [effectiveEpiFamily_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean/declarations/effectiveepifamily-tfae--3bf9709ce23cd9dd277700e6.md) | 77 | `result-track:3bf9709ce23cd9dd277700e6a207f1c156ed7c108bc864822dee08bda7b7810f` |
| 9 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variantc7bfb87e0ae9622422256c4cb0d48b6df6fa773f2e1ba53ebe7704f2bb829a04.lean/declarations/effectiveepifamily-of-jointly-surjective--f7249b9691f115433e76d173.md) | 96 | `result-track:f7249b9691f115433e76d17318fa45d330ac0270e46ba1d84e414baa4517fcd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
