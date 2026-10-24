# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sigmoid.Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3c1b3bb3e098f87ba6ae4f4e53d3276819873b6",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3c1b3bb3e098f87ba6ae4f4e53d3276819873b6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Symbolic.ReLU` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RealLinearBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/reallinearbound--621fb7250a1b5a16836646f6.md) | 54 | `declaration-track:621fb7250a1b5a16836646f6f93315396809a19548078148810ba3ff052802c5` |
| 2 | `def` | [RealLinearBound.eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/reallinearbound-eval--ab617975dd1066b716e41ff1.md) | 59 | `declaration-track:ab617975dd1066b716e41ff12d0987e4bcd3382caf2acc81a14e087e4af49ed2` |
| 3 | `structure` | [RealSymbolicBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/realsymbolicbound--e2193eeeaef34c8c92778100.md) | 63 | `declaration-track:e2193eeeaef34c8c927781006d6117efee47e3db53bf670e627e7476104217e6` |
| 4 | `def` | [sigmoid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid--379f1f54202cf3c5192e0767.md) | 70 | `declaration-track:379f1f54202cf3c5192e076759df4bc0e47203290ccffb484296b6e1b0840b5a` |
| 5 | `theorem` | [sigmoid_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-pos--0d7da5cd9042c63c20b5bdc2.md) | 73 | `result-track:0d7da5cd9042c63c20b5bdc22c85160983a546d3c91b7c4bca1952646206661e` |
| 6 | `theorem` | [sigmoid_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-lt-one--9ad6b2dd80884ab8e63df907.md) | 79 | `result-track:9ad6b2dd80884ab8e63df9072664d7e47cd6c6604be41103c1a64dcd0f0a68dd` |
| 7 | `theorem` | [sigmoid_mem_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-mem-ioo--38c4593519479dfbcbc01af3.md) | 85 | `result-track:38c4593519479dfbcbc01af36a9767c964654713e943095e8d9bc816364294e5` |
| 8 | `theorem` | [sigmoid_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-nonneg--1c524cbf7f2ff8f66af0bdda.md) | 89 | `result-track:1c524cbf7f2ff8f66af0bdda0dba95c7501e411282f9625fd5b1d9630a3ec191` |
| 9 | `theorem` | [sigmoid_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-le-one--aac64729d3b49c56e4e54f81.md) | 91 | `result-track:aac64729d3b49c56e4e54f813d159045c7692d5b74228f0d2a69fea3e9587fc6` |
| 10 | `theorem` | [sigmoid_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-zero--1110caf9699e141ffdb52e88.md) | 94 | `result-track:1110caf9699e141ffdb52e889470541a9ee60a3b1f4df5c839e107e94df70cbb` |
| 11 | `theorem` | [one_sub_sigmoid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/one-sub-sigmoid--590ef7c64ce5f440b52358a6.md) | 100 | `result-track:590ef7c64ce5f440b52358a6a3835fd3c7f5f219e791b90ead2a815d2807b517` |
| 12 | `theorem` | [sigmoid_denom_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-denom-pos--c3b88313f0e6057b2ce874fa.md) | 111 | `result-track:c3b88313f0e6057b2ce874faea404cc804dfdfcb09947f822245bb209cafb54f` |
| 13 | `theorem` | [sigmoid_strictMono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-strictmono--5ac8dcf6a66b5bca67f4b0c4.md) | 115 | `result-track:5ac8dcf6a66b5bca67f4b0c4a2fc892bbbb79778c741924ab071c6677a267953` |
| 14 | `theorem` | [sigmoid_mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-mono--f84a619daca8066553b921aa.md) | 129 | `result-track:f84a619daca8066553b921aa2247964e0feb9aa1c51801dc1aaf81e474762ea1` |
| 15 | `theorem` | [sigmoid_le_of_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-le-of-le--f55b31ac9541aafa27120b14.md) | 132 | `result-track:f55b31ac9541aafa27120b14a890840761b36d31728272f958704ccd3f3a68b8` |
| 16 | `def` | [getSigmoidRelaxation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/getsigmoidrelaxation--35b877e8ef68dd9682f98d1c.md) | 144 | `declaration-track:35b877e8ef68dd9682f98d1c6a7bef2701b0e1e3724039ad41a5c91057e13d36` |
| 17 | `theorem` | [sigmoid_lower_bound_valid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-lower-bound-valid--2eec74a3cd14c9faf07d228b.md) | 149 | `result-track:2eec74a3cd14c9faf07d228b617684e6ad34180c909a9ce6560adda3357ff385` |
| 18 | `theorem` | [sigmoid_upper_bound_valid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-upper-bound-valid--d9479a5d0e60684b2b596c69.md) | 154 | `result-track:d9479a5d0e60684b2b596c697ec46e3b30460b058520aac8ac59081e4ffd5a5b` |
| 19 | `theorem` | [sigmoid_relaxation_sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-relaxation-sound--4be60d53d818e0986c2e5e0e.md) | 162 | `result-track:4be60d53d818e0986c2e5e0efb009dafb97c87f1134077b111db9675902e2698` |
| 20 | `def` | [sigmoidLowerApprox](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoidlowerapprox--b6e71f8b37abac534c6d8d8c.md) | 172 | `declaration-track:b6e71f8b37abac534c6d8d8c88d2464bb8e36d02f6c2405ecde2180ad47de8ed` |
| 21 | `def` | [sigmoidUpperApprox](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoidupperapprox--3d3e639720aaa354e00e2241.md) | 183 | `declaration-track:3d3e639720aaa354e00e22415185dc821c7af9467f87f6243a6a57171f8ac284` |
| 22 | `def` | [getSigmoidRelaxationRat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/getsigmoidrelaxationrat--1147c5d3766a5ad85eea4557.md) | 193 | `declaration-track:1147c5d3766a5ad85eea45576ebf43a5cb2bf0fc1bad5eed08e4e2f45cdca2e7` |
| 23 | `def` | [sigmoidSecantEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoidsecanteval--3da038e3ef20e8ee7edeaab1.md) | 201 | `declaration-track:3da038e3ef20e8ee7edeaab1c62af9b03a0fec0221044e416222ece3371a0983` |
| 24 | `theorem` | [sigmoidSecant_at_l](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoidsecant-at-l--adcad1fa3ae77185da1416bd.md) | 209 | `result-track:adcad1fa3ae77185da1416bd5f4d0b2df8ffc215285f2c7665a437edf58f1aa9` |
| 25 | `theorem` | [sigmoidSecant_at_u](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoidsecant-at-u--09a1f2296d561006a104064f.md) | 214 | `result-track:09a1f2296d561006a104064fbb840f09f797b9cd912d78a1f0b047cebbf755c7` |
| 26 | `theorem` | [sigmoid_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-deriv--1ed05adc277c07179f227508.md) | 228 | `result-track:1ed05adc277c07179f22750804462e5c398a286a8c61599e48698b1bc42f4618` |
| 27 | `theorem` | [sigmoid_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-deriv-pos--dab86c61b621305a9dd06e0f.md) | 259 | `result-track:dab86c61b621305a9dd06e0f15a61ea1c2ba51635c4307584d58b8bb98119eec` |
| 28 | `theorem` | [sigmoid_deriv_max](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant3001c76db5fd0f8e747a404d31a9f150ae6ab6487586a2c03abad13336fe3271.lean/declarations/sigmoid-deriv-max--88f78c322e12ff7e881c7274.md) | 265 | `result-track:88f78c322e12ff7e881c7274b4f84f22e527c3975bd6dc7ed12c07c70be72218` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
