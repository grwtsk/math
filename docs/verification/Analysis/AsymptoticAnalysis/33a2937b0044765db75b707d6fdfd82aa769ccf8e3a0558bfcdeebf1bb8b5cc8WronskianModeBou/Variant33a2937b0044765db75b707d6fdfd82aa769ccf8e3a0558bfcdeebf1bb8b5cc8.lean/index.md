# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou.Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6518146da7558fdc703d86bc420a77dc1e03d0c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6518146da7558fdc703d86bc420a77dc1e03d0c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaExpThree_gt_twenty](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/thetaexpthree-gt-twenty--1a53863a0d39c6881895d3c3.md) | 21 | `result-track:1a53863a0d39c6881895d3c3a02216c739c902b90bdba5bfc65507e3fc43519c` |
| 2 | `def` | [gaussianFromThree](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/gaussianfromthree--6c3d35ef633710d867cac205.md) | 26 | `declaration-track:6c3d35ef633710d867cac205e7423dae3670c18247ebfb4f207007597637e225` |
| 3 | `theorem` | [gaussian_ratio_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/gaussian-ratio-half--f6843525efffc77c6e91808b.md) | 29 | `result-track:f6843525efffc77c6e91808b5388402b6a50afb00f0b4f2bcdb7072fc6d1fecc` |
| 4 | `theorem` | [gaussianFromThree_succ_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/gaussianfromthree-succ-le--57e5e88547c0080461a6c05b.md) | 40 | `result-track:57e5e88547c0080461a6c05bbed87ab0b2a92787f945b5de1bebf1e1cd02a25a` |
| 5 | `theorem` | [gaussianFromThree_geometric](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/gaussianfromthree-geometric--da262f4a72a27137fa023b12.md) | 69 | `result-track:da262f4a72a27137fa023b1236696da5e92f99e64c8b9c63ff567125527de745` |
| 6 | `theorem` | [thetaGaussianFromThree_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/thetagaussianfromthree-summable--24fe1d012bf20f817cd7849a.md) | 82 | `result-track:24fe1d012bf20f817cd7849a86208c8b84f4c016fb679126aaecdf80876f9946` |
| 7 | `theorem` | [thetaGaussianFromThree_tsum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/thetagaussianfromthree-tsum-le--3be40da53cad80fdd59a777d.md) | 95 | `result-track:3be40da53cad80fdd59a777de503054cd4ee5036e8acd9d2f9e3cb8c4c8dddba` |
| 8 | `theorem` | [thetaGaussian_exp_neg_eight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/thetagaussian-exp-neg-eight-le--ffa0236aa70f052beb758a85.md) | 112 | `result-track:ffa0236aa70f052beb758a858d6559167cad285d44e92c6bdc34ed495d656562` |
| 9 | `theorem` | [thetaGaussian_ninth_power_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/thetagaussian-ninth-power-bound--5d6a94e8cbd22c027c2de2f6.md) | 124 | `result-track:5d6a94e8cbd22c027c2de2f6eadc4afc41e8469604909160ffd154cdc52a09ff` |
| 10 | `def` | [thetaPhiJetErrorCoefficient](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/thetaphijeterrorcoefficient--99ae8353586de52c3a1e0382.md) | 161 | `declaration-track:99ae8353586de52c3a1e03828b901224983b1642b79d65fa49070e0d252406f3` |
| 11 | `theorem` | [thetaPhiJetErrorCoefficient_values](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/thetaphijeterrorcoefficient-values--be69118b8484a9731a8bbea5.md) | 165 | `result-track:be69118b8484a9731a8bbea5b2ee18c375069e2a6db4432bbc44341ca4eb65ec` |
| 12 | `def` | [jetRemainderTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/jetremainderterm--548c8b8ca4cb102a056b4f10.md) | 170 | `declaration-track:548c8b8ca4cb102a056b4f1039a4726e0f3487f0f9121136d16b35618a4169b7` |
| 13 | `theorem` | [jetRemainderTerm_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/jetremainderterm-norm-le--3567c0cb4c6e62cf2b96bf0c.md) | 174 | `result-track:3567c0cb4c6e62cf2b96bf0c7db5b9a5404a57e05cb831b3c688298f27abd726` |
| 14 | `theorem` | [thetaPhiJet_remainder_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/thetaphijet-remainder-summable--e842a266718c06ea5fb9e280.md) | 192 | `result-track:e842a266718c06ea5fb9e28017865be264d2483f58acec32257892ece7ebd33d` |
| 15 | `theorem` | [thetaPhiJet_remainder_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8WronskianModeBou/Variant33a2937b0044765db75b707d6fdfd82aa769ccf8e3a0558bfcdeebf1bb8b5cc8.lean/declarations/thetaphijet-remainder-abs-le--3780ae6a5335884a1313abb6.md) | 202 | `result-track:3780ae6a5335884a1313abb66286a93736c574a7696f51a8d84f37fb3513d858` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
