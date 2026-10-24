# Verification target: GRWTSK.Topology.GeneralTopology.CDF.Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecdce085d461386119be1da40d2977f80255f3f2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecdce085d461386119be1da40d2977f80255f3f2`.

Source path: `GRWTSK/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Disintegration.CondCDF` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/cdf--529e18628527d7807cb8568e.md) | 59 | `declaration-track:529e18628527d7807cb8568e4205f8a0bddca3c1692ce16b917eeb855b883e3a` |
| 2 | `lemma` | [cdf_nonneg](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/cdf-nonneg--4215f060838f4654a9f6a59a.md) | 66 | `result-track:4215f060838f4654a9f6a59a402a21af87710173860c3bc27898514a2ccda4ec` |
| 3 | `lemma` | [cdf_le_one](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/cdf-le-one--7dac07a6f05ea75094680d95.md) | 69 | `result-track:7dac07a6f05ea75094680d95388694c86a14276735ae531c51dd03d13d22e74d` |
| 4 | `lemma` | [monotone_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/monotone-cdf--619b124164e9a7c855b1ece9.md) | 72 | `result-track:619b124164e9a7c855b1ece99541a91fdb735c0af34f2d50008becf2ab897521` |
| 5 | `lemma` | [tendsto_cdf_atBot](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/tendsto-cdf-atbot--f4049bbeb461713e8136da5e.md) | 75 | `result-track:f4049bbeb461713e8136da5e344285ca35c817bc5161f4f5196aec441b00e277` |
| 6 | `lemma` | [tendsto_cdf_atTop](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/tendsto-cdf-attop--110e2bbb3e4587463c02f210.md) | 78 | `result-track:110e2bbb3e4587463c02f210ee9f7f5c7e034685b91645fcc351deb25a819fc2` |
| 7 | `lemma` | [ofReal_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/ofreal-cdf--6a2cc90611e409919f5e1bc1.md) | 80 | `result-track:6a2cc90611e409919f5e1bc1ac22b4f01b8aa6c31728f446051ddaa450b2e5a3` |
| 8 | `lemma` | [cdf_eq_real](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/cdf-eq-real--11f59ee28daf1a6241b1032c.md) | 85 | `result-track:11f59ee28daf1a6241b1032c3547e92b8a3178e548a9dcb42723caa41eb9b236` |
| 9 | `instance` | [instIsProbabilityMeasurecdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/instisprobabilitymeasurecdf--44507e23f62c2c766ef9ad9f.md) | 90 | `declaration-track:44507e23f62c2c766ef9ad9f7e36b82e018eeb9806a140b5742678d036bcf3bf` |
| 10 | `lemma` | [measure_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/measure-cdf--af1a99fea22b50c18452f74a.md) | 96 | `result-track:af1a99fea22b50c18452f74a72f3673173e93a75cf09138790513fe02c59d372` |
| 11 | `lemma` | [cdf_measure_stieltjesFunction](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/cdf-measure-stieltjesfunction--09c8ed95651798c977437f37.md) | 102 | `result-track:09c8ed95651798c977437f373f31ff879b0d3ea9dc47ed7196a88d7b36509855` |
| 12 | `lemma` | [MeasureTheory.Measure.eq_of_cdf](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/measuretheory-measure-eq-of-cdf--2e2decb098f141fc75dfe4fb.md) | 115 | `result-track:2e2decb098f141fc75dfe4fb40aa4b463cceedae06ce8d4ddff1e2a884e4923c` |
| 13 | `lemma` | [MeasureTheory.Measure.cdf_eq_iff](../../../../../mathematics/Topology/GeneralTopology/CDF/Variantae1df5f919143e22a5f081705ad46cbfbc483e2fb5c3adf114cb773205695c74.lean/declarations/measuretheory-measure-cdf-eq-iff--02d2e3813cece14a24c30625.md) | 119 | `result-track:02d2e3813cece14a24c306251ba3ce73a65bc46a89793a0ef9d87b5621b48db7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
