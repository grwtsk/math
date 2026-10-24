# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc0c3589e5fc8dd56d05069481a2ab5255d5e638",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc0c3589e5fc8dd56d05069481a2ab5255d5e638`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasDerivAt_thetaGaussianTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/hasderivat-thetagaussianterm--26ba6da7fe631167f179320a.md) | 30 | `result-track:26ba6da7fe631167f179320a13c25d11890bfd21c8e56bd4c27bca1257cf929f` |
| 2 | `theorem` | [hasDerivAt_thetaGaussianSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/hasderivat-thetagaussiansum--17f31e6590325d610d0dc536.md) | 44 | `result-track:17f31e6590325d610d0dc53679741fd30e409b9ce4eba1a91f7a458ff0e2c57a` |
| 3 | `theorem` | [thetaPhiRawD2_eq_gaussians](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/thetaphirawd2-eq-gaussians--01754eddb603f978c28facd5.md) | 70 | `result-track:01754eddb603f978c28facd5461c011243d38e2d06c1124d5714590cbb2d689a` |
| 4 | `def` | [thetaPhiRawD3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/thetaphirawd3--acb8d671ecba1db3548e8e04.md) | 92 | `declaration-track:acb8d671ecba1db3548e8e0414f11542e70844a7b5cbef2a253205b560649fff` |
| 5 | `def` | [thetaPhiRawD4](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/thetaphirawd4--2db1141542ee15d16558f07d.md) | 100 | `declaration-track:2db1141542ee15d16558f07d56d3034ba05fcfe14fec02a2a2aef28a8375cc5a` |
| 6 | `theorem` | [hasDerivAt_thetaPhiRawD2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/hasderivat-thetaphirawd2--5f1f5ebfa6db5b1636672999.md) | 108 | `result-track:5f1f5ebfa6db5b1636672999be521242aba9e7671abfb944c67d582f7873342c` |
| 7 | `theorem` | [hasDerivAt_thetaPhiRawD3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/hasderivat-thetaphirawd3--417e9ec6cb93cf2402b77cd6.md) | 123 | `result-track:417e9ec6cb93cf2402b77cd6be8efae96fe7f87a00ecfd22a992eb1be8fea6fe` |
| 8 | `theorem` | [deriv_deriv_thetaPhi_eq_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/deriv-deriv-thetaphi-eq-raw--be0224dde3a067d231e5178c.md) | 134 | `result-track:be0224dde3a067d231e5178c10d075f5b759a6ebc56717ff2b494b16d07d4846` |
| 9 | `theorem` | [hasDerivAt_deriv_deriv_thetaPhi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/hasderivat-deriv-deriv-thetaphi--5cf20967b8ce91cbac5b6cbd.md) | 139 | `result-track:5cf20967b8ce91cbac5b6cbdac0eeccc26bc126de5c2c085766fcb6230efa919` |
| 10 | `theorem` | [hasDerivAt_deriv_deriv_deriv_thetaPhi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/hasderivat-deriv-deriv-deriv-thetaphi--ae7359f653f2ffb77bfdbb50.md) | 144 | `result-track:ae7359f653f2ffb77bfdbb50081eb1c817ff7168d3b7a437289b2432a5cf51a6` |
| 11 | `theorem` | [thetaGaussianSum_poly_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/thetagaussiansum-poly-tendsto-attop--fece37ecbd66ebd5ba02617e.md) | 151 | `result-track:fece37ecbd66ebd5ba02617ed1a355fbf9abe3c316de1b950ce0bcc58e201507` |
| 12 | `theorem` | [deriv_thetaPhi_poly_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/deriv-thetaphi-poly-tendsto-attop--edda8825cc68321f7974e249.md) | 162 | `result-track:edda8825cc68321f7974e2496f5be9a9d7b6e796bfd799d2511b9852caf54da6` |
| 13 | `theorem` | [deriv_deriv_thetaPhi_poly_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/deriv-deriv-thetaphi-poly-integrableon--a77889ac2e4cf5e920290179.md) | 173 | `result-track:a77889ac2e4cf5e920290179d34c9d47e028061b8e96b9c25520985f2b0620f1` |
| 14 | `def` | [jetCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/jetcoefficient--6d27f1fbfefbdab0f4240a46.md) | 186 | `declaration-track:6d27f1fbfefbdab0f4240a468f3e1f2f0eee1907f74b84163a58b340268747ea` |
| 15 | `theorem` | [jetPolynomial_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/jetpolynomial-eq-sum--7e1695d85995508078341698.md) | 191 | `result-track:7e1695d859955080783416985da21c950eb594c3e7e1968a50a8222c2a76c96f` |
| 16 | `def` | [thetaPhiJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/thetaphijet--e6101274f8df801bd088b118.md) | 196 | `declaration-track:e6101274f8df801bd088b1184705e2e0afc63b083a9a56f36e1fa5f4a978edb3` |
| 17 | `theorem` | [thetaPhi_eq_gaussianSums](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/thetaphi-eq-gaussiansums--b26a814c2aa7220015ba3764.md) | 199 | `result-track:b26a814c2aa7220015ba3764a2dabb6b010b2e9ed443f0d52f42479514375ec2` |
| 18 | `theorem` | [thetaPhiJet_eq_gaussianSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/thetaphijet-eq-gaussiansum--2ae8e126cb072d62d3515d3a.md) | 215 | `result-track:2ae8e126cb072d62d3515d3a5b76c13b7f849dafe88bca5e5e4a25b9ed29f066` |
| 19 | `theorem` | [scaledGaussianTerm_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/scaledgaussianterm-eq--6b27243416cfbad21134da45.md) | 223 | `result-track:6b27243416cfbad21134da4517e84cef02cd39ec2852a8ea4447a52ac3f52575` |
| 20 | `theorem` | [thetaPhiJet_eq_polynomial_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/thetaphijet-eq-polynomial-sum--67e18c6d83488a09d126c424.md) | 254 | `result-track:67e18c6d83488a09d126c424bb81fa0b9e2c1d0794420f0ba9c0745a5c25228d` |
| 21 | `theorem` | [thetaPhiJet_polynomial_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/thetaphijet-polynomial-summable--09465a369991c0a6b77e54f7.md) | 286 | `result-track:09465a369991c0a6b77e54f77425ee7496d5ca7a3ff58acf4d3658523172c1db` |
| 22 | `theorem` | [hasDerivAt_thetaPhiJet](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant4b0e7e3ca8052e3311cbb72bfbb6d2cb1bc833768521e3a244900e1fbfd1dbd0.lean/declarations/hasderivat-thetaphijet--7f86d949276d53122b9efded.md) | 305 | `result-track:7f86d949276d53122b9efdedfce05d9fbbfd0b91b932c3c1b7e068f1be7c76db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
