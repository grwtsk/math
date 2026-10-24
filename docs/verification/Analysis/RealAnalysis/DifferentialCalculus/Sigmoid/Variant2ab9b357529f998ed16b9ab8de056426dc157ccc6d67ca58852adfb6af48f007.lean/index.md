# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sigmoid.Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "161e5e5e8b90fdeab7fec71e04c5b9395868b098",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `161e5e5e8b90fdeab7fec71e04c5b9395868b098`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Symbolic.ReLU` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RealLinearBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/reallinearbound--4c8267b1313bed0d1ea1748a.md) | 46 | `declaration-track:4c8267b1313bed0d1ea1748ae948f3d44a21f89c49ab0d1a4b5fb97c7f88f612` |
| 2 | `def` | [RealLinearBound.eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/reallinearbound-eval--ba3c76da8a66074c48277e9e.md) | 51 | `declaration-track:ba3c76da8a66074c48277e9e36ebec1ee0e9cb8cf311c331d3551c56bcd8d210` |
| 3 | `structure` | [RealSymbolicBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/realsymbolicbound--d042b56f9a5d93899f8bf562.md) | 55 | `declaration-track:d042b56f9a5d93899f8bf562cf765de62963d4c713556a3be60bdb384cc17329` |
| 4 | `def` | [sigmoid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid--e32b9bc0a1835ae6e7cd2f63.md) | 62 | `declaration-track:e32b9bc0a1835ae6e7cd2f63699d967850e196bbfdfad58363627cd9f7417dbd` |
| 5 | `theorem` | [sigmoid_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-pos--2894dba6806abe6ec4ee6f02.md) | 65 | `result-track:2894dba6806abe6ec4ee6f02f6b1c900dcf822970502e04c33a65b6e5d2a91cc` |
| 6 | `theorem` | [sigmoid_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-lt-one--7a1bd5a4b7e92a84a37e18da.md) | 71 | `result-track:7a1bd5a4b7e92a84a37e18da6416c6ce42ff89849f060511061d35435430a9f5` |
| 7 | `theorem` | [sigmoid_mem_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-mem-ioo--161ffa1c31d384b99795e4e5.md) | 77 | `result-track:161ffa1c31d384b99795e4e57a1d05e627675b30aecf6e63e4b3442213b55d0c` |
| 8 | `theorem` | [sigmoid_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-nonneg--b4f4c01002df59b533d3ce89.md) | 81 | `result-track:b4f4c01002df59b533d3ce8952cbbf48d8ffebeabac3c08d905bf78a24eaf5eb` |
| 9 | `theorem` | [sigmoid_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-le-one--777b3180d6fb285874f32a58.md) | 83 | `result-track:777b3180d6fb285874f32a58d923a7431e9b32b1b4524c7719f0c4024eb56a13` |
| 10 | `theorem` | [sigmoid_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-zero--3dae1ef523816ab60c4e3799.md) | 86 | `result-track:3dae1ef523816ab60c4e3799d78b3961bc92a49d6cfb1ea2f47b71d76c635782` |
| 11 | `theorem` | [one_sub_sigmoid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/one-sub-sigmoid--0e008519f0dd7b959305f6df.md) | 92 | `result-track:0e008519f0dd7b959305f6df36e39850a702e054946a084645d5fc8e25305c36` |
| 12 | `theorem` | [sigmoid_denom_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-denom-pos--15db11c7c3424deee2f44a89.md) | 103 | `result-track:15db11c7c3424deee2f44a8981c60e06463601f2d5967b658e8ee2e9ba942258` |
| 13 | `theorem` | [sigmoid_strictMono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-strictmono--2eb2c869b1b8cdbd8bf2e273.md) | 107 | `result-track:2eb2c869b1b8cdbd8bf2e273d5b2d089bed9fe41237df0c580bac7f9cad39637` |
| 14 | `theorem` | [sigmoid_mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-mono--9aa9e15343e5f6b749884ef0.md) | 121 | `result-track:9aa9e15343e5f6b749884ef03f260771ee1c2bf8b0d983f0ea982bc4199f51ac` |
| 15 | `theorem` | [sigmoid_le_of_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-le-of-le--b692dd8582620bd037e66d3f.md) | 124 | `result-track:b692dd8582620bd037e66d3fc37706b08436f2ff47a70ccb91bc785006dceb71` |
| 16 | `def` | [getSigmoidRelaxation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/getsigmoidrelaxation--96943b0403069bce282c96a0.md) | 136 | `declaration-track:96943b0403069bce282c96a04fffe53f0bf41e868d96bde708df2630ff4f8fea` |
| 17 | `theorem` | [sigmoid_lower_bound_valid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-lower-bound-valid--e523ac225663fc892691e867.md) | 141 | `result-track:e523ac225663fc892691e86707c1a29fe09ab3d1162a7e98522b7f3772f302d8` |
| 18 | `theorem` | [sigmoid_upper_bound_valid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-upper-bound-valid--703e32c86f51077266920371.md) | 146 | `result-track:703e32c86f510772669203711df36f8d625e624bb45dd4b3b22a43e8b81d5f87` |
| 19 | `theorem` | [sigmoid_relaxation_sound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-relaxation-sound--fec992e16b6a44c864a520b1.md) | 154 | `result-track:fec992e16b6a44c864a520b1e539992b716e55d6e92471be82510eb12bf72c1e` |
| 20 | `def` | [sigmoidLowerApprox](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoidlowerapprox--80c5be8856c0b8ce612f7e74.md) | 164 | `declaration-track:80c5be8856c0b8ce612f7e74750a91a3c98313c5612a1e41b0e9a86c03da05e0` |
| 21 | `def` | [sigmoidUpperApprox](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoidupperapprox--e69d51c998a74c8ba3ca9316.md) | 175 | `declaration-track:e69d51c998a74c8ba3ca931624ac9a6c8b84bb1100791e12dfb0b19e86caa430` |
| 22 | `def` | [getSigmoidRelaxationRat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/getsigmoidrelaxationrat--29884292a036b2b602648a54.md) | 185 | `declaration-track:29884292a036b2b602648a5425cc2dfebe786c902c0c1f57a3638554dfa232c0` |
| 23 | `def` | [sigmoidSecantEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoidsecanteval--2e61cdc7d9e7827ed7d64cba.md) | 193 | `declaration-track:2e61cdc7d9e7827ed7d64cba8589ab9301e99d9286e23945637358a392d701fa` |
| 24 | `theorem` | [sigmoidSecant_at_l](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoidsecant-at-l--6aca07b19b517cbbd1f398b2.md) | 201 | `result-track:6aca07b19b517cbbd1f398b236fa6a524449d15e0abcc301031dde69359ae54a` |
| 25 | `theorem` | [sigmoidSecant_at_u](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoidsecant-at-u--4edc520ee6111b8d022715f8.md) | 206 | `result-track:4edc520ee6111b8d022715f81dba5d88588770043cf3d83ea259e638933f6356` |
| 26 | `theorem` | [sigmoid_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-deriv--29f2e362031085ee2b3da71f.md) | 220 | `result-track:29f2e362031085ee2b3da71f882560cf2718bd41aa7b40de2aca4b6572e1012f` |
| 27 | `theorem` | [sigmoid_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-deriv-pos--c577588b2b8c4c4e263c7454.md) | 251 | `result-track:c577588b2b8c4c4e263c7454b6bb95920ac5bb3b4359b67d3edf86bfbbc4d63b` |
| 28 | `theorem` | [sigmoid_deriv_max](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sigmoid/Variant2ab9b357529f998ed16b9ab8de056426dc157ccc6d67ca58852adfb6af48f007.lean/declarations/sigmoid-deriv-max--1217fe160696db61f87a65d5.md) | 257 | `result-track:1217fe160696db61f87a65d55e3c512571ea004c0c8143bf2596b91d5bb248fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
