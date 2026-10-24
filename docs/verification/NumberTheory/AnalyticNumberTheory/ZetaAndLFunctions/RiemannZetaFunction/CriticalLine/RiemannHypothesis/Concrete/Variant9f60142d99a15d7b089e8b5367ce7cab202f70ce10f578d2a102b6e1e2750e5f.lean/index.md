# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Concrete.Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "164f6f3185ff95d6357bc7b46819ba8a6e294823",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `164f6f3185ff95d6357bc7b46819ba8a6e294823`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Traces` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Density` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Cross` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Trace` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Abel` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.WindowLocalHyps` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.Window` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Concrete` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumW2g](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/sumw2g--f9c7d1155dcda3bcaf9570d8.md) | 43 | `declaration-track:f9c7d1155dcda3bcaf9570d8716b75e9a594fb106a542dabca2fb4ac7e511022` |
| 2 | `def` | [sumSqDivW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/sumsqdivw--338336ac46e29e6b9b6ef0f8.md) | 47 | `declaration-track:338336ac46e29e6b9b6ef0f8d5e4d883a6ef620f7b3619501f107ca8eb702052` |
| 3 | `def` | [sumSqW](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/sumsqw--5b7d34fd0ebeb3f74d12d669.md) | 50 | `declaration-track:5b7d34fd0ebeb3f74d12d6699a72343da9671c1bac1ab71dba338a7bf20923e4` |
| 4 | `lemma` | [sumSqDivW_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/sumsqdivw-nonneg--7f77f19440b7ac86356e676b.md) | 52 | `result-track:7f77f19440b7ac86356e676bc40c663790dd0ff6e1648d41a8e22ea0c47a4654` |
| 5 | `lemma` | [sumSqW_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/sumsqw-nonneg--297b7850b3b43f53ed11b6b7.md) | 54 | `result-track:297b7850b3b43f53ed11b6b7043f5e85a807c57783bf4103c7c6480a14185792` |
| 6 | `def` | [PPInput](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/ppinput--1d5d12681af76e23effc7d69.md) | 62 | `declaration-track:1d5d12681af76e23effc7d69792dbc97dd729cdcbada53fe602581b3956bf87f` |
| 7 | `def` | [AdmFamily](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/admfamily--c8f10f7fff664eeec3a6f377.md) | 71 | `declaration-track:c8f10f7fff664eeec3a6f37727dab6bfb7cc0c9a42a3007cb8e40a379c2f2add` |
| 8 | `abbrev` | [Fw](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/fw--972bde3f0def56a0f88a78ee.md) | 79 | `declaration-track:972bde3f0def56a0f88a78ee6a81d893cb69958f238816e636e301ae2b340e07` |
| 9 | `def` | [concreteData](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/concretedata--06c6f8c397eec83900b35eb5.md) | 82 | `declaration-track:06c6f8c397eec83900b35eb5010ded237ab4c301734cc8ad6a5f1fb59129ff18` |
| 10 | `lemma` | [regime_eventually](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/regime-eventually--5c3092f7e49f72773260e78c.md) | 106 | `result-track:5c3092f7e49f72773260e78c60dde58c8c62adcac7297baa163cd568c7de6cd4` |
| 11 | `lemma` | [localHypsCore_eventually](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/localhypscore-eventually--86da30088eb53df92b596f15.md) | 121 | `result-track:86da30088eb53df92b596f15ce0f3b9ed95a42693a7926f1d74100d9294169c0` |
| 12 | `lemma` | [S1_eventually](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/s1-eventually--253d0bee98793ef860d4b8be.md) | 132 | `result-track:253d0bee98793ef860d4b8befd278b500b68bd8e0af98e0f32cc697fd8e81ea0` |
| 13 | `lemma` | [sumSq_eventually](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/sumsq-eventually--4c8bf4d3a4d1c43de200b657.md) | 142 | `result-track:4c8bf4d3a4d1c43de200b6576c65f16b6a09396fa343dc2317fb981f5f50b6e2` |
| 14 | `lemma` | [D_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/d-bound--324acdf95f67e19eb2bf4b8c.md) | 152 | `result-track:324acdf95f67e19eb2bf4b8c6a428dc92284ff66219bc0454472f48bcd9c7244` |
| 15 | `lemma` | [sumSqDiv_eventually](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/sumsqdiv-eventually--321128127d468fc392b69bd0.md) | 157 | `result-track:321128127d468fc392b69bd04f7cbd4ca8839f026e41a8015d0b45e6bcccc922` |
| 16 | `lemma` | [gv_deriv_facts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/gv-deriv-facts--7cdb5399fa1e97785c25c32d.md) | 184 | `result-track:7cdb5399fa1e97785c25c32d28bbd6ff42bd0e95ffeefb242ff9bdbee0553bd9` |
| 17 | `lemma` | [eventually_of_core](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/eventually-of-core--1353cb92e635b2ed50cde70e.md) | 201 | `result-track:1353cb92e635b2ed50cde70ee5102e4fbc0e2b09162bbadd97c8fa5d396742e3` |
| 18 | `theorem` | [concreteFacts](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/concretefacts--4bce1b5683fc12305d3bd386.md) | 210 | `result-track:4bce1b5683fc12305d3bd386f77b4c73778c1f97ddb9c79eea7cf1885b134344` |
| 19 | `theorem` | [tracesBoundsXi_concrete](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant9f60142d99a15d7b089e8b5367ce7cab202f70ce10f578d2a102b6e1e2750e5f.lean/declarations/tracesboundsxi-concrete--960479d1b02fc62b86f024fa.md) | 466 | `result-track:960479d1b02fc62b86f024fab87c4d2109fa84f4a4736e22a810ae218b54ac78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
