# Verification target: GRWTSK.Topology.GeneralTopology.Indicator.Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4cb8e02fa4739e91cc8f293b3d4c9b691f1811d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4cb8e02fa4739e91cc8f293b3d4c9b691f1811d`.

Source path: `GRWTSK/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Indicator` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Finset` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_mulIndicator_subset_of_eq_one](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean/declarations/prod-mulindicator-subset-of-eq-one--fb6fd5cdcbd9a766d96eb461.md) | 37 | `result-track:fb6fd5cdcbd9a766d96eb461c98097e9654342e880a5b5b232dec87492251251` |
| 2 | `lemma` | [prod_mulIndicator_subset](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean/declarations/prod-mulindicator-subset--6d6df8435c9ed30277d7cfeb.md) | 48 | `result-track:6d6df8435c9ed30277d7cfebe40191be9dc04d87a60ae49004ea13bc354a57bb` |
| 3 | `lemma` | [prod_mulIndicator_eq_prod_filter](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean/declarations/prod-mulindicator-eq-prod-filter--8a06486192ff997e57750faa.md) | 53 | `result-track:8a06486192ff997e57750faaa17c9cc2ca1b6929f9fcab7ec3a478eecabacc8c` |
| 4 | `lemma` | [prod_mulIndicator_eq_prod_inter](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean/declarations/prod-mulindicator-eq-prod-inter--19d0404c1d496159e234908b.md) | 62 | `result-track:19d0404c1d496159e234908bca9065e6100991adaae44ed0dc680743441bec56` |
| 5 | `lemma` | [mulIndicator_prod](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean/declarations/mulindicator-prod--1566d64b06cecc70f4438074.md) | 67 | `result-track:1566d64b06cecc70f44380749f92299850f60d6fd8487c1ede82f57ad691226f` |
| 6 | `lemma` | [mulIndicator_biUnion](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean/declarations/mulindicator-biunion--ebb1aeb71228de7952f17e07.md) | 72 | `result-track:ebb1aeb71228de7952f17e07f313a59de69e3e8fd18b927d61ee3a72f76b6e08` |
| 7 | `lemma` | [mulIndicator_biUnion_apply](../../../../../mathematics/Topology/GeneralTopology/Indicator/Variant2be3ca2152f720d73094da3da407a7cb6364b3377f41b5f6db1f17bfc58ebbb2.lean/declarations/mulindicator-biunion-apply--925965069674d79f8661118a.md) | 85 | `result-track:925965069674d79f8661118ab2debdd528ff5fad9131e8dbcd94c798447e2c5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
