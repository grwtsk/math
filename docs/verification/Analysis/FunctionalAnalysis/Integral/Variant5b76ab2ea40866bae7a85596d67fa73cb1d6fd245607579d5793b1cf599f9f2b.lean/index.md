# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Integral.Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30215ac6b692ff81b5048394b24d16028ca7bfc7",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30215ac6b692ff81b5048394b24d16028ca7bfc7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.StrictConvexSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Convex.integral_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/convex-integral-mem--e5bd0280e589e09b8f66857c.md) | 53 | `result-track:e5bd0280e589e09b8f66857ccd2187b6625dd9d037e698f655e76a1750fb885b` |
| 2 | `theorem` | [Convex.average_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/convex-average-mem--30668bc8476cb262d37539d0.md) | 84 | `result-track:30668bc8476cb262d37539d0cd8f07f6fe297f7bc773ad015fd4d79e88a6ae1d` |
| 3 | `theorem` | [Convex.set_average_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/convex-set-average-mem--52eb4153938fc82a231b01cf.md) | 91 | `result-track:52eb4153938fc82a231b01cfbc5375d0579836a40afddb4c0966d6bb958a3251` |
| 4 | `theorem` | [Convex.set_average_mem_closure](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/convex-set-average-mem-closure--ff0eeea2895cade5d29d91b1.md) | 100 | `result-track:ff0eeea2895cade5d29d91b13375c0e9f18fb1c6708285456a20cd09bc4ae60c` |
| 5 | `theorem` | [ConvexOn.average_mem_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/convexon-average-mem-epigraph--e3f74f156b84a31e4ff9c479.md) | 105 | `result-track:e3f74f156b84a31e4ff9c4796dcf5ab9259b144a19d5e5ad1c1537b941e8bac4` |
| 6 | `theorem` | [ConcaveOn.average_mem_hypograph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/concaveon-average-mem-hypograph--fa8d11dab79021b9b9ec6565.md) | 114 | `result-track:fa8d11dab79021b9b9ec6565078195243edd6fb481f23419737c64f763119e1b` |
| 7 | `theorem` | [ConvexOn.map_average_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/convexon-map-average-le--f03af4272761bdcf764a343c.md) | 126 | `result-track:f03af4272761bdcf764a343cb9329b6b2f5c0b5d913d1d13c69e644e119d79fd` |
| 8 | `theorem` | [ConcaveOn.le_map_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/concaveon-le-map-average--be6b83e376e87b21850eacc4.md) | 137 | `result-track:be6b83e376e87b21850eacc4d672125fc147221accb074be6a9bfa8b59def053` |
| 9 | `theorem` | [ConvexOn.set_average_mem_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/convexon-set-average-mem-epigraph--bc72a0f624c12e6bfb9b182b.md) | 148 | `result-track:bc72a0f624c12e6bfb9b182b1bf87bc434a94b55250590f606c728603d749b9c` |
| 10 | `theorem` | [ConcaveOn.set_average_mem_hypograph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/concaveon-set-average-mem-hypograph--51ee06b81ce9db510cba2b38.md) | 161 | `result-track:51ee06b81ce9db510cba2b38629313a78e92e970679aa7f601bcbe385bf0e286` |
| 11 | `theorem` | [ConvexOn.map_set_average_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/convexon-map-set-average-le--ecd3a0ad85d676852130dcd2.md) | 173 | `result-track:ecd3a0ad85d676852130dcd2f6222dad217be5d8f1925bac655d417e00d4b3d2` |
| 12 | `theorem` | [ConcaveOn.le_map_set_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/concaveon-le-map-set-average--17e5da8a19de1d94456d4518.md) | 184 | `result-track:17e5da8a19de1d94456d4518a4c1e7451211f3426e49f7b75da39b3a4cc7aebb` |
| 13 | `theorem` | [ConvexOn.map_integral_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/convexon-map-integral-le--8e8933d58167030b0d2e0252.md) | 195 | `result-track:8e8933d58167030b0d2e0252973c094c241f9b022877587641e2a0910d75bbd1` |
| 14 | `theorem` | [ConcaveOn.le_map_integral](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/concaveon-le-map-integral--a667734c6d90d2d45717aec3.md) | 204 | `result-track:a667734c6d90d2d45717aec3cbea22a9c6e7634288e6bb8db0b6369b5159da77` |
| 15 | `theorem` | [ae_eq_const_or_exists_average_ne_compl](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/ae-eq-const-or-exists-average-ne-compl--f610efb54d04607d328490a3.md) | 217 | `result-track:f610efb54d04607d328490a3a5719936ee317dd9105dd580d91cb62f1235b85c` |
| 16 | `theorem` | [Convex.average_mem_interior_of_set](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/convex-average-mem-interior-of-set--b4acc714cb66b37eb936d403.md) | 236 | `result-track:b4acc714cb66b37eb936d4033f4243d8bdab814d426500e0f6122ac8c7abce62` |
| 17 | `theorem` | [StrictConvex.ae_eq_const_or_average_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/strictconvex-ae-eq-const-or-average-mem-interior--32f2bf0aa4cefbb14a136184.md) | 253 | `result-track:32f2bf0aa4cefbb14a136184e8043b0d9b6701895cbe154814d893f679fbeff4` |
| 18 | `theorem` | [StrictConvexOn.ae_eq_const_or_map_average_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/strictconvexon-ae-eq-const-or-map-average-lt--461fb70b13c86a4ee5b01c4f.md) | 267 | `result-track:461fb70b13c86a4ee5b01c4f44012881a930abef78df8e0d4fb0549b36795d4f` |
| 19 | `theorem` | [StrictConcaveOn.ae_eq_const_or_lt_map_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/strictconcaveon-ae-eq-const-or-lt-map-average--86f5eb3235198d29204c7124.md) | 295 | `result-track:86f5eb3235198d29204c712410f3c0998b37ff36d0189f87d2803a96debb2e78` |
| 20 | `theorem` | [ae_eq_const_or_norm_average_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/ae-eq-const-or-norm-average-lt-of-norm-le-const--2b541cc9bd8f8ffcfc64b9c5.md) | 305 | `result-track:2b541cc9bd8f8ffcfc64b9c59274f20dc2a78fe41b1a22c2daefdbbaa9f04615` |
| 21 | `theorem` | [ae_eq_const_or_norm_integral_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/ae-eq-const-or-norm-integral-lt-of-norm-le-const--7e2192d63b90fbf67c91d400.md) | 324 | `result-track:7e2192d63b90fbf67c91d40083e6ec875cabceecb28ff5fff4f9624319ab046a` |
| 22 | `theorem` | [ae_eq_const_or_norm_setIntegral_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variant5b76ab2ea40866bae7a85596d67fa73cb1d6fd245607579d5793b1cf599f9f2b.lean/declarations/ae-eq-const-or-norm-setintegral-lt-of-norm-le-const--bd0c700caa412db1a3f642dc.md) | 337 | `result-track:bd0c700caa412db1a3f642dc8ee6030137f5f0da81a60e7887bf023294b22d18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
