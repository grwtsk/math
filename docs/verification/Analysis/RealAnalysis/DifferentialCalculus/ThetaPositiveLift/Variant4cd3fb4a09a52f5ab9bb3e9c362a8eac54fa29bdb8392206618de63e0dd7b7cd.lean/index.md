# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "132ce0b3123de93ed630dc9621c1d3f415812aaf",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `132ce0b3123de93ed630dc9621c1d3f415812aaf`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSignedJetCriterion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiDerivativeStep](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativestep--9f3549aa5c74fde960cbc270.md) | 34 | `declaration-track:9f3549aa5c74fde960cbc2705a4ffbbbebff78b87d6a315feb00d4c8a5317dc1` |
| 2 | `theorem` | [thetaPhiDerivativeStep_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativestep-add--2e39bf6ab5bee56671c86cde.md) | 40 | `result-track:2e39bf6ab5bee56671c86cde6c852ec89014b57d881e725435da4a69be5905a1` |
| 3 | `theorem` | [thetaPhiDerivativeStep_monomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativestep-monomial--16519ed587b5f003c6098866.md) | 51 | `result-track:16519ed587b5f003c6098866bc0cb3d978ec6c083701e190cac91a219d528650` |
| 4 | `theorem` | [thetaPhiDerivativeStep_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativestep-eval--0b0fb8110738aae998e74313.md) | 60 | `result-track:0b0fb8110738aae998e74313bfbc80b7c5f081688051d9ac38cb42bc0663e7ba` |
| 5 | `def` | [thetaPhiDerivativePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativepolynomial--f2dd937f864d26da72cffbda.md) | 81 | `declaration-track:f2dd937f864d26da72cffbda24b357ae2a21dc38db8167b8326c16513d8163bb` |
| 6 | `theorem` | [thetaPhiDerivativePolynomial_zero_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativepolynomial-zero-eval--f13aa011af9325a56cd37887.md) | 89 | `result-track:f13aa011af9325a56cd378875cfadfe1a261da389b7aabbf49788b27ed745bae` |
| 7 | `theorem` | [thetaPhiDerivativePolynomial_succ_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativepolynomial-succ-eval--d5308357b5ee72ac46955699.md) | 96 | `result-track:d5308357b5ee72ac46955699ff5d6fddc4f90eb7cd638ac9be1f6828e2c3aa35` |
| 8 | `def` | [thetaPhiGaussianLift](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphigaussianlift--5e54032c063102d4f1f89a2e.md) | 105 | `declaration-track:5e54032c063102d4f1f89a2ed4d1ef1850f27749d950745ccb22c69f29d23e76` |
| 9 | `theorem` | [thetaPhiGaussianLift_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphigaussianlift-add--59653aa699be3b275fb79800.md) | 112 | `result-track:59653aa699be3b275fb79800bb7c4aab725578d3b4815d3382c488f0fd64206c` |
| 10 | `theorem` | [thetaPhiGaussianLift_monomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphigaussianlift-monomial--d52546ee0a49d5bc25031f09.md) | 125 | `result-track:d52546ee0a49d5bc25031f0904213a0e2e2bf87c7eeed7448af519f46a89b927` |
| 11 | `theorem` | [hasDerivAt_thetaPhiGaussianLift](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/hasderivat-thetaphigaussianlift--d2623b5110e013e6a4f6a055.md) | 136 | `result-track:d2623b5110e013e6a4f6a055a27c91d410afaa6be17b4fdc16e58b1d7cb8a8e2` |
| 12 | `def` | [thetaPhiDerivativeTapeValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativetapevalue--9a66ac0b7dcbab506d58f3a5.md) | 177 | `declaration-track:9a66ac0b7dcbab506d58f3a57c664150cf17473ba508291dd1cbcae474007722` |
| 13 | `theorem` | [hasDerivAt_thetaPhiDerivativeTapeValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/hasderivat-thetaphiderivativetapevalue--953acc5f3f2ce1137fbd318a.md) | 182 | `result-track:953acc5f3f2ce1137fbd318a5911cdde937413d872b212c7138583b449ed7ad9` |
| 14 | `theorem` | [thetaPhiDerivativeTapeValue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativetapevalue-zero--d020f2746d92ab91ea7eed2e.md) | 191 | `result-track:d020f2746d92ab91ea7eed2e38f404804c8ef05e85345ccb3ccb097e14f0c94f` |
| 15 | `def` | [thetaPhiInfiniteSourceJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiinfinitesourcejet--676f325516bcbfb4dc44127e.md) | 228 | `declaration-track:676f325516bcbfb4dc44127e23a782b68d40c3ea9823e5888033994411cd9ae4` |
| 16 | `theorem` | [thetaPhiDerivativeTapeValue_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativetapevalue-one--0c0b1065a52849c01c2b9dc2.md) | 235 | `result-track:0c0b1065a52849c01c2b9dc24fdbb42118158cbcc6c43ddc35643a13a21d63a7` |
| 17 | `theorem` | [thetaPhiDerivativeTapeValue_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativetapevalue-two--0b35a052281143e684ded019.md) | 244 | `result-track:0b35a052281143e684ded0190564faba1542007037bd54875466134a9fb530cd` |
| 18 | `theorem` | [thetaPhiDerivativeTapeValue_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativetapevalue-three--132034e5aca70762450c1e35.md) | 253 | `result-track:132034e5aca70762450c1e35b4359892d2d685048c30c4e0a83edf0e43c8da6d` |
| 19 | `theorem` | [thetaPhiDerivativeTapeValue_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativetapevalue-four--8d8e8e8da6f2df0c9c2351fd.md) | 262 | `result-track:8d8e8e8da6f2df0c9c2351fd36a2538754433853e76f673414abd7a3f323e15c` |
| 20 | `theorem` | [thetaPhiDerivativeTapeValue_five](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativetapevalue-five--0643fae9f305db9a31c1295b.md) | 271 | `result-track:0643fae9f305db9a31c1295b1a8a85d3cb18c96196d9e3cb9b9e876c32e3ec26` |
| 21 | `theorem` | [thetaPhiDerivativeTapeValue_six](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiderivativetapevalue-six--71f3ecf2f703828108e77f14.md) | 280 | `result-track:71f3ecf2f703828108e77f14c9509f8a1ed8b4cc913a88582fd18283661583fc` |
| 22 | `theorem` | [thetaPhiInfiniteSourceJet_prefix7](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4cd3fb4a09a52f5ab9bb3e9c362a8eac54fa29bdb8392206618de63e0dd7b7cd.lean/declarations/thetaphiinfinitesourcejet-prefix7--94db1275926400527a240573.md) | 289 | `result-track:94db1275926400527a240573657578a502efa9c2c31e7a5fad9cf768c437b17a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
