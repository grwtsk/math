# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompensatedReadout.Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ad2cf8a1aa8bab8ad7a01a62ec8aac4c19e5e6a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ad2cf8a1aa8bab8ad7a01a62ec8aac4c19e5e6a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.ProdL2` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/pairstate--f282c66d14556475c8161386.md) | 29 | `declaration-track:f282c66d14556475c8161386692d263728984cef12a909e205c876c14c94afdb` |
| 2 | `def` | [pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/pairstate--02de8879b463d51cab4d1a32.md) | 32 | `declaration-track:02de8879b463d51cab4d1a32670bdc6229fb6e38cdd405df9dc277fa433a816c` |
| 3 | `def` | [pairSwap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/pairswap--a2ca9e1d30c7d1d1999ed345.md) | 35 | `declaration-track:a2ca9e1d30c7d1d1999ed345914acb044b985d3b658eac698dd64e8dc634f89a` |
| 4 | `theorem` | [pairSwap_pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/pairswap-pairstate--f23cc1a5f8ae0d531fa20a76.md) | 45 | `result-track:f23cc1a5f8ae0d531fa20a7669846e7d518bc35475e93de2fafe16da07220250` |
| 5 | `theorem` | [pairSwap_involutive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/pairswap-involutive--4eb1a10d6a05ced5efa91679.md) | 48 | `result-track:4eb1a10d6a05ced5efa916792717c1208cc768d965977fdf9d8072668d0c52a2` |
| 6 | `def` | [interactionOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/interactionoperator--c3341138c7fcfa5825df3063.md) | 51 | `declaration-track:c3341138c7fcfa5825df3063fc59a53c470cc62be0e07909f8226a02922d4640` |
| 7 | `theorem` | [interactionOperator_pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/interactionoperator-pairstate--cd2ed986d6f703141f551560.md) | 55 | `result-track:cd2ed986d6f703141f551560759d5b6181d778998408cdcfca2502a668311584` |
| 8 | `theorem` | [interactionOperator_selfAdjoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/interactionoperator-selfadjoint--bea76003069a18ae69c34b70.md) | 60 | `result-track:bea76003069a18ae69c34b70a4a166ec77958d1937252518a40cb6ce938aadd4` |
| 9 | `def` | [quadraticReadout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/quadraticreadout--14c3e0a31a334aab3cac8bb3.md) | 73 | `declaration-track:14c3e0a31a334aab3cac8bb35e62dbcd2e50a5114af7f092c21355452a2542ff` |
| 10 | `def` | [compensatedReadout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/compensatedreadout--bdc702793c3f321ef366c995.md) | 76 | `declaration-track:bdc702793c3f321ef366c995d93f544e73707afdff0b4ea129fd8b675cb0a7c1` |
| 11 | `theorem` | [interactionOperator_readout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/interactionoperator-readout--06376f362300e8191e5988bf.md) | 80 | `result-track:06376f362300e8191e5988bf4f05c1b96dc07dcf447e73302d270240ad0b01f1` |
| 12 | `theorem` | [quadraticReadout_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/quadraticreadout-sub--24b61c56e0a466ca4efc792a.md) | 93 | `result-track:24b61c56e0a466ca4efc792a304e35c2d39be4bd1ce9816e8400196e62e78901` |
| 13 | `theorem` | [real_cross_selfAdjoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/real-cross-selfadjoint--40580c3c27bc26171afe8292.md) | 98 | `result-track:40580c3c27bc26171afe829271fb3d558e0529550d296c11546693eddb58d857` |
| 14 | `theorem` | [quadraticReadout_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/quadraticreadout-add--6e646a11636dba951e941ab8.md) | 107 | `result-track:6e646a11636dba951e941ab83cbf68b2e3980704c2284d64d5d1e0a187509a92` |
| 15 | `theorem` | [quadraticReadout_pullback](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/quadraticreadout-pullback--b952073502862e34e25f66c4.md) | 116 | `result-track:b952073502862e34e25f66c47c831b96c692d4f7158e3918aad944c721e7edd0` |
| 16 | `theorem` | [compensatedReadout_jump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/compensatedreadout-jump--d473167db44a16cb0ca55ab7.md) | 123 | `result-track:d473167db44a16cb0ca55ab741fc210679de76cc74dc124418f6101426c0103e` |
| 17 | `theorem` | [compensatedReadout_identity_jump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/compensatedreadout-identity-jump--2c39c49ea205ccaf8e5a54ed.md) | 134 | `result-track:2c39c49ea205ccaf8e5a54ed10af0e98e5d366df7ef37a9cdf0be64965f658d3` |
| 18 | `def` | [observableCommutator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/observablecommutator--0e301533cfe9a9b726a25274.md) | 144 | `declaration-track:0e301533cfe9a9b726a25274d1eb91982d1ee44e5867d8f28a33b625be99de09` |
| 19 | `theorem` | [signed_work_algebra](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/signed-work-algebra--0d4715148bc6edc804e6b2f4.md) | 147 | `result-track:0d4715148bc6edc804e6b2f41f73a201c86aba4f96131e71500c4ac450a14379` |
| 20 | `theorem` | [compensatedReadout_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/compensatedreadout-hasderivat--502f465105152c78e2023304.md) | 164 | `result-track:502f465105152c78e20233045d2ecfb86c722953044d13a51a878f4caf6a5ccd` |
| 21 | `theorem` | [compensatedReadout_hasDerivAt_of_skew](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/compensatedreadout-hasderivat-of-skew--bf23137f982748151cad476e.md) | 183 | `result-track:bf23137f982748151cad476e30c4edf6746da2294aecde14ac2337684d84df54` |
| 22 | `theorem` | [compensatedReadout_hasDerivAt_of_cancelled_work](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/compensatedreadout-hasderivat-of-cancelled-work--f36e0fed004c0eaba4ab4cd8.md) | 197 | `result-track:f36e0fed004c0eaba4ab4cd87f80b241ee550ebbf0ec321d9c9002a4137ddd6e` |
| 23 | `def` | [signatureOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/signatureoperator--ebd0ae810872be1a3b33be35.md) | 211 | `declaration-track:ebd0ae810872be1a3b33be355485c02bbcbb4490967f493e194563f2e721ed6c` |
| 24 | `theorem` | [signatureOperator_pairState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/signatureoperator-pairstate--3ffb6106ef2fb052e5000b00.md) | 217 | `result-track:3ffb6106ef2fb052e5000b00d1e624acf0532324994656ed5e6dfa5b07ac5b54` |
| 25 | `theorem` | [signatureOperator_readout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/signatureoperator-readout--214845ae1405c0fe4bed7e65.md) | 221 | `result-track:214845ae1405c0fe4bed7e65e14c07c6900b14577464b9858effc90835641dee` |
| 26 | `def` | [unitCircleState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/unitcirclestate--8ba1091a607a59595cfaab23.md) | 231 | `declaration-track:8ba1091a607a59595cfaab230327093925ef13e360d85ca5d07e2cfd99bff8a7` |
| 27 | `theorem` | [unitCircleState_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/unitcirclestate-norm-sq--c68c4b323328218ff62eb9fb.md) | 234 | `result-track:c68c4b323328218ff62eb9fbadb98c847f1cf17c47f0d12c791e430a9199eb18` |
| 28 | `theorem` | [unitCircleState_readout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/unitcirclestate-readout--c19504861aa66d85bfc57a76.md) | 241 | `result-track:c19504861aa66d85bfc57a76854e5874a595e847e7ccce398d441dcba9242c2e` |
| 29 | `theorem` | [constant_norm_readout_changes](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/constant-norm-readout-changes--4a9994045868b77cb85570d8.md) | 248 | `result-track:4a9994045868b77cb85570d8d65a3761c5edff478df8c758dff5e24f0842172c` |
| 30 | `theorem` | [isometric_jump_increases_readout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/isometric-jump-increases-readout--50d02212333f28405cccaa28.md) | 255 | `result-track:50d02212333f28405cccaa28f667f6420c8b6d8d316e62882df6586c2372d0e6` |
| 31 | `def` | [growingReadout](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/growingreadout--2dc305a40d3fccdd470b076f.md) | 265 | `declaration-track:2dc305a40d3fccdd470b076fedf280cfca85f04dec51af47b32c80d736160398` |
| 32 | `theorem` | [growingReadout_unit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/growingreadout-unit--b37fe98cf51716cdbbf12430.md) | 269 | `result-track:b37fe98cf51716cdbbf124301ea9a8067510b8bb7c8fa41498c26e4777f5cf00` |
| 33 | `theorem` | [growingReadout_exceeds_any_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/declarations/growingreadout-exceeds-any-budget--b57372b009b295365257d3f6.md) | 273 | `result-track:b57372b009b295365257d3f61f459aeca4a3082ff422809932f607448018a1be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
