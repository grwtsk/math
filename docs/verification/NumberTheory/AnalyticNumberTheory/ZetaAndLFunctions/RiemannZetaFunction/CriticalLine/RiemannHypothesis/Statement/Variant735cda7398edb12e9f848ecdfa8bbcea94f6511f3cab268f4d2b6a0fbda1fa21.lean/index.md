# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Statement.Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74085fe35de31f060aa2edeadc55e1487b856dce",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74085fe35de31f060aa2edeadc55e1487b856dce`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Hypotheses` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Counting` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsNontrivialZero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/isnontrivialzero--8d3ae92a54ed15f7db816996.md) | 46 | `declaration-track:8d3ae92a54ed15f7db816996936c2f3354ad5cfdd096716f76a04f4e73dccafb` |
| 2 | `def` | [zeroMult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zeromult--0587e5046742f207a92fb28c.md) | 51 | `declaration-track:0587e5046742f207a92fb28cf2511b6930720240b672642ca32a1bb4973d333e` |
| 3 | `def` | [zerosIn](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zerosin--98b264f99b00943fde612329.md) | 54 | `declaration-track:98b264f99b00943fde612329ebd75c5b94048f4294bf95765e25ab4c3adcd5cc` |
| 4 | `def` | [Ncount](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/ncount--0916fa2d8247743a3c3aa7f6.md) | 57 | `declaration-track:0916fa2d8247743a3c3aa7f6d4757bb1adde22c6ecba9aa6e794608abafd99fb` |
| 5 | `def` | [Ndist](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/ndist--f344649982a337055046c488.md) | 60 | `declaration-track:f344649982a337055046c48832ef7163a9f834277a8cd3ed771f032fad24f685` |
| 6 | `def` | [N0](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/n0--2e50692253c637b980a4fb4e.md) | 64 | `declaration-track:2e50692253c637b980a4fb4ec84f7385362bd4776a0e402c47fde1c5bb539e67` |
| 7 | `def` | [N0star](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/n0star--d6bc4db77c54f71b48233ed8.md) | 67 | `declaration-track:d6bc4db77c54f71b48233ed80acdfc2133f7de7eca9b21e2ce5167227844d481` |
| 8 | `def` | [N0simple](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/n0simple--4ea88639c2ed43c9c35c1456.md) | 70 | `declaration-track:4ea88639c2ed43c9c35c14562e8af4ade1622bf4115361cd5ae665bfbab1b02d` |
| 9 | `def` | [Nsimple](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/nsimple--71160dd0424ae27319c3856d.md) | 73 | `declaration-track:71160dd0424ae27319c3856dad72f542d947ace70d2dc065267e5bd7d090d439` |
| 10 | `structure` | [ZetaSeam](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetaseam--8b7e949a6e8ef349c476cf43.md) | 83 | `declaration-track:8b7e949a6e8ef349c476cf43f2f4436df1c605e2c9c2457062a1f819478f98cb` |
| 11 | `def` | [zetaZeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetazeros--3bfb54bd3751ea4121cfb455.md) | 96 | `declaration-track:3bfb54bd3751ea4121cfb455f77cc4eeac5452920d6183f5ba037bc55512c9c8` |
| 12 | `lemma` | [zetaZeros_carrier](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetazeros-carrier--37086f18e8067a7bf9fd581f.md) | 108 | `result-track:37086f18e8067a7bf9fd581f15b9c71805bb1c0a22fbf63b4547d296c1846f7a` |
| 13 | `lemma` | [zetaZeros_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetazeros-mult--65d6eacfd34c5f69879ebe2f.md) | 109 | `result-track:65d6eacfd34c5f69879ebe2f14aefeff411f6dbad45f0996a30da371c7a1c21a` |
| 14 | `lemma` | [zetaZeros_simple](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetazeros-simple--445dc9263a1ab043a72d1e2f.md) | 110 | `result-track:445dc9263a1ab043a72d1e2fdfe6172848f3ca13b3ae148306da47d95509a0e8` |
| 15 | `lemma` | [zetaZeros_window](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetazeros-window--0bd1522a182d8ef63667a1e6.md) | 112 | `result-track:0bd1522a182d8ef63667a1e690d69e50995f266cecca2986d9a3477f4b4de42a` |
| 16 | `lemma` | [zetaZeros_N](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetazeros-n--c8d5374d632c23094681a1fe.md) | 115 | `result-track:c8d5374d632c23094681a1fe8dfd5f2e7b94b8729c701cac202592acdda1edeb` |
| 17 | `lemma` | [zetaZeros_Nd](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetazeros-nd--d94848e6fda513e5648f7858.md) | 117 | `result-track:d94848e6fda513e5648f7858983f82ad72d48f61c6238d0b4d9b447eeb4abce5` |
| 18 | `lemma` | [zetaZeros_N0](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetazeros-n0--69f0c70583cdf41d084548cd.md) | 119 | `result-track:69f0c70583cdf41d084548cdf060f584c52b19c2366b224bd0d9d12e37bef5ac` |
| 19 | `lemma` | [zetaZeros_N0star](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetazeros-n0star--7d33d5d0ead26c301a9b2cb4.md) | 121 | `result-track:7d33d5d0ead26c301a9b2cb4f96632f65f48648c2ff1a6abcf2413eb08f5b330` |
| 20 | `lemma` | [zetaZeros_N0s](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetazeros-n0s--b45e8f950c8d70c8f046a1de.md) | 123 | `result-track:b45e8f950c8d70c8f046a1de3667878a5cd28a925c20374d94dc7aa77ae634f2` |
| 21 | `lemma` | [zetaZeros_Ns](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/zetazeros-ns--58064c10032ef150e5c0a762.md) | 125 | `result-track:58064c10032ef150e5c0a76239b801d3b44e79e2e638cf567a843d4009b9bdd2` |
| 22 | `lemma` | [IsNontrivialZero.not_trivial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/isnontrivialzero-not-trivial--18f6da2f4e69b9e1bcbea5ed.md) | 134 | `result-track:18f6da2f4e69b9e1bcbea5edbe094253bf8ff9cc85fb115a4d950c0beac9e639` |
| 23 | `theorem` | [RH_implies_on_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/rh-implies-on-line--12f5791bc9a94cbd21c4616f.md) | 145 | `result-track:12f5791bc9a94cbd21c4616fe54e00297f3e4829506303281aafd344476abb28` |
| 24 | `theorem` | [RH_implies_all_on_line](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/rh-implies-all-on-line--9ce9b2a8df284dc969c29beb.md) | 152 | `result-track:9ce9b2a8df284dc969c29beb1adbf9670200ebe7d6ac8de5d1658309d9f680a8` |
| 25 | `theorem` | [trivial_chain](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/trivial-chain--4a5efa12939bd808b5cde3a1.md) | 165 | `result-track:4a5efa12939bd808b5cde3a1926f497021542b8aeb2cb0f6c6a8957d813a1c40` |
| 26 | `def` | [ThmA_statement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/thma-statement--ba952e294b24b3b45352d3a5.md) | 187 | `declaration-track:ba952e294b24b3b45352d3a5bcde90f2a1ae6aa58c942e768a14cefb7e107dac` |
| 27 | `def` | [ThmB_statement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/thmb-statement--37a34814cab98fb8d69d4136.md) | 191 | `declaration-track:37a34814cab98fb8d69d4136005f779c8a299243c5d65f6873727a71e27080e4` |
| 28 | `def` | [ThmC_statement](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant735cda7398edb12e9f848ecdfa8bbcea94f6511f3cab268f4d2b6a0fbda1fa21.lean/declarations/thmc-statement--7e16d156ae6b0d89a7aed72e.md) | 195 | `declaration-track:7e16d156ae6b0d89a7aed72e765a9d2b1fa5f3a65cfc9960efb2da01a9e6c7be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
