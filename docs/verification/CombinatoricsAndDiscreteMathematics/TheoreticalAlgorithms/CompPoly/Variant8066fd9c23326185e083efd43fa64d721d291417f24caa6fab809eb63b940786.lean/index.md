# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompPoly.Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb51518125dfc0f6a1398b6de99ca21d50fbe23a",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb51518125dfc0f6a1398b6de99ca21d50fbe23a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalDyadic` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Taylor` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Dy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/dy--79626008fa16159968e622e6.md) | 31 | `declaration-track:79626008fa16159968e622e6c925bdac3906c2dd8c852c78eff2eb0ac63f6bb4` |
| 2 | `structure` | [DyPoly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/dypoly--d5a8b1bba9e45db0d3d6c4dd.md) | 37 | `declaration-track:d5a8b1bba9e45db0d3d6c4dd8f52d6d3e4c36748fba83a8529424f4f9b7059db` |
| 3 | `def` | [zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/zero--7cde576b5c9445deae972dcc.md) | 43 | `declaration-track:7cde576b5c9445deae972dcc40e18f8b23c22a820b2bcee551afacb9f90eb3ec` |
| 4 | `def` | [const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/const--fc3e19470e74b5acc1f7d68c.md) | 45 | `declaration-track:fc3e19470e74b5acc1f7d68ca331efe77fa8c495ad33b77e16aeabb8df2423b0` |
| 5 | `def` | [coeff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/coeff--1f670d6ce719ade13e33d85c.md) | 48 | `declaration-track:1f670d6ce719ade13e33d85c9bb5ffed1bcb783031d835cccd7fb1812c41b123` |
| 6 | `def` | [evalInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/evalinterval--ff7f3193832baf3cc2e190ed.md) | 52 | `declaration-track:ff7f3193832baf3cc2e190ed5f28cd19177723482434a51736aeca1b97bc0ece` |
| 7 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/add--2b48795c2ac5659302a6b53c.md) | 59 | `declaration-track:2b48795c2ac5659302a6b53c9fa049d7fee12d5daafd0dd9e3f6ad5a65f64826` |
| 8 | `def` | [neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/neg--e0cc303c54248e3273b525c3.md) | 63 | `declaration-track:e0cc303c54248e3273b525c3f8deb7a076cf336dce9b061a6a55abf26e5762ca` |
| 9 | `def` | [scale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/scale--68954d4a467444e39385443a.md) | 67 | `declaration-track:68954d4a467444e39385443aa05d15baad973dbbbccae21d4dbec83a0130187b` |
| 10 | `def` | [normalize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/normalize--acc48bb0b641d8e0a4386163.md) | 71 | `declaration-track:acc48bb0b641d8e0a43861636d36be1d6e0d77cb766c15913c53567275874372` |
| 11 | `def` | [mulTrunc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/multrunc--50ecd12be3df921f14907990.md) | 76 | `declaration-track:50ecd12be3df921f14907990e1a4b56bbebb1bfb156f96e4ffbe15523a3a36c7` |
| 12 | `def` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/mul--c09ed7c2253235bc0e5cb03f.md) | 89 | `declaration-track:c09ed7c2253235bc0e5cb03fd195d8c1ed504f9661c59a65d2bd30fa61a5940a` |
| 13 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/tail--482b7f31cac6c698629c7c06.md) | 102 | `declaration-track:482b7f31cac6c698629c7c0616c7094cae0c166d5349b05437dde461f23a119d` |
| 14 | `def` | [antiderivativeCoeffDown](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/antiderivativecoeffdown--731a3a0ffb77c2a3ed337cdf.md) | 110 | `declaration-track:731a3a0ffb77c2a3ed337cdfe57bd1af2d03bf10fc53795325810d95f79cb62c` |
| 15 | `def` | [antiderivativeCoeffUp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/antiderivativecoeffup--8dd585240acd6d00f17f9a7d.md) | 121 | `declaration-track:8dd585240acd6d00f17f9a7d7ce1abe23f76c333bbcce2a59fac47fa7eaae296` |
| 16 | `def` | [definiteIntegral](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/definiteintegral--4cc70af94741ee913c17b89e.md) | 127 | `declaration-track:4cc70af94741ee913c17b89e3f013ea9d0dd7c2276d73108d9bdbcaf0e567af8` |
| 17 | `structure` | [DyTM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/dytm--639d6597c1acde0b071deb70.md) | 153 | `declaration-track:639d6597c1acde0b071deb7068b18ef2e0602b963cd8633e4341e5f41e2756d0` |
| 18 | `def` | [shiftedDomain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/shifteddomain--0367c3ce0065e45e38fc5360.md) | 163 | `declaration-track:0367c3ce0065e45e38fc5360657d7e398ac1630476630d2da92c678a159265b0` |
| 19 | `def` | [bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/bound--586423c15d7bdf86a18d81f5.md) | 166 | `declaration-track:586423c15d7bdf86a18d81f5785658389541296c76d056bfe462fafcbd91d051` |
| 20 | `def` | [const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/const--9e2fb5fbefbff4768fbada5c.md) | 169 | `declaration-track:9e2fb5fbefbff4768fbada5c6f756ffc7230725edf58835f485e290d199cd8ce` |
| 21 | `def` | [identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/identity--b30f983a91818304a2a0bc8b.md) | 176 | `declaration-track:b30f983a91818304a2a0bc8b3b9c05743f8831551e8b0212d816f4552059a160` |
| 22 | `def` | [add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/add--0e5f8fee869458fa446bafcc.md) | 184 | `declaration-track:0e5f8fee869458fa446bafcc99425e1ce79ec34bcda5a114983360138939f6f1` |
| 23 | `def` | [neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/neg--3ad77816bb6c5173385e440c.md) | 191 | `declaration-track:3ad77816bb6c5173385e440cfb8d205efbe3a4599669111f328ef533ae13f7e0` |
| 24 | `def` | [scaleDyadic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/scaledyadic--bbee368de5ca387d0edc2ee0.md) | 198 | `declaration-track:bbee368de5ca387d0edc2ee06cb0d4e64d16ad4ef131a8ba0a385828d04291b7` |
| 25 | `def` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/mul--1b25b0f3819387ef2bfac689.md) | 206 | `declaration-track:1b25b0f3819387ef2bfac689abd43aabc91755d8a462a0d60483ff5df4e770a1` |
| 26 | `def` | [inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/inv--aea0ba2c6da2be4a656bec92.md) | 227 | `declaration-track:aea0ba2c6da2be4a656bec92d78cf06c1d0f0163bc89cf01d09c0efcc79e2d82` |
| 27 | `def` | [log](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/log--93eb5e68cf2cbe9cacb2e152.md) | 274 | `declaration-track:93eb5e68cf2cbe9cacb2e15235bcab97703cf36579efae1bb0fdbec6df58c282` |
| 28 | `def` | [fromInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/frominterval--063d9a61f308ac282eb7cdb1.md) | 337 | `declaration-track:063d9a61f308ac282eb7cdb1b86c6d9c323b258a82e4f020891e3fbdb2de7b7d` |
| 29 | `def` | [dyTMFromExpr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/dytmfromexpr--0bd1a61b772159153f8db324.md) | 345 | `declaration-track:0bd1a61b772159153f8db324111a93399c44c619488f46d33013e33a87409e36` |
| 30 | `def` | [integrateDyTM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/integratedytm--b02add34f4cd26c687980149.md) | 387 | `declaration-track:b02add34f4cd26c6879801492721d1e0724ffb5ca2eeadd6fb03238fbad00dfd` |
| 31 | `def` | [integrateDyadicFallback](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/integratedyadicfallback--83aee9fcd783000c4eafaf02.md) | 401 | `declaration-track:83aee9fcd783000c4eafaf02c532b88c9531a718f1192fa12394f39a866ca749` |
| 32 | `def` | [integrateDyPolyAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/integratedypolyaux--3ecbc69d6e5f8d0892a149ea.md) | 409 | `declaration-track:3ecbc69d6e5f8d0892a149ea41bd1e89d5167f82ac4cd70679317c01dc40cefd` |
| 33 | `def` | [integrateDyPoly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/integratedypoly--536b38a5d940fe717c7a3d37.md) | 418 | `declaration-track:536b38a5d940fe717c7a3d3734746aa35e9c15ffb2f115ecabbae308c5b0232a` |
| 34 | `def` | [checkIntegralLowerBoundDyPoly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/checkintegrallowerbounddypoly--c04a412158697469af72ee95.md) | 423 | `declaration-track:c04a412158697469af72ee9593626fa17e72948a94bffa94631024ae7bbd29b6` |
| 35 | `def` | [checkIntegralUpperBoundDyPoly](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean/declarations/checkintegralupperbounddypoly--954aee3d15f7cc99f1a1db62.md) | 429 | `declaration-track:954aee3d15f7cc99f1a1db6222407b97a35b024e3ffd1e1c2634e31639093e41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
