# Verification target: GRWTSK.Analysis.SpecialFunctions.IntervalEvalDyadic.Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "416f03a2e1f7ed79cc306cd97a6cc17f15baf6aa",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `416f03a2e1f7ed79cc306cd97a6cc17f15baf6aa`.

Source path: `GRWTSK/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DyadicConfig](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/dyadicconfig--0a6685a08ab440cd57cc9a15.md) | 67 | `declaration-track:0a6685a08ab440cd57cc9a15e0c7a6ac0b34bf02bddcc44005e6f6b6c5cf6dcc` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/instance--6fa63b4a52b681c5e6a09145.md) | 77 | `declaration-track:6fa63b4a52b681c5e6a0914536d560b90d53b7c481a964b928ec2cc48ad8ae70` |
| 3 | `def` | [DyadicConfig.highPrecision](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/dyadicconfig-highprecision--e5afa5cda123b79376c2f9bb.md) | 80 | `declaration-track:e5afa5cda123b79376c2f9bb853de8555334b227be3e17c55e0851ce842e1241` |
| 4 | `def` | [DyadicConfig.fast](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/dyadicconfig-fast--8fece773b7d5bb0a03f3480d.md) | 84 | `declaration-track:8fece773b7d5bb0a03f3480d4cfdc7e7f6ad17b2ea385631d96e3b618f04e117` |
| 5 | `abbrev` | [IntervalDyadicEnv](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/intervaldyadicenv--b03d7666ae10f83ef28630df.md) | 90 | `declaration-track:b03d7666ae10f83ef28630dfc43c491323fc44ea15d2747af4fda73f61971e36` |
| 6 | `def` | [toDyadicEnv](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/todyadicenv--13b7f6e4ca27b9a0bc5d2713.md) | 93 | `declaration-track:13b7f6e4ca27b9a0bc5d2713e45b96bec16c7b43798870844f9a24ee0c5bd48e` |
| 7 | `def` | [sinIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/sinintervaldyadic--255d91daddb7d750ef68f3e0.md) | 99 | `declaration-track:255d91daddb7d750ef68f3e007581f1369f5d443239bf0f760dfcfd4ca9c925b` |
| 8 | `def` | [cosIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/cosintervaldyadic--c56f071d35cd054dba162c1f.md) | 105 | `declaration-track:c56f071d35cd054dba162c1fd7b3fdd22844c860eebc70307fb5f73c0652f5c0` |
| 9 | `def` | [expIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/expintervaldyadic--ad9088f286bc1eaa9b623acb.md) | 111 | `declaration-track:ad9088f286bc1eaa9b623acb25e25c22406f44d1bd8b6a1243bd79bfc78174d5` |
| 10 | `def` | [sinhIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/sinhintervaldyadic--3f49ac5b5a7563e836a9534e.md) | 117 | `declaration-track:3f49ac5b5a7563e836a9534ed8da8b197ce2ea9594119e08c8eb88f4a438bab2` |
| 11 | `def` | [coshIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/coshintervaldyadic--f1f48d2cbdb868c4b29ba3ab.md) | 123 | `declaration-track:f1f48d2cbdb868c4b29ba3ab124ea1d3d603273487a9b9e7cc8594c735c7bafb` |
| 12 | `def` | [atanIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/atanintervaldyadic--498029fbe2c04627f4fb361c.md) | 129 | `declaration-track:498029fbe2c04627f4fb361cec32de7c97073b81a8dd7f3b21b347df9643a66a` |
| 13 | `def` | [tanhIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/tanhintervaldyadic--f6ab1a36e396b676e8c12a34.md) | 135 | `declaration-track:f6ab1a36e396b676e8c12a347f1d66f934a0a8b71c86c9e3b47423c5dcc36e45` |
| 14 | `def` | [arsinhIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/arsinhintervaldyadic--0c3293ce3b1d6e5f7e11fd98.md) | 141 | `declaration-track:0c3293ce3b1d6e5f7e11fd98daebb8cba2240eef1d4ce463e2cf76d4569d5562` |
| 15 | `def` | [atanhIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/atanhintervaldyadic--1aa6a1d78f44bc93fcc31208.md) | 147 | `declaration-track:1aa6a1d78f44bc93fcc31208bb270e6c837289e1280bbf7cff583b5b6a2e5433` |
| 16 | `def` | [sincIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/sincintervaldyadic--4ee0e446d6454771a0d8f794.md) | 153 | `declaration-track:4ee0e446d6454771a0d8f794f6df93553ad84d019fba39611f3ae5aa48b5ae61` |
| 17 | `def` | [erfIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/erfintervaldyadic--05d602f9ff6a0dd2a19cdeb5.md) | 159 | `declaration-track:05d602f9ff6a0dd2a19cdeb59e501679e3649f268f23bdbd77b894ea8cea865f` |
| 18 | `def` | [invIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/invintervaldyadic--06aa9431a9516bd94f4eeff6.md) | 165 | `declaration-track:06aa9431a9516bd94f4eeff637493da753885448bde5d6aedd5c61ba962dbd0d` |
| 19 | `def` | [sqrtIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/sqrtintervaldyadic--ada587b3c0c8324ffaba3764.md) | 171 | `declaration-track:ada587b3c0c8324ffaba37645a4986aa29e321de98b3d2c7cf48c8cdef9240d0` |
| 20 | `def` | [logIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/logintervaldyadic--2d604223fa68080cea7911cf.md) | 179 | `declaration-track:2d604223fa68080cea7911cf9fe18a6337306fe7bae7564275af22e2537b76c4` |
| 21 | `def` | [rpowIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/rpowintervaldyadic--b8e1aa01f64b35b6d0401dd0.md) | 198 | `declaration-track:b8e1aa01f64b35b6d0401dd0778c60ece3a6fb6b93a466d59caeb015125d1301` |
| 22 | `theorem` | [mem_rpowIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/mem-rpowintervaldyadic--02d09c2a9e9b8f2cdf43aa11.md) | 206 | `result-track:02d09c2a9e9b8f2cdf43aa11ec479241463713e33a518049265452ae2e5157c0` |
| 23 | `def` | [evalIntervalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/evalintervaldyadic--735a1165f80bfff780ec70c0.md) | 248 | `declaration-track:735a1165f80bfff780ec70c08460f6c4a85ac14a6e086c052f07373dec62322c` |
| 24 | `def` | [envMemDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/envmemdyadic--bd148a7072ab4a03ad033d14.md) | 284 | `declaration-track:bd148a7072ab4a03ad033d142f859c52ac5877d93596b96e151b9cca50aba509` |
| 25 | `def` | [evalDomainValidDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/evaldomainvaliddyadic--1e1869c60320c5e48cbea21f.md) | 290 | `declaration-track:1e1869c60320c5e48cbea21f83cdab23262949ef62d71bb088f5ee50af61efc6` |
| 26 | `def` | [checkDomainValidDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/checkdomainvaliddyadic--2d6eec09f56155e5856165b1.md) | 318 | `declaration-track:2d6eec09f56155e5856165b1ad2f86f8da7f6ecca99a6cbe85ac40e2fa68eda9` |
| 27 | `theorem` | [checkDomainValidDyadic_correct](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/checkdomainvaliddyadic-correct--c859324953e5d04b7c23a064.md) | 346 | `result-track:c859324953e5d04b7c23a064ee0e44647ae49def3a9438b5fb4a3b278b8cddcf` |
| 28 | `theorem` | [evalDomainValidDyadic_of_ExprSupported](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/evaldomainvaliddyadic-of-exprsupported--848bae37a8c5059cbaa8435f.md) | 383 | `result-track:848bae37a8c5059cbaa8435f75c6cf5f671d30af93b4b98336c685d19d2db9b6` |
| 29 | `theorem` | [evalIntervalDyadic_correct](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/evalintervaldyadic-correct--f85769127a3cd3f809bace20.md) | 406 | `result-track:f85769127a3cd3f809bace20ef4e1ea39fd3d359553b7749367cb564ea8ce0c3` |
| 30 | `theorem` | [evalIntervalDyadic_correct_withInv](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/evalintervaldyadic-correct-withinv--e9cff823a68e190e3b0e4143.md) | 517 | `result-track:e9cff823a68e190e3b0e414378630210287469222cbe03decb37451d72614421` |
| 31 | `def` | [evalDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/evaldyadic--39e4e8a99707395867115a09.md) | 624 | `declaration-track:39e4e8a99707395867115a0968a9548d80c94e1ec61b7b6033dc89dcbe3df552` |
| 32 | `def` | [evalDyadicHighPrec](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/evaldyadichighprec--6db351b37102ecd96bc85590.md) | 628 | `declaration-track:6db351b37102ecd96bc85590e2229871c2b86ac450b1e71dd3fd32573dd3732a` |
| 33 | `def` | [evalDyadicFast](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/evaldyadicfast--c14a4ee534d8609a9a2ab47d.md) | 632 | `declaration-track:c14a4ee534d8609a9a2ab47d89cd3120d24c1fd142626baef8df74a0272220cd` |
| 34 | `def` | [checkUpperBoundDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/checkupperbounddyadic--ecd5d404599eb267504ad09f.md) | 638 | `declaration-track:ecd5d404599eb267504ad09f6258bc8639e48383992a7459daee0acdf61b305f` |
| 35 | `def` | [checkLowerBoundDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/checklowerbounddyadic--34de5da4bfe4da2c9aa61b95.md) | 643 | `declaration-track:34de5da4bfe4da2c9aa61b9585b4dba8ef07f8d48036bd5299b1306ba1f01928` |
| 36 | `def` | [checkBoundsDyadic](../../../../../mathematics/Analysis/SpecialFunctions/IntervalEvalDyadic/Variant70cd8e649725038411b2055d8b796f61d3d6d2304b9b6c04913af1b3ed302289.lean/declarations/checkboundsdyadic--42abf5a2468c8da5c95a4e31.md) | 648 | `declaration-track:42abf5a2468c8da5c95a4e31e452db3b21ee65272abbc40b531087aa314dbff0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
