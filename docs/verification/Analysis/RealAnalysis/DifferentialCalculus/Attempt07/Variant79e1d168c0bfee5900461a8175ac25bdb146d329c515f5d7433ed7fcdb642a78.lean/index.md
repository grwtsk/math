# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt07.Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bc998ec3f90b9b748424688e35bf4008d982ab0",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bc998ec3f90b9b748424688e35bf4008d982ab0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceBoundaryCubic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/compactlaplace--c12a418f8ea86531835444b1.md) | 22 | `declaration-track:c12a418f8ea86531835444b19666c186464ef6c7cb8b3228f2811d93c6471a6b` |
| 2 | `def` | [primitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/primitivetransform--eecfaf5ef6de2949df668947.md) | 25 | `declaration-track:eecfaf5ef6de2949df668947e095b46c8c42013274a769b4f9d71e20a581c337` |
| 3 | `def` | [normalizedPrimitiveTransform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/normalizedprimitivetransform--6ae693c6ec283039d5b19f66.md) | 27 | `declaration-track:6ae693c6ec283039d5b19f6675547136db1eb962d646168091ff38540acf9e0b` |
| 4 | `theorem` | [compactLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/compactlaplace-integrable--5184f324b77cef40f5f570fc.md) | 30 | `result-track:5184f324b77cef40f5f570fc3ced4f80b6adb62db727080d8c1595d648c63c75` |
| 5 | `theorem` | [complex_weighted_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/complex-weighted-derivative--7376742c6060a79d5f787854.md) | 37 | `result-track:7376742c6060a79d5f787854b711275d23a41f47d517a388e616b1c1631f10ed` |
| 6 | `theorem` | [actual_complex_pole_filter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/actual-complex-pole-filter--e639c1d64c4f0b65261b8f37.md) | 66 | `result-track:e639c1d64c4f0b65261b8f373a9c08322bf6f4d826e9fe30d8a7f5af38a0fd08` |
| 7 | `theorem` | [primitive_transform_normalization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/primitive-transform-normalization--701a7a26804884cb1379ce92.md) | 93 | `result-track:701a7a26804884cb1379ce929d551998a0db2658053211eb99858b63fe4217d5` |
| 8 | `theorem` | [boundary_transform_factored](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/boundary-transform-factored--555a4bee604d4ed42c6f8f5d.md) | 103 | `result-track:555a4bee604d4ed42c6f8f5d52aaa08ee6917b8c9be32cb438bd72a19709b670` |
| 9 | `theorem` | [boundary_transform_factored_unnormalized](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/boundary-transform-factored-unnormalized--9002b7a68e888b12b2010c7e.md) | 110 | `result-track:9002b7a68e888b12b2010c7e667e3c6a0685946fcaa1052b1fd977f08fbd0578` |
| 10 | `theorem` | [compactLaplace_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/compactlaplace-hasderivat--4e00e66c7058bda5f522591f.md) | 120 | `result-track:4e00e66c7058bda5f522591faeacac2b6a1cce6b1e9f327c5debdffeeb4f92cb` |
| 11 | `theorem` | [compactLaplace_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/compactlaplace-differentiable--632f9726349b20d03bb95d11.md) | 165 | `result-track:632f9726349b20d03bb95d116c6dc0e87f6baa381214b287e3f62a9cbdaa3a69` |
| 12 | `theorem` | [normalized_primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/normalized-primitive-differentiable--4d2db41c5fff9078454e9c30.md) | 169 | `result-track:4d2db41c5fff9078454e9c3020ab7f2b7d071efbe0a0ae1aa14e2b57d1e66afd` |
| 13 | `theorem` | [primitive_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/primitive-differentiable--65b1730ab2a6f14c3f6f29a7.md) | 174 | `result-track:65b1730ab2a6f14c3f6f29a76300836af008f3cbbd20894a6b40b217fbee6a6d` |
| 14 | `theorem` | [boundary_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/boundary-differentiable--402ba8abcc412ed6003b875a.md) | 182 | `result-track:402ba8abcc412ed6003b875ab1a170172b95c3f8e5728c183aedb4a1bbdb8d49` |
| 15 | `theorem` | [normalized_primitive_half](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/normalized-primitive-half--8b65499edb14898ad09a0631.md) | 191 | `result-track:8b65499edb14898ad09a0631e76c36a6d1cb64c64361cfb9d79e6ad6397423a0` |
| 16 | `theorem` | [normalized_primitive_half_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/normalized-primitive-half-ne-zero--a26feb1e7a190b5041180bc6.md) | 204 | `result-track:a26feb1e7a190b5041180bc65e75823f66337356c0c4d21fee7debd39a689e49` |
| 17 | `theorem` | [primitive_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/primitive-analyticat--d50767109c544e94fe9ea0c8.md) | 210 | `result-track:d50767109c544e94fe9ea0c8d413008c17e9b67019b97f04ab71c26b0674cb7d` |
| 18 | `theorem` | [normalized_primitive_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/normalized-primitive-analyticat--bc47d5cc7dc068a5edecfc9b.md) | 213 | `result-track:bc47d5cc7dc068a5edecfc9b122575e0e7552ee4be1646e753adf1259f41e79c` |
| 19 | `theorem` | [boundary_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/boundary-analyticat--12b83ada7cb4a8622dd2a84b.md) | 217 | `result-track:12b83ada7cb4a8622dd2a84b6d8e54052ecc30a30a88d8cb2fefa5739f766a88` |
| 20 | `def` | [boundaryUnit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/boundaryunit--a869b04380e0454017c48169.md) | 221 | `declaration-track:a869b04380e0454017c481692fe555ba0c828d801b693e2294dd5732ba83442d` |
| 21 | `theorem` | [boundaryUnit_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/boundaryunit-differentiable--f2740e8fa77fe7c7e60c1285.md) | 225 | `result-track:f2740e8fa77fe7c7e60c1285f661488c1d1ac2b6d6213d34be1a0339d714662b` |
| 22 | `theorem` | [boundaryUnit_at_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/boundaryunit-at-zero--21f53fae9e0f43f6b9fbb6b1.md) | 231 | `result-track:21f53fae9e0f43f6b9fbb6b15fcef7ba77d1ae6ba20369bc7993be28294648e6` |
| 23 | `theorem` | [boundaryUnit_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/boundaryunit-ne-zero--ac74a0661b87716b55ee6a1d.md) | 238 | `result-track:ac74a0661b87716b55ee6a1dc21f98368698e1f12c2ffdba90275a26356181fb` |
| 24 | `theorem` | [boundary_cubic_factor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/boundary-cubic-factor--73b901c0c1844fd58d41c15f.md) | 245 | `result-track:73b901c0c1844fd58d41c15f378d895307b14079200d4a21d7ce35d28cc765b9` |
| 25 | `theorem` | [boundary_analytic_order_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/boundary-analytic-order-three--2fc795f8a2941e48cbfe8f27.md) | 252 | `result-track:2fc795f8a2941e48cbfe8f2796a8f17ffef1b35fd8cc2b942d6872a9b22eb636` |
| 26 | `theorem` | [boundary_analytic_order_nat_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt07/Variant79e1d168c0bfee5900461a8175ac25bdb146d329c515f5d7433ed7fcdb642a78.lean/declarations/boundary-analytic-order-nat-three--336904f1b333e5e77b5da753.md) | 260 | `result-track:336904f1b333e5e77b5da753fbec520a8a05d8b1177d67d8b8f82bddd5c48a73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
