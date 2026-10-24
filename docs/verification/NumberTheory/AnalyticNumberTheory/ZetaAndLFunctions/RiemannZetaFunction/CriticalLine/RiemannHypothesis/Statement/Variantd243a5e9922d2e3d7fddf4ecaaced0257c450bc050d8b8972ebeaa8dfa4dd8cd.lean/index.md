# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Statement.Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcc9cce8b898614f0637715fe3a904a4fbb58039",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcc9cce8b898614f0637715fe3a904a4fbb58039`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Hypotheses` — import line 34; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Counting` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.DirichletContinuation` — import line 36; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 37; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsNontrivialZeroL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/isnontrivialzerol--015b37d05a43453a7ccfe6ba.md) | 56 | `declaration-track:015b37d05a43453a7ccfe6ba649159c6a99bc1ff69dabc7778011f0afba46a49` |
| 2 | `def` | [zeroMultL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/zeromultl--ac0ca2dba636bcc38394a3be.md) | 60 | `declaration-track:ac0ca2dba636bcc38394a3beefe35f4faa3a29af577b7443d2b09fa0bdfcc600` |
| 3 | `def` | [zerosInL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/zerosinl--0a51938aafad61540fd13ba6.md) | 63 | `declaration-track:0a51938aafad61540fd13ba66d9490bee77dbb11aa5ea42b1e0e299581701a2f` |
| 4 | `def` | [NcountL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/ncountl--16a76db202b617d387c19211.md) | 66 | `declaration-track:16a76db202b617d387c19211dc2f6edea6d193d7b4529ba72f3eb96248ffafe0` |
| 5 | `def` | [NdistL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/ndistl--e00e935e84807b85ef3997af.md) | 68 | `declaration-track:e00e935e84807b85ef3997af403d22bfec2d1e50fad2ee303f51e01fdedcaf64` |
| 6 | `def` | [N0L](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/n0l--065c75698a0f922d8aed3fbb.md) | 70 | `declaration-track:065c75698a0f922d8aed3fbbd9091225402d43e17569a0b42664f5e457972d6a` |
| 7 | `def` | [N0starL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/n0starl--2bc9302516d76ff9aede8d93.md) | 72 | `declaration-track:2bc9302516d76ff9aede8d93151e1a538381c723d0387f7f13581e593191fd98` |
| 8 | `def` | [N0simpleL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/n0simplel--a40706427893438dee9f6b69.md) | 74 | `declaration-track:a40706427893438dee9f6b69d9658abc4a16ad2ca252cc8c1f0a23fc0302e64c` |
| 9 | `def` | [NsimpleL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/nsimplel--98b55868a39098e63cb53d84.md) | 77 | `declaration-track:98b55868a39098e63cb53d849d1e96a3dffc9935093a7526385dbead4fa735af` |
| 10 | `structure` | [LSeam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/lseam--98c35b0ca8fb68847ac00165.md) | 87 | `declaration-track:98c35b0ca8fb68847ac00165414f3e5c8ece60d9651fb2d31eee9d9969ccd80b` |
| 11 | `def` | [LZeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/lzeros--a14e7572ff9767dcf5308a61.md) | 98 | `declaration-track:a14e7572ff9767dcf5308a618b2328936506cdb16b80d33c7a95eb1771e71006` |
| 12 | `lemma` | [LZeros_carrier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/lzeros-carrier--042e38acfc61668a452377c9.md) | 110 | `result-track:042e38acfc61668a452377c92b8c9f6a9b8e8c7d13928bc845b1eb50d2ed361e` |
| 13 | `lemma` | [LZeros_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/lzeros-mult--471b5bf8ea980ff085ef01bd.md) | 111 | `result-track:471b5bf8ea980ff085ef01bd88ee81a9543494fc61072ab5f80d9816867ff116` |
| 14 | `lemma` | [LZeros_simple](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/lzeros-simple--04a8755f34eab728c998014a.md) | 112 | `result-track:04a8755f34eab728c998014abd833c97a8483c25d6371f48179e491a3a2e095f` |
| 15 | `lemma` | [LZeros_window](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/lzeros-window--3d4057365178b9d8003f2975.md) | 114 | `result-track:3d4057365178b9d8003f29756951d6264e2fd3cd127f849d1b2e312615ab5c43` |
| 16 | `lemma` | [LZeros_N](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/lzeros-n--81562d9915b4d63d5eeb2e1f.md) | 117 | `result-track:81562d9915b4d63d5eeb2e1f7ca2023ff857537031a7398897f352bd821ca8fd` |
| 17 | `lemma` | [LZeros_Nd](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/lzeros-nd--be4282cbfc8dddef442b9386.md) | 119 | `result-track:be4282cbfc8dddef442b9386d972e6e076f7cdce8487ba4d83bf869e9c58ad84` |
| 18 | `lemma` | [LZeros_N0star](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/lzeros-n0star--1c8dc8ad5d4c7e3e134112d9.md) | 121 | `result-track:1c8dc8ad5d4c7e3e134112d98643954ad4599aac0f66dcd401d20ab848b9b213` |
| 19 | `lemma` | [LZeros_N0s](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/lzeros-n0s--28ba1f26e03ce642c95b2393.md) | 123 | `result-track:28ba1f26e03ce642c95b239387ee7bbbd364f5cf2cbdddcc3cce5f95cd0163fe` |
| 20 | `theorem` | [trivial_chainL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/trivial-chainl--ea62570a2809d18969762621.md) | 127 | `result-track:ea62570a2809d1896976262104ab04b078c106b7083b7524f2c6e1aac9feca12` |
| 21 | `def` | [parity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/parity--ab94ecad34033d79c6ec5294.md) | 148 | `declaration-track:ab94ecad34033d79c6ec529422468545e4b4ef1283ece21d420c4c2999eb08c5` |
| 22 | `def` | [coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variantd243a5e9922d2e3d7fddf4ecaaced0257c450bc050d8b8972ebeaa8dfa4dd8cd.lean/declarations/coeff--0971fccfeb9f2dc29612f078.md) | 151 | `declaration-track:0971fccfeb9f2dc29612f0783db7bf90da4da4db544afee6f8ce55f19b349661` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
