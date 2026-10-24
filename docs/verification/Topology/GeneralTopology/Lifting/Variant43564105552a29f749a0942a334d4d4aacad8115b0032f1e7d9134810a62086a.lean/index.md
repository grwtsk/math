# Verification target: GRWTSK.Topology.GeneralTopology.Lifting.Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69caae4abbcaab0a74b29815e6fe28549d12295d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69caae4abbcaab0a74b29815e6fe28549d12295d`.

Source path: `GRWTSK/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.FundamentalGroupoid.SimplyConnected` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.LocPathConnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Covering` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_lift_nhds](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/exists-lift-nhds--e0a478639396ca69aa8a0dd6.md) | 43 | `result-track:e0a478639396ca69aa8a0dd6605b3ede53c5011efce48a7e6ecf1b31aebdb0fb` |
| 2 | `theorem` | [continuous_lift](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/continuous-lift--2090c433976f34e37c5632fd.md) | 120 | `result-track:2090c433976f34e37c5632fdd1305f4779e32d328dc51a49a29db7600dad4acc` |
| 3 | `theorem` | [monodromy_theorem](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/monodromy-theorem--d04c8677f6cca97073fd2b22.md) | 147 | `result-track:d04c8677f6cca97073fd2b22a1f789916f81581a88edb077858e3545d235a2a7` |
| 4 | `theorem` | [existsUnique_continuousMap_lifts](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/existsunique-continuousmap-lifts--bc95bc11229827fd31b6cd6c.md) | 164 | `result-track:bc95bc11229827fd31b6cd6c450b30da8955352a73485a6e42e56c9a7c442061` |
| 5 | `theorem` | [exists_path_lifts](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/exists-path-lifts--44d091fbbeeeb9d8b93ce728.md) | 211 | `result-track:44d091fbbeeeb9d8b93ce7283cfabf0a54bc1ade830945e7cb0f94395b6ae3dd` |
| 6 | `def` | [liftPath](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/liftpath--99a58d585d55d479d3c634d9.md) | 248 | `declaration-track:99a58d585d55d479d3c634d984cb03e130322d907f39b394c8bc10534c6466d3` |
| 7 | `lemma` | [liftPath_lifts](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/liftpath-lifts--673518b13440ccd517996e5a.md) | 250 | `result-track:673518b13440ccd517996e5a7893472addf4534315f05427035fd22af55cc835` |
| 8 | `lemma` | [liftPath_zero](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/liftpath-zero--07483535c8b5a1c05d388112.md) | 251 | `result-track:07483535c8b5a1c05d388112a030d152878f42ddc4f49b52c53c28d38da7c986` |
| 9 | `lemma` | [eq_liftPath_iff](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/eq-liftpath-iff--861f34c00afdb49d43850eea.md) | 254 | `result-track:861f34c00afdb49d43850eea48680bd5ab55c3f9da83024ec86c3188f20707cb` |
| 10 | `lemma` | [eq_liftPath_iff'](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/eq-liftpath-iff--76df9046aec86d69f25b206d.md) | 261 | `result-track:76df9046aec86d69f25b206d76bfd5b50789b278346bae77cce0b0af86dfdb2c` |
| 11 | `def` | [liftHomotopy](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/lifthomotopy--788c189ed993b92a7578e550.md) | 272 | `declaration-track:788c189ed993b92a7578e550a61c106d88c8ca1f1919727cd76b90a2fa7f552e` |
| 12 | `lemma` | [liftHomotopy_lifts](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/lifthomotopy-lifts--5a4cf147e52f00e5f1742d3f.md) | 280 | `result-track:5a4cf147e52f00e5f1742d3fbb5a6a8040efaf853c2731719762fe5c2f858de6` |
| 13 | `lemma` | [liftHomotopy_zero](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/lifthomotopy-zero--58e33eb3243b36522ff1c4de.md) | 283 | `result-track:58e33eb3243b36522ff1c4de992ab7fecb2199807431b39b17f0cfc5d72aa375` |
| 14 | `lemma` | [eq_liftHomotopy_iff](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/eq-lifthomotopy-iff--221170118cf767135f9b39e8.md) | 286 | `result-track:221170118cf767135f9b39e80a57eaa79d1630dce1dc208887d5ff8599424512` |
| 15 | `lemma` | [eq_liftHomotopy_iff'](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/eq-lifthomotopy-iff--17266df71b2efadcc15cf7f8.md) | 294 | `result-track:17266df71b2efadcc15cf7f87c1db17f62a35cb3e402c7d864ab7bdcb39cfc67` |
| 16 | `def` | [liftHomotopyRel](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/lifthomotopyrel--7f0ddb1d9a441c49aa2ca322.md) | 304 | `declaration-track:7f0ddb1d9a441c49aa2ca322e9bdacf2d6d1576b1193259cf4df58dda6c88b34` |
| 17 | `theorem` | [homotopicRel_iff_comp](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/homotopicrel-iff-comp--e1596366fb43c0e04e91322b.md) | 327 | `result-track:e1596366fb43c0e04e91322bff85dd5e4d0e6920404de43620371cdbcb7eabc3` |
| 18 | `theorem` | [liftPath_apply_one_eq_of_homotopicRel](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/liftpath-apply-one-eq-of-homotopicrel--34e7fd55a94c8e1f95d21ddf.md) | 334 | `result-track:34e7fd55a94c8e1f95d21ddf8b609b87b3701b88a443c29bbba5be3d28d50bdd` |
| 19 | `lemma` | [injective_path_homotopic_mapFn](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/injective-path-homotopic-mapfn--fc094422c0e3b13e4e8ee531.md) | 344 | `result-track:fc094422c0e3b13e4e8ee531c82568a0615a55cacd5eca7ec1bd712391decc2c` |
| 20 | `theorem` | [existsUnique_continuousMap_lifts](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant43564105552a29f749a0942a334d4d4aacad8115b0032f1e7d9134810a62086a.lean/declarations/existsunique-continuousmap-lifts--01f026b51ead6b0c4d839afc.md) | 355 | `result-track:01f026b51ead6b0c4d839afc8253d52a7ae6217a0709abaa4146dae23546baef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
