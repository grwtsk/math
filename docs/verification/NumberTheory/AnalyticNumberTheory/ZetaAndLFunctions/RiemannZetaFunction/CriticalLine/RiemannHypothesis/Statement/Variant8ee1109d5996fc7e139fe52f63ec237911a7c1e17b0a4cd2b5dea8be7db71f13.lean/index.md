# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Statement.Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5d1a39682f1613299c97de4f413b68bc6078201",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5d1a39682f1613299c97de4f413b68bc6078201`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Hypotheses` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Counting` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsNontrivialZero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/isnontrivialzero--4afc9cc346e6a40a3a2d46b2.md) | 38 | `declaration-track:4afc9cc346e6a40a3a2d46b2c3431c94d2465ffabb19151c4a197e36ba82239b` |
| 2 | `def` | [zeroMult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zeromult--d3f5dcd65f26d037253ab119.md) | 43 | `declaration-track:d3f5dcd65f26d037253ab11956a3f91ef9f2a58c22feddf7f618983490b9c5a6` |
| 3 | `def` | [zerosIn](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zerosin--d0075711e54c1165a7fa598c.md) | 46 | `declaration-track:d0075711e54c1165a7fa598c0e93c0590f174c6a00f8d56004ad8f3f769e3cd8` |
| 4 | `def` | [Ncount](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/ncount--35d6378a62f958e3c705fd6b.md) | 49 | `declaration-track:35d6378a62f958e3c705fd6bb3251191fb5ab0a599503b22a26da5ea36922b0f` |
| 5 | `def` | [Ndist](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/ndist--3fbc74277742bef9d10c7ee5.md) | 52 | `declaration-track:3fbc74277742bef9d10c7ee55df2a9ff5118e076132f9ffade4ba67535880cf9` |
| 6 | `def` | [N0](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/n0--2b447f62b137408f8a058fee.md) | 56 | `declaration-track:2b447f62b137408f8a058feefc09f9268532e776cbe44551fe0682bb3a8917cc` |
| 7 | `def` | [N0star](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/n0star--e7baff5d8a221056608d4e4e.md) | 59 | `declaration-track:e7baff5d8a221056608d4e4ec62436ac6c32612797e5f0e63998234846c17739` |
| 8 | `def` | [N0simple](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/n0simple--e6718a8e5739e77f00e9988d.md) | 62 | `declaration-track:e6718a8e5739e77f00e9988dd6746c8602ef81ac0be15008e0d53714080cc8b5` |
| 9 | `def` | [Nsimple](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/nsimple--09d00a23ecbeb6e502349c65.md) | 65 | `declaration-track:09d00a23ecbeb6e502349c65fb3f36165dbf1e3eb71409374b59ed0982816d96` |
| 10 | `structure` | [ZetaSeam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetaseam--dcec91da40f6ae7d6769cca0.md) | 75 | `declaration-track:dcec91da40f6ae7d6769cca02ec1dd100f501d9a780a95a61eddca60ebb41cf6` |
| 11 | `def` | [zetaZeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetazeros--2ef8dbae8f2671a64037782b.md) | 88 | `declaration-track:2ef8dbae8f2671a64037782b8662369e590bdf2e19599f67cf5398472db6367b` |
| 12 | `lemma` | [zetaZeros_carrier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetazeros-carrier--d3ca65f90a186c32963e24d0.md) | 100 | `result-track:d3ca65f90a186c32963e24d06a91480ba46e3e37cfb3fc7203f640c9a838c29e` |
| 13 | `lemma` | [zetaZeros_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetazeros-mult--a6e70ad86ac7622c93b68fe5.md) | 101 | `result-track:a6e70ad86ac7622c93b68fe5e12ad64f78a18f99eb4610f3ee4993152be5ddf8` |
| 14 | `lemma` | [zetaZeros_simple](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetazeros-simple--8ac289b3c3e0eff48b824e18.md) | 102 | `result-track:8ac289b3c3e0eff48b824e18734bd0c2b5ae7c73b0100d0a2e5cd454c45e1c88` |
| 15 | `lemma` | [zetaZeros_window](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetazeros-window--b6241a695f0a4a488144c3ea.md) | 104 | `result-track:b6241a695f0a4a488144c3eaa066f99fd851adb18c5c9ef0d5c8a1589f80d08f` |
| 16 | `lemma` | [zetaZeros_N](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetazeros-n--cae403320a5fde9873a92e66.md) | 107 | `result-track:cae403320a5fde9873a92e66bb93ae74aca9158c146a8c671cfab39d28d59fc5` |
| 17 | `lemma` | [zetaZeros_Nd](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetazeros-nd--40ce5337e8ac0a287c2cd044.md) | 109 | `result-track:40ce5337e8ac0a287c2cd044a6a7fc38e033a43e37e3ab158b5e1a6d084d5d0c` |
| 18 | `lemma` | [zetaZeros_N0](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetazeros-n0--73b3849e9a55ff0aee0a8918.md) | 111 | `result-track:73b3849e9a55ff0aee0a89182005af6f240db310b5c179398285291fd58421c0` |
| 19 | `lemma` | [zetaZeros_N0star](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetazeros-n0star--642159d41b9be216aafa04c3.md) | 113 | `result-track:642159d41b9be216aafa04c3c665cc07d09a4c560f9a6f3b834e55e2b4b56536` |
| 20 | `lemma` | [zetaZeros_N0s](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetazeros-n0s--8b7d8797bd45368b715e9a2e.md) | 115 | `result-track:8b7d8797bd45368b715e9a2e1005dbbdfe2d0645f095f693554de5da025ee228` |
| 21 | `lemma` | [zetaZeros_Ns](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/zetazeros-ns--b6e826be543acbb93f3dc433.md) | 117 | `result-track:b6e826be543acbb93f3dc433a938fe1e7ce763e6f61caed3d56c8323e377bbfa` |
| 22 | `lemma` | [IsNontrivialZero.not_trivial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/isnontrivialzero-not-trivial--920b8db66f5b85a54f7452e1.md) | 126 | `result-track:920b8db66f5b85a54f7452e197e6e589650509b6ff6b373216b2cf949f809d5a` |
| 23 | `theorem` | [RH_implies_on_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/rh-implies-on-line--512df19babe8d1027e7ca04f.md) | 137 | `result-track:512df19babe8d1027e7ca04f56e1a03f97be22294d9d7b8b3b6293ee9f78189a` |
| 24 | `theorem` | [RH_implies_all_on_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/rh-implies-all-on-line--f2b983d4689de157012e91c2.md) | 144 | `result-track:f2b983d4689de157012e91c27769a16965380d6ced25832bbc16f93aa82f4460` |
| 25 | `theorem` | [trivial_chain](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/trivial-chain--c1e46efe774ea01e95dca14f.md) | 157 | `result-track:c1e46efe774ea01e95dca14ff49ded1ce43938de0e3f82f5fa9ca4d34a5f003f` |
| 26 | `def` | [ThmA_statement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/thma-statement--c867d870d8063bb767507dcb.md) | 179 | `declaration-track:c867d870d8063bb767507dcb1872b5c2c12a642d411b6b60439a3291f3d69455` |
| 27 | `def` | [ThmB_statement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/thmb-statement--b55d982217f969c1bd3b520e.md) | 183 | `declaration-track:b55d982217f969c1bd3b520ebff916e1b8286c638d10cac7335ff01d62948665` |
| 28 | `def` | [ThmC_statement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant8ee1109d5996fc7e139fe52f63ec237911a7c1e17b0a4cd2b5dea8be7db71f13.lean/declarations/thmc-statement--a740a620c7deba799a32e071.md) | 187 | `declaration-track:a740a620c7deba799a32e0719fb1b0507f774081386ee0e280f6eddc6857ec12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
