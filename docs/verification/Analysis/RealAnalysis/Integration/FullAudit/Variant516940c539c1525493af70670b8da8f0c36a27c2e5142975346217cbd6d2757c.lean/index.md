# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FullAudit.Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b377932567934ade5ff070ca3203d60cec461170",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b377932567934ade5ff070ca3203d60cec461170`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceConvolutionAE` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/instance--08b712c38a687ec128863442.md) | 28 | `declaration-track:08b712c38a687ec128863442c391b96f6fc76eddae27a1ed81154978ce077a81` |
| 2 | `def` | [controller](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/controller--8fa205df00abd39c214788e4.md) | 33 | `declaration-track:8fa205df00abd39c214788e452876b31e6dc7834cf7db81bd8bd0fdf38f08691` |
| 3 | `def` | [response](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/response--decfedbd4f0227702f0ae388.md) | 37 | `declaration-track:decfedbd4f0227702f0ae388f485ca78cdf59f8908094afd33bede6f71144708` |
| 4 | `theorem` | [controller_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/controller-ae--2a795fa547203bbf54d5e687.md) | 40 | `result-track:2a795fa547203bbf54d5e687f9f77a3c72e16919d7d9133b4568b93933ce0419` |
| 5 | `theorem` | [controller_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/controller-inner--ab192a6231c49027cd3322ad.md) | 49 | `result-track:ab192a6231c49027cd3322ad1c63d52eabb825cf6b092baa00018991371af5ef` |
| 6 | `theorem` | [reference_inner_response](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/reference-inner-response--f7a657585061ea3a622e5ba9.md) | 55 | `result-track:f7a657585061ea3a622e5ba9aefd902c853fe4c0e10cbe1b090ef9734f31b974` |
| 7 | `theorem` | [response_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/response-ae--ce3fe3d319a2d5ce7ba021de.md) | 62 | `result-track:ce3fe3d319a2d5ce7ba021deace68453da24d5182787f6a4ca8986ab703cccd6` |
| 8 | `def` | [signedCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/signedcorrelation--f5afe6bd15b60b87983b8a05.md) | 74 | `declaration-track:f5afe6bd15b60b87983b8a05d0f97647bb309180f7cbc2a8dd8afeef986f399a` |
| 9 | `def` | [signedCovariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/signedcovariance--730a7fbab415d54acea26baf.md) | 78 | `declaration-track:730a7fbab415d54acea26baf122ba531ba8b49e226c4fafe4884c5261dbcb73c` |
| 10 | `theorem` | [signedCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/signedcorrelation-integrable--dedd9528f876453798a1e43c.md) | 82 | `result-track:dedd9528f876453798a1e43c2c28d245479f3bcbbe072cd1fee10ab2b3889ab6` |
| 11 | `theorem` | [shifted_kernel_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/shifted-kernel-norm-integral--ac2f0484caa21de80017b9f3.md) | 89 | `result-track:ac2f0484caa21de80017b9f36ec400d65c8a800dbbf3ec0bd19b1d9ed8296f3c` |
| 12 | `theorem` | [signed_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/signed-product-integrable--3b34c875a86e503d9595e498.md) | 94 | `result-track:3b34c875a86e503d9595e4981636b8f4645a1422bdd93ad5ca5a40bde9e31d36` |
| 13 | `theorem` | [weighted_signed_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/weighted-signed-product-integrable--dda7b4a8c55d5e317ad7497c.md) | 117 | `result-track:dda7b4a8c55d5e317ad7497cc60fbfe253efc97505bf210f00be04a1154e32b4` |
| 14 | `theorem` | [signedCovariance_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/signedcovariance-integrable--f67e91f8fc3a81466b45b3bd.md) | 131 | `result-track:f67e91f8fc3a81466b45b3bd3a4565fcbf02bebbb2710b13961fec59d1dfe232` |
| 15 | `theorem` | [signedCovariance_eq_reordered](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/signedcovariance-eq-reordered--8247a2cb5654c07d0c195482.md) | 137 | `result-track:8247a2cb5654c07d0c195482d30d1d9440a9cc583aac29c847aa10f27affd642` |
| 16 | `theorem` | [fullShift_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/fullshift-add--ac8935dd9867d0142ebee946.md) | 145 | `result-track:ac8935dd9867d0142ebee946f315260749df0991554cf1382a489a27c0740a46` |
| 17 | `def` | [overlap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/overlap--e1b4e90320f96ff865772110.md) | 158 | `declaration-track:e1b4e90320f96ff8657721105e08bbb4abc230cf826048cb7bb40209b925a267` |
| 18 | `theorem` | [shifted_controller_inner_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/shifted-controller-inner-of-le--16ce9a14cfa200344ea30176.md) | 163 | `result-track:16ce9a14cfa200344ea30176cad102a4fa3a9f2a025a026fed3de081ad6a360a` |
| 19 | `theorem` | [shifted_controller_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/shifted-controller-inner--d1483419d3cab63b0a040364.md) | 186 | `result-track:d1483419d3cab63b0a040364d63940537bd8a30c5820967291690b4150cf6437` |
| 20 | `theorem` | [overlap_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/overlap-abs-le--109970670cb7de7b13dd2e92.md) | 197 | `result-track:109970670cb7de7b13dd2e92aed6fe05be17659745d7c09db453a0985167668f` |
| 21 | `theorem` | [overlap_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/overlap-measurable--5c65e8fb4f64e843ea50ef92.md) | 212 | `result-track:5c65e8fb4f64e843ea50ef9225ad1ab6a8fe2e270a2c736d515b397fc6a014c0` |
| 22 | `def` | [gramIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/gramintegrand--531ec3afce034b79d022149c.md) | 218 | `declaration-track:531ec3afce034b79d022149cffea7a15e98f620f00a37ba9ae35c59a2bfb63b4` |
| 23 | `theorem` | [gramIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/gramintegrand-integrable--5fd1d05e9dd0b375771f6900.md) | 222 | `result-track:5fd1d05e9dd0b375771f6900283d8fc933ee90730eb1fae9efef3b29a20cca21` |
| 24 | `theorem` | [integral_inner_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/integral-inner-first--f18dfa323cf92581a38a6530.md) | 234 | `result-track:f18dfa323cf92581a38a6530051f06ec0849a23bab2f686fed897fbe56252f8c` |
| 25 | `theorem` | [response_inner_full_double](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/response-inner-full-double--236ac38da3e1f87989e95bd8.md) | 246 | `result-track:236ac38da3e1f87989e95bd8c6c3faf60b7146b4acae643d2a1d1ea22011809a` |
| 26 | `theorem` | [response_inner_double](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullAudit/Variant516940c539c1525493af70670b8da8f0c36a27c2e5142975346217cbd6d2757c.lean/declarations/response-inner-double--40e6d376ad48ab7f920d1300.md) | 269 | `result-track:40e6d376ad48ab7f920d130018d2c9e0e8f410c41a92a9ab6796540d23ad143a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
