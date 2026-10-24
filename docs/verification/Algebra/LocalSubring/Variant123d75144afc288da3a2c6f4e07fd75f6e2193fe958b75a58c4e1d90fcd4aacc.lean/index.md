# Verification target: GRWTSK.Algebra.LocalSubring.Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8799df0564fc3ad2e388effbfe78be11707c5feb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8799df0564fc3ad2e388effbfe78be11707c5feb`.

Source path: `GRWTSK/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/instance--bdeac35f2119135465f6c835.md) | 35 | `declaration-track:bdeac35f2119135465f6c8354ba38dc809ed4cc70547e8aaefd5d3e56e7279b1` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/instance--aad242d2f797da205c7d98af.md) | 38 | `declaration-track:aad242d2f797da205c7d98af5c8d7ce0706db9260e8d04744d165acaa0e95e9d` |
| 3 | `def` | [ValuationSubring.toLocalSubring](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/valuationsubring-tolocalsubring--03f35f382e4db789e1f752cd.md) | 42 | `declaration-track:03f35f382e4db789e1f752cddd8bf38289c1a34cc3f327a58a827bed5edf6cbf` |
| 4 | `lemma` | [ValuationSubring.toLocalSubring_injective](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/valuationsubring-tolocalsubring-injective--1374102ea4894f2d975ae166.md) | 46 | `result-track:1374102ea4894f2d975ae166f257f241a2b0338525af4dd0d4d1f0e897b302d8` |
| 5 | `lemma` | [LocalSubring.map_maximalIdeal_eq_top_of_isMax](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/localsubring-map-maximalideal-eq-top-of-ismax--b0b7315747db0878f402928c.md) | 50 | `result-track:b0b7315747db0878f402928cf36a9bc6330b3fefccf58663fda5a71e32e884a3` |
| 6 | `lemma` | [LocalSubring.mem_of_isMax_of_isIntegral](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/localsubring-mem-of-ismax-of-isintegral--893be3a272cae00cda7095f8.md) | 66 | `result-track:893be3a272cae00cda7095f88042dd58da2f8749262d7f0a995b0246eb43e1ce` |
| 7 | `lemma` | [ValuationSubring.isMax_toLocalSubring](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/valuationsubring-ismax-tolocalsubring--788f4e739adaeaadd95e1a2f.md) | 82 | `result-track:788f4e739adaeaadd95e1a2f6402082be21cea610c328b25a2c507ea4d06974f` |
| 8 | `lemma` | [LocalSubring.exists_valuationRing_of_isMax](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/localsubring-exists-valuationring-of-ismax--53b33df0b9a86e3f5c63a559.md) | 95 | `result-track:53b33df0b9a86e3f5c63a55950c4139914c0881aa67dc437264f0bcd81a301e8` |
| 9 | `lemma` | [LocalSubring.isMax_iff](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/localsubring-ismax-iff--fbb7da524dbf3295a4e4b4fe.md) | 113 | `result-track:fbb7da524dbf3295a4e4b4fe2536952109462c8958104e0d910cdc6717cf95bd` |
| 10 | `lemma` | [LocalSubring.exists_le_valuationSubring](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/localsubring-exists-le-valuationsubring--26e81e8c4ffa5e1b183e3c3c.md) | 118 | `result-track:26e81e8c4ffa5e1b183e3c3c2c2c4fdda1ac24e0ab1064c55044f01ed432c952` |
| 11 | `lemma` | [Ideal.image_subset_nonunits_valuationSubring](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/ideal-image-subset-nonunits-valuationsubring--01fb503a09494452a71d14d8.md) | 145 | `result-track:01fb503a09494452a71d14d8a400fe47cedbc8350ae6d9f190bd6df291c8f8f3` |
| 12 | `lemma` | [Subring.exists_le_valuationSubring_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/subring-exists-le-valuationsubring-of-isintegrallyclosedin--e8038980e5f4ffa639fb0b58.md) | 158 | `result-track:e8038980e5f4ffa639fb0b58f95dce20f8e71dc8a7e2844071f2f8bc6b3cad58` |
| 13 | `lemma` | [LocalSubring.exists_le_valuationSubring_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/localsubring-exists-le-valuationsubring-of-isintegrallyclosedin--e4e3d4bccd4611de949e8fb1.md) | 175 | `result-track:e4e3d4bccd4611de949e8fb1954796e941f6fcd4af4a3bdda8e93c9f329d6de4` |
| 14 | `lemma` | [Subring.eq_iInf_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/subring-eq-iinf-of-isintegrallyclosedin--6651dd60725fae51f13e029d.md) | 199 | `result-track:6651dd60725fae51f13e029d496a9e1e1727d35af9e613e02c7c58f009e65391` |
| 15 | `lemma` | [LocalSubring.eq_iInf_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/localsubring-eq-iinf-of-isintegrallyclosedin--6acad76b01153c2cdffcc033.md) | 207 | `result-track:6acad76b01153c2cdffcc033ddd442f7a8c6aed9d5e870313407538fc7a87735` |
| 16 | `lemma` | [iInf_valuationSubring_superset](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/iinf-valuationsubring-superset--fbc1ff5f3b43b2061cf0d83a.md) | 216 | `result-track:fbc1ff5f3b43b2061cf0d83acd2b3a2e9103ffb94a4d57c52d01a80b26b47621` |
| 17 | `lemma` | [bijective_rangeRestrict_comp_of_valuationRing](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/bijective-rangerestrict-comp-of-valuationring--9738613b8913854ac66d213e.md) | 226 | `result-track:9738613b8913854ac66d213ede344b5af6acfd465bb777dfd9ef5a5c40022154` |
| 18 | `lemma` | [IsLocalRing.exists_factor_valuationRing](../../../../mathematics/Algebra/LocalSubring/Variant123d75144afc288da3a2c6f4e07fd75f6e2193fe958b75a58c4e1d90fcd4aacc.lean/declarations/islocalring-exists-factor-valuationring--0b1b483f70a1ce68538a649d.md) | 250 | `result-track:0b1b483f70a1ce68538a649dcc5a971896aa8d67d8eed048f0fa0a86b06e95d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
