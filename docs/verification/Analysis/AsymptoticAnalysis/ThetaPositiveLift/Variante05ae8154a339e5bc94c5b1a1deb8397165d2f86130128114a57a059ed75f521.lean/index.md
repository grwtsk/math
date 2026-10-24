# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b002cdd456b8cfdbe12d853269e05f4ba7665b5b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b002cdd456b8cfdbe12d853269e05f4ba7665b5b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaExpThree_gt_twenty](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/thetaexpthree-gt-twenty--568051e690781510c9c222dc.md) | 29 | `result-track:568051e690781510c9c222dc381ba297e74323342be8367ced8b43b80fa896e5` |
| 2 | `def` | [gaussianFromThree](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/gaussianfromthree--fd58b8efea60a392c2e5317b.md) | 34 | `declaration-track:fd58b8efea60a392c2e5317b9a98a5cc10cc1fae9635364cea800488f2ad7c6b` |
| 3 | `theorem` | [gaussian_ratio_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/gaussian-ratio-half--7a245bf537d4ae929a69ab80.md) | 37 | `result-track:7a245bf537d4ae929a69ab80390da1f087b417ea4325181809a41fbccfced7d1` |
| 4 | `theorem` | [gaussianFromThree_succ_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/gaussianfromthree-succ-le--19d0c7526d463246d8c97f8f.md) | 48 | `result-track:19d0c7526d463246d8c97f8f469fd513db771aee31b4217c6a8225b44b22d354` |
| 5 | `theorem` | [gaussianFromThree_geometric](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/gaussianfromthree-geometric--d256acf184b0bacc43d2f5e6.md) | 78 | `result-track:d256acf184b0bacc43d2f5e657148106187503d652259443d883a7d82afbf51c` |
| 6 | `theorem` | [thetaGaussianFromThree_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/thetagaussianfromthree-summable--a2051cbffa7bf3a174ec13e7.md) | 91 | `result-track:a2051cbffa7bf3a174ec13e73c1ecb38e8b4771206f02941cd6e69f7067db96e` |
| 7 | `theorem` | [thetaGaussianFromThree_tsum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/thetagaussianfromthree-tsum-le--421cf4bd38364b53897d0ff0.md) | 104 | `result-track:421cf4bd38364b53897d0ff0ada13766f47ba46ea1a46205aecdd4212e2a6e21` |
| 8 | `theorem` | [thetaGaussian_exp_neg_eight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/thetagaussian-exp-neg-eight-le--33801aa951c4fb200dfc9740.md) | 121 | `result-track:33801aa951c4fb200dfc974012f5cf63e4987518ed3da897caff7c68e5192c71` |
| 9 | `theorem` | [thetaGaussian_ninth_power_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/thetagaussian-ninth-power-bound--a78193d54934df5f4cce9e3a.md) | 133 | `result-track:a78193d54934df5f4cce9e3a448546bd61086a0e1211727cbcb1d42775256a7a` |
| 10 | `def` | [thetaPhiJetErrorCoefficient](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/thetaphijeterrorcoefficient--af6e1f0ac950055190917465.md) | 170 | `declaration-track:af6e1f0ac950055190917465374ddc0e3b7e07db9bd85a77e30591ed59aac008` |
| 11 | `theorem` | [thetaPhiJetErrorCoefficient_values](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/thetaphijeterrorcoefficient-values--302c88a266797522ec720c78.md) | 174 | `result-track:302c88a266797522ec720c78748460590c285ebe59a1995cf696e5e58cc43705` |
| 12 | `def` | [jetRemainderTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/jetremainderterm--20207f709dfb6b2f42920495.md) | 179 | `declaration-track:20207f709dfb6b2f42920495034f38f1a8b57e874c484a48b57a7b23ce034f3f` |
| 13 | `theorem` | [jetRemainderTerm_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/jetremainderterm-norm-le--dc14a4ab93252105f6f0803b.md) | 183 | `result-track:dc14a4ab93252105f6f0803b31ec605bc427b1fe9c4846774ff2e14affdfc277` |
| 14 | `theorem` | [thetaPhiJet_remainder_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/thetaphijet-remainder-summable--cc8234430772b526e4766449.md) | 201 | `result-track:cc8234430772b526e4766449c0b234d9f11e55bb966b9f4d2f88682ec585d5ad` |
| 15 | `theorem` | [thetaPhiJet_remainder_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variante05ae8154a339e5bc94c5b1a1deb8397165d2f86130128114a57a059ed75f521.lean/declarations/thetaphijet-remainder-abs-le--1d5d250a586317d00b1a64fa.md) | 211 | `result-track:1d5d250a586317d00b1a64faddeca3f62c16797bb689eb87aa1013ecfcb773c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
