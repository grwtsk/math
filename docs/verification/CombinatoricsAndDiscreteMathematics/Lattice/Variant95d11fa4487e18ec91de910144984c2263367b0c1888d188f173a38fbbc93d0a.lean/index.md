# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lattice.Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f5ec5f5790bdad0d4cf330e94892bd3172a6a11",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f5ec5f5790bdad0d4cf330e94892bd3172a6a11`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.FinsetOps` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup--88f5ea242e53cd69036f68ff.md) | 37 | `declaration-track:88f5ea242e53cd69036f68ffb0ef13810ab6dd904288482e65e2664c07dede4e` |
| 2 | `theorem` | [sup_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup-coe--69d104ce0244253d257518a9.md) | 42 | `result-track:69d104ce0244253d257518a9b53c2ba339cf7cccd2de7af88a977a37aaa7ad6d` |
| 3 | `theorem` | [sup_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup-zero--9c6c0ca9eaa4e8df2f7a3121.md) | 47 | `result-track:9c6c0ca9eaa4e8df2f7a31215834c7b9f63409db0bfbffa96405efa6c894db5a` |
| 4 | `theorem` | [sup_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup-cons--65680a3ddbf875dc8af83edb.md) | 52 | `result-track:65680a3ddbf875dc8af83edb838740d7f5d29891a387daec928a43d23ff5a15d` |
| 5 | `theorem` | [sup_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup-singleton--e7ee4224fb635414cb0ecdaa.md) | 57 | `result-track:e7ee4224fb635414cb0ecdaafb8cadbe86ae75792e43651d76102ce1497fb2c4` |
| 6 | `theorem` | [sup_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup-add--d0401a692122e5b2b2cbf041.md) | 62 | `result-track:d0401a692122e5b2b2cbf041468bdf135511eeac14c94477240c385ce8a94288` |
| 7 | `theorem` | [sup_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup-le--6e847bcc3f4e84c75f44dd94.md) | 66 | `result-track:6e847bcc3f4e84c75f44dd94e0439c8d4d2c25833df38c7ba7f470aa4a97d7be` |
| 8 | `theorem` | [le_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/le-sup--807e29ab42efe4e4039f47cc.md) | 71 | `result-track:807e29ab42efe4e4039f47cce6a811cbe750cf6434e4898991900082e5d548bd` |
| 9 | `theorem` | [sup_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup-mono--39fcbaec17f9d9e6e7e8afd9.md) | 75 | `result-track:39fcbaec17f9d9e6e7e8afd975a23e3764a29d870f6ef70e6bc375ecfecb06aa` |
| 10 | `theorem` | [sup_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup-dedup--b3a00b3f1bfb459ce0dd1b55.md) | 82 | `result-track:b3a00b3f1bfb459ce0dd1b55fd2062fa6054940065e751e8e370ec3e28e7e5b8` |
| 11 | `theorem` | [sup_ndunion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup-ndunion--119272825c306f612040c443.md) | 87 | `result-track:119272825c306f612040c44377baf5040fc75743dc0e7f3498b99560cc482e59` |
| 12 | `theorem` | [sup_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup-union--62618df11e202460a10cf509.md) | 92 | `result-track:62618df11e202460a10cf509b6667cf8f37d2f48abff504199ef00806cf985b2` |
| 13 | `theorem` | [sup_ndinsert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/sup-ndinsert--a5756596120931b3475c0170.md) | 97 | `result-track:a5756596120931b3475c0170035b948a0392db588aec01387ea39b3c9c60b3cb` |
| 14 | `theorem` | [nodup_sup_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/nodup-sup-iff--a0c474ae812ad49e04f2d91c.md) | 101 | `result-track:a0c474ae812ad49e04f2d91cf7651cf9bd1d89568b15e393d322736831bef556` |
| 15 | `def` | [inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf--fef1c40151f75315dfc00044.md) | 121 | `declaration-track:fef1c40151f75315dfc000447bec6b474cd4c9241da4dcfa13a143f848767ab3` |
| 16 | `theorem` | [inf_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf-coe--0c1f20c24b4b141d0261cf4f.md) | 126 | `result-track:0c1f20c24b4b141d0261cf4f625acd2c233096dce0889b256a65aefe65cd05b6` |
| 17 | `theorem` | [inf_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf-zero--b5270b4a213e4a4019364acf.md) | 131 | `result-track:b5270b4a213e4a4019364acfbf0c6230413658cc5ba1b0d4370fb639b39038a4` |
| 18 | `theorem` | [inf_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf-cons--080bfc3da43ea7875e3242da.md) | 136 | `result-track:080bfc3da43ea7875e3242dabe0afded2286cab33e7d1489be721948cf1985fa` |
| 19 | `theorem` | [inf_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf-singleton--31d3ffc4ee64a05071cd3bd1.md) | 141 | `result-track:31d3ffc4ee64a05071cd3bd174837d8b4d6e87402175ca6df096ece8ccedadd7` |
| 20 | `theorem` | [inf_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf-add--9131cc41f617605850dc26c9.md) | 146 | `result-track:9131cc41f617605850dc26c9dd92472a075f13c8cd7f209f25566bded71fdb00` |
| 21 | `theorem` | [le_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/le-inf--e390ed0e69bfcda015ebe2bb.md) | 150 | `result-track:e390ed0e69bfcda015ebe2bb7a1af2081f4b68720e9eb527f5560597080935e4` |
| 22 | `theorem` | [inf_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf-le--6e1bee638d960dd4c49c7177.md) | 155 | `result-track:6e1bee638d960dd4c49c71774bb67d5c53973b817564269879ee1b51b1e18f7e` |
| 23 | `theorem` | [inf_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf-mono--9621be261f9f14bf55ad4a99.md) | 159 | `result-track:9621be261f9f14bf55ad4a9983a4f07b2c47b6e9e970b27a36ba67c2ea5e4ccd` |
| 24 | `theorem` | [inf_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf-dedup--e7d6eb2b969d7b49b877d0c1.md) | 166 | `result-track:e7d6eb2b969d7b49b877d0c11d50275c516bcf1d9f5de108ae9540558a657a95` |
| 25 | `theorem` | [inf_ndunion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf-ndunion--4d17b3cd863c914e2fb9ab12.md) | 171 | `result-track:4d17b3cd863c914e2fb9ab1255a151306f5cd6c21e9257318ae9a1f093d95a5f` |
| 26 | `theorem` | [inf_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf-union--aac63d03bdd9bf10aede8e04.md) | 176 | `result-track:aac63d03bdd9bf10aede8e04da12840b6bc5d38c958c9e0093dbbbf11058f0fa` |
| 27 | `theorem` | [inf_ndinsert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variant95d11fa4487e18ec91de910144984c2263367b0c1888d188f173a38fbbc93d0a.lean/declarations/inf-ndinsert--36f9ae4b0cf876279f91ed9c.md) | 181 | `result-track:36f9ae4b0cf876279f91ed9cac18c129e961a6664d384b469f72f40393c4caaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
