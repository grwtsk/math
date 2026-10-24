# Verification target: GRWTSK.Topology.GeneralTopology.ConstructibleSet.Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b9466bb19e60baeed81ae48ee38aadc3a0f4f3b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b9466bb19e60baeed81ae48ee38aadc3a0f4f3b`.

Source path: `GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.WithBot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BasicConstructibleSetData](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/basicconstructiblesetdata--b2e9198caf7562d95815de48.md) | 25 | `declaration-track:b2e9198caf7562d95815de488b3a80d2bd48d4cc43c0e798b360c7e3cc4d6865` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/instance--483f17010d5b578dff91b9b6.md) | 35 | `declaration-track:483f17010d5b578dff91b9b6ed7b694a86886109e2f464418457412ea4c7b93e` |
| 3 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/map--9c36c9cecc85faee9a799825.md) | 40 | `declaration-track:9c36c9cecc85faee9a799825113fd3b481eaf5be9877eaa0a4cb6dfac0e125b1` |
| 4 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/map-id--44341a773b1ee96c31c1c6a2.md) | 46 | `result-track:44341a773b1ee96c31c1c6a2816970153af3d625a9fe7d186a3a27de138c6c12` |
| 5 | `lemma` | [map_id'](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/map-id--e77d43319d4adbd89d782f39.md) | 48 | `result-track:e77d43319d4adbd89d782f392db2049756e8e8d1c0e0822533701ba9b5c64413` |
| 6 | `lemma` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/map-comp--27e1453452055dfc0b763f80.md) | 50 | `result-track:27e1453452055dfc0b763f8025d01f542846b81004d76fa67d28ab8872f6677c` |
| 7 | `lemma` | [map_comp'](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/map-comp--1dfa5f218378215a324ed676.md) | 53 | `result-track:1dfa5f218378215a324ed67692e5ab31f3dab87230fea9d60e5db5f13a31b883` |
| 8 | `def` | [toSet](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/toset--e9254d4af0e7662b766bbe1f.md) | 58 | `declaration-track:e9254d4af0e7662b766bbe1fbfb9462fa662190367a469a0c0a2badb86bbca9f` |
| 9 | `lemma` | [toSet_map](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/toset-map--4434ec9496742d4908fbd494.md) | 62 | `result-track:4434ec9496742d4908fbd494fd1e84df250e29e07f17a6324f6508bde350eb00` |
| 10 | `abbrev` | [ConstructibleSetData](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/constructiblesetdata--2093f47470f14bb012483236.md) | 72 | `declaration-track:2093f47470f14bb012483236f0d0c3935fec41a7c93d7b299dd2cc516c5dc59e` |
| 11 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/map--0142b08d934c084c04e51ca5.md) | 78 | `declaration-track:0142b08d934c084c04e51ca5aeaf7d482e2da3b40eeb59afb03edce4e059fcf9` |
| 12 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/map-id--bb22c98e913fc9967ef92cf8.md) | 82 | `result-track:bb22c98e913fc9967ef92cf879ad0e206321ad4eae101272e28686a84d05cb32` |
| 13 | `lemma` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/map-comp--a7777ee93a34f548a44b882d.md) | 84 | `result-track:a7777ee93a34f548a44b882d4811cca799dee2dbf0547fae6137145f9d7918e2` |
| 14 | `def` | [toSet](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/toset--7791b49f2daf37bceb6df61b.md) | 90 | `declaration-track:7791b49f2daf37bceb6df61bc8f1dbc74bdfe8e9dbc61ad310f96899ffbd46b9` |
| 15 | `lemma` | [toSet_map](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/toset-map--32157e7347657a5c69e36136.md) | 93 | `result-track:32157e7347657a5c69e36136456595734bc886c935fa6afc5a8d8f071c179cb5` |
| 16 | `def` | [degBound](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/degbound--e1d5d16cc4412d7813d35566.md) | 100 | `declaration-track:e1d5d16cc4412d7813d35566334367d500984081c99f692f788c0fd5470dcedc` |
| 17 | `lemma` | [isConstructible_toSet](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/isconstructible-toset--2a2d362eeeb6af15df520e2f.md) | 102 | `result-track:2a2d362eeeb6af15df520e2fb77caf24ea6e1cc91254609561f125f8797cf8f3` |
| 18 | `lemma` | [exists_constructibleSetData_iff](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/exists-constructiblesetdata-iff--fff5d54ae5e926e4c26793fc.md) | 114 | `result-track:fff5d54ae5e926e4c26793fc31e3a014c36510d37b2cf0f9debb247fe1f00fa0` |
| 19 | `lemma` | [exists_range_eq_of_isConstructible](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/exists-range-eq-of-isconstructible--07533ecd1ae38fa96c1f2dd5.md) | 138 | `result-track:07533ecd1ae38fa96c1f2dd51fe85119c5108c12b98e077305e3c0269fb08faf` |
| 20 | `lemma` | [isClosed_of_stableUnderSpecialization_of_isConstructible](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/isclosed-of-stableunderspecialization-of-isconstructible--f2ef0f86c6357ec56ce69ae4.md) | 157 | `result-track:f2ef0f86c6357ec56ce69ae496c9c431fb73bf5010ecfbb145ad52e98424f296` |
| 21 | `lemma` | [isOpen_of_stableUnderGeneralization_of_isConstructible](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/declarations/isopen-of-stableundergeneralization-of-isconstructible--48761398f5929cc15207254c.md) | 164 | `result-track:48761398f5929cc15207254c202733be6003d323b4d668a19516cd2a0e875567` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
