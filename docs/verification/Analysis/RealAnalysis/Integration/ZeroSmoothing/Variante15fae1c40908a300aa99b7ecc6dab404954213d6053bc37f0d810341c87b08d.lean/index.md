# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothing.Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb80906667a8491be49501048b5374b100ae280f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb80906667a8491be49501048b5374b100ae280f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTestRegularity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothingBump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothingbump--946dd75e80cdb6489ce3f678.md) | 31 | `declaration-track:946dd75e80cdb6489ce3f6785012675bdebd755b8176a14d75c04d3862c1bc3a` |
| 2 | `def` | [mollifier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/mollifier--9d16f831d224ec73a2dafa68.md) | 38 | `declaration-track:9d16f831d224ec73a2dafa68ea3f0f94fa445fc74a2ef4deff45f3e8f4dd571a` |
| 3 | `theorem` | [mollifier_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/mollifier-nonneg--bb88e72435fb17c1915d4102.md) | 42 | `result-track:bb88e72435fb17c1915d4102e861b8b83ee1869b65f5392c43832dbc8656801d` |
| 4 | `theorem` | [mollifier_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/mollifier-even--07caa88fe98eb9b92a80ede6.md) | 47 | `result-track:07caa88fe98eb9b92a80ede640e5ba881819c5e0ffab5776343635013c8aee20` |
| 5 | `theorem` | [mollifier_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/mollifier-contdiff--966c7a611e26113f49e5b20a.md) | 51 | `result-track:966c7a611e26113f49e5b20add447fdb2e321b7af77cd40b225dd4219a13e553` |
| 6 | `theorem` | [mollifier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/mollifier-integrable--e10067d7b5e615652dfe62cd.md) | 56 | `result-track:e10067d7b5e615652dfe62cd367ec254dc3e5a3c91358663265731266edbbdfb` |
| 7 | `theorem` | [mollifier_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/mollifier-integral--fe519ec336f8ffc870abe421.md) | 61 | `result-track:fe519ec336f8ffc870abe421b7c74c4513b3610584deea0b586a6e3ea77aebf9` |
| 8 | `theorem` | [mollifier_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/mollifier-support--0e4a90fefc860a0ff6a7119d.md) | 66 | `result-track:0e4a90fefc860a0ff6a7119d643e2edf8c70763decc54bf021fdb0a232880b3d` |
| 9 | `theorem` | [mollifier_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/mollifier-tsupport--99dee70503cbf148c62fc897.md) | 72 | `result-track:99dee70503cbf148c62fc8975ab90558c50724ee81cf625beb625eadf1f86124` |
| 10 | `theorem` | [mollifier_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/mollifier-hascompactsupport--5988da133b484659fbb71ec3.md) | 78 | `result-track:5988da133b484659fbb71ec352816245112df3341e916f80027d28dd000bbe47` |
| 11 | `def` | [smoothedTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothedtest--065a6ae6877b6aacd3d013bd.md) | 83 | `declaration-track:065a6ae6877b6aacd3d013bdd080a771cdee4c2baa501779c00107fe208f4309` |
| 12 | `theorem` | [smoothedTest_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothedtest-eq-integral--e7561ac84816e3d7e340a87a.md) | 87 | `result-track:e7561ac84816e3d7e340a87a8531e89a4c2fbe5ee0df89f8b59ec5b868c95239` |
| 13 | `theorem` | [smoothing_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothing-integrand-integrable--80dce024eee78779e2ff624a.md) | 92 | `result-track:80dce024eee78779e2ff624a0830c7dd74f67c1baff4b48a4c5990e2b54dcb36` |
| 14 | `theorem` | [smoothedTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothedtest-contdiff--0239be8aee8acb65b4f714b8.md) | 99 | `result-track:0239be8aee8acb65b4f714b847c808fb034afd6c755fbb863af93fd7c20c5c72` |
| 15 | `theorem` | [smoothedTest_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothedtest-even--7ecafdd9035331cb39dd19ec.md) | 106 | `result-track:7ecafdd9035331cb39dd19ec1200c334111fcb92f85808a7c8380bac0041e251` |
| 16 | `theorem` | [smoothedTest_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothedtest-support-subset--27dd73f9c79f00dd90d71d56.md) | 115 | `result-track:27dd73f9c79f00dd90d71d56f5191f0d563dff286dc738d3947213002d4dccbb` |
| 17 | `theorem` | [smoothedTest_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothedtest-tsupport-subset--49783e8094dc4dd06eed19ae.md) | 125 | `result-track:49783e8094dc4dd06eed19aefcf36249d718e14808e6fb3c7cea7fee9f73346a` |
| 18 | `theorem` | [smoothedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothedtest-hascompactsupport--f43679c871f0c41d4d2d3d52.md) | 130 | `result-track:f43679c871f0c41d4d2d3d527f557cdc3a5b9e272515f266a576effeabd08144` |
| 19 | `theorem` | [smoothedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothedtest-integrable--a15fede107c69341c156839d.md) | 135 | `result-track:a15fede107c69341c156839de9745100fa48dbcb33ec86f052746775115fcb61` |
| 20 | `theorem` | [smoothedTest_tsupport_subset_common](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothedtest-tsupport-subset-common--e2619ea55e38a18983ccaf96.md) | 141 | `result-track:e2619ea55e38a18983ccaf96a1305916daf0376e3b891236b17b47fe5c4134a3` |
| 21 | `theorem` | [smoothedTest_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothing/Variante15fae1c40908a300aa99b7ecc6dab404954213d6053bc37f0d810341c87b08d.lean/declarations/smoothedtest-tendsto--35293e10ecf20c9eb26f63c1.md) | 149 | `result-track:35293e10ecf20c9eb26f63c13cf6cee1e2fc36a4ae30d72dd242ff2a8857505c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
