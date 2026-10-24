# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Star.Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d0a0f93e6b79676cd2266916715ca8a6f6c54b9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d0a0f93e6b79676cd2266916715ca8a6f6c54b9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasDerivAtFilter.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/hasderivatfilter-star--6b55805e1a0bf505d2fb4387.md) | 37 | `result-track:6b55805e1a0bf505d2fb4387e186433ab9bea50a8b69f0134c1db199445e37e7` |
| 2 | `theorem` | [HasDerivWithinAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/hasderivwithinat-star--8ab3baf13b13a57be545cfda.md) | 41 | `result-track:8ab3baf13b13a57be545cfdab57ad111ed845f7d1faa5e27fd0e6c0c8163e5ea` |
| 3 | `theorem` | [HasDerivAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/hasderivat-star--1ed35a2f093cf6ffe617b576.md) | 45 | `result-track:1ed35a2f093cf6ffe617b5766ac5fca72616ab945dad7465d72525dad8174205` |
| 4 | `theorem` | [HasStrictDerivAt.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/hasstrictderivat-star--afea0fe743f0ac6f8efd5345.md) | 49 | `result-track:afea0fe743f0ac6f8efd53459c7945016dc4bb2083e487b5b53d943b1b6b8aa1` |
| 5 | `theorem` | [derivWithin.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/derivwithin-star--2283c3456aeef8ebabb0640b.md) | 53 | `result-track:2283c3456aeef8ebabb0640bd0f83c87ef8b38560d24b1339c3f947ffbd14424` |
| 6 | `theorem` | [deriv.star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/deriv-star--075d0b0161d73424b7201706.md) | 59 | `result-track:075d0b0161d73424b7201706645e0538690a4c5211c489c6b495962fe0825bdf` |
| 7 | `theorem` | [deriv.star'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/deriv-star--e1e9a1f5da6677462722e57d.md) | 63 | `result-track:e1e9a1f5da6677462722e57ddd0744ab052b26242e2eb57550416fae2ff7db25` |
| 8 | `lemma` | [HasDerivAt.star_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/hasderivat-star-conj--6d9cf20133bc13fc50227162.md) | 76 | `result-track:6d9cf20133bc13fc5022716201492a8b164195ce20e9df4e449cd04b8fe5c3be` |
| 9 | `lemma` | [hasDerivAt_star_conj_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/hasderivat-star-conj-iff--3d5997792ec76abafbed2162.md) | 86 | `result-track:3d5997792ec76abafbed21629d0c3a96e7d459cbfc37510b14792600e2db36fd` |
| 10 | `lemma` | [HasDerivAt.conj_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/hasderivat-conj-conj--0db28f9f070a704714e20020.md) | 93 | `result-track:0db28f9f070a704714e20020f9441070cc0455d11dd12e4b65124cbce5601c15` |
| 11 | `lemma` | [hasDerivAt_conj_conj_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/hasderivat-conj-conj-iff--f6c0f1b109df1b72ae3be148.md) | 100 | `result-track:f6c0f1b109df1b72ae3be148365eac5e8a04152c886f2b5df514ccc0acdb9d88` |
| 12 | `lemma` | [DifferentiableAt.star_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/differentiableat-star-conj--086f3bc4e60e8c24203bad9b.md) | 105 | `result-track:086f3bc4e60e8c24203bad9bb21fbd2c9ffd4bd5da150378786da0eef2104598` |
| 13 | `lemma` | [differentiableAt_star_conj_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/differentiableat-star-conj-iff--ec35b89450b14a24757a01d6.md) | 111 | `result-track:ec35b89450b14a24757a01d6681373671f58832641ab6efaa71d7ded294bf5ca` |
| 14 | `lemma` | [DifferentiableAt.conj_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/differentiableat-conj-conj--5c208ca6ce3cecd14427f46c.md) | 117 | `result-track:5c208ca6ce3cecd14427f46cf5ed495606676edbd804aa4378480a55085d57c9` |
| 15 | `lemma` | [differentiableAt_conj_conj_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/differentiableat-conj-conj-iff--7a36f72ede3bb5df644b9485.md) | 123 | `result-track:7a36f72ede3bb5df644b94851c86d874395f0fd84a8793396fba6d324d2f3948` |
| 16 | `lemma` | [deriv_star_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/deriv-star-conj--2945233e556037507a0b9171.md) | 129 | `result-track:2945233e556037507a0b91719fe04f4e09cfb4c020d9bfca308c3c3f821d251e` |
| 17 | `lemma` | [deriv_conj_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Star/Variant070eb2cd0ab418614929e493a469232512682ee65da768d72491565c661d88c9.lean/declarations/deriv-conj-conj--5612be54c8129c5eb72d1241.md) | 139 | `result-track:5612be54c8129c5eb72d1241974e672877c8562cb9b9f87949c5ec9d1d303bab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
