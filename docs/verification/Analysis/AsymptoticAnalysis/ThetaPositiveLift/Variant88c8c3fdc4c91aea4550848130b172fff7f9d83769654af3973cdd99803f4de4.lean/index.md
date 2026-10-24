# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "884a168a6dd29126c746c49cc10c28c0f6ea80e0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `884a168a6dd29126c746c49cc10c28c0f6ea80e0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianFourPerturbation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhiJetPolynomial7_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetaphijetpolynomial7-abs-le--12387c5f51a030f787b86d68.md) | 23 | `result-track:12387c5f51a030f787b86d6875b120b346da85e689c504a16970b8b3214d62e1` |
| 2 | `def` | [thetaPhiNormalizedModeTerm7](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetaphinormalizedmodeterm7--5ed005105ceff09a151a5c9c.md) | 47 | `declaration-track:5ed005105ceff09a151a5c9cd9f32234e5d29994b6ae033018d23d6613786f65` |
| 3 | `def` | [thetaPhiRemainderModeTerm7](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetaphiremaindermodeterm7--c1a567a299477a6f9fe944f4.md) | 54 | `declaration-track:c1a567a299477a6f9fe944f4ea50b5de1e528e690145f7e12f9dc07a78197fc3` |
| 4 | `theorem` | [thetaPhiNormalizedModeTerm7_shift](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetaphinormalizedmodeterm7-shift--6edd01087b72a68988c2ba89.md) | 59 | `result-track:6edd01087b72a68988c2ba890541c1d19fac56c187762bf3543cf7246526b8f7` |
| 5 | `theorem` | [thetaPhiNormalizedModeTerm7_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetaphinormalizedmodeterm7-summable--3d49b175fd21710d3092b795.md) | 67 | `result-track:3d49b175fd21710d3092b79500504e9e364b8986193d035ab9a598f09d077f07` |
| 6 | `theorem` | [thetaPhiRemainderJet7_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetaphiremainderjet7-eq-tsum--c8296567cc29c78ed2b745f3.md) | 77 | `result-track:c8296567cc29c78ed2b745f3ee3bbef7bb1ae7caf968c7dcd1926b086806a131` |
| 7 | `def` | [rankFourGaussianFromTwo](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/rankfourgaussianfromtwo--52bdaab8e8ca1dfc8a599f87.md) | 99 | `declaration-track:52bdaab8e8ca1dfc8a599f877aa66514c406794c4a82fe7235e0215516a6b96d` |
| 8 | `theorem` | [rankFourGaussian_ratio_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/rankfourgaussian-ratio-half--f39c53c86ab4dfe416509e33.md) | 103 | `result-track:f39c53c86ab4dfe416509e33906f0d306756cbb1df7e32123723a18685dc51b2` |
| 9 | `theorem` | [rankFourGaussianFromTwo_succ_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/rankfourgaussianfromtwo-succ-le--4a16eb8ffb61b07986497205.md) | 115 | `result-track:4a16eb8ffb61b0798649720582de3f9097d68daba7efa24ed33c9e779896a521` |
| 10 | `theorem` | [rankFourGaussianFromTwo_geometric](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/rankfourgaussianfromtwo-geometric--da7a31c18ed25fe3fdcd1305.md) | 154 | `result-track:da7a31c18ed25fe3fdcd130521aaf3345d1d4b7fbd7f9ba964f6756075853278` |
| 11 | `theorem` | [thetaGaussianFromTwo_rankFour_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetagaussianfromtwo-rankfour-summable--ce8af944985253fa1336d1b7.md) | 170 | `result-track:ce8af944985253fa1336d1b7b8b9a3260df131ccff4539922058b2a9a4798596` |
| 12 | `theorem` | [thetaGaussianFromTwo_rankFour_tsum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetagaussianfromtwo-rankfour-tsum-le--6687f5cdb82939b59413c7c2.md) | 184 | `result-track:6687f5cdb82939b59413c7c28b456c42e54454e52e32e868b325fa736da09915` |
| 13 | `def` | [thetaPhiJet7RemainderErrorCoefficient](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetaphijet7remaindererrorcoefficient--6f52430fdce9538767e83a17.md) | 203 | `declaration-track:6f52430fdce9538767e83a177e0ca7cbb09e2c27ec609316ec6330067514f391` |
| 14 | `theorem` | [thetaPhiRemainderModeTerm7_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetaphiremaindermodeterm7-norm-le--56f3763fbe5944b4334f0861.md) | 206 | `result-track:56f3763fbe5944b4334f086117d73efaa0b90c687d712c61c0a1510410f9e348` |
| 15 | `theorem` | [thetaPhiRemainderModeTerm7_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetaphiremaindermodeterm7-summable--810674bc560ae222e1cb5019.md) | 234 | `result-track:810674bc560ae222e1cb501925f7e6290a630ea9d5ebb6838854629455d24adc` |
| 16 | `theorem` | [thetaPhiRemainderModeTerm7_tsum_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetaphiremaindermodeterm7-tsum-abs-le--d11759dc298f520091c25c5e.md) | 245 | `result-track:d11759dc298f520091c25c5e55b50208e5c8eb014a65865a9c4e9dcc9fae2a30` |
| 17 | `theorem` | [thetaPhiRemainderJet7_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant88c8c3fdc4c91aea4550848130b172fff7f9d83769654af3973cdd99803f4de4.lean/declarations/thetaphiremainderjet7-abs-le--ef8d27e0c04ebfaa11fa15e6.md) | 281 | `result-track:ef8d27e0c04ebfaa11fa15e62dc222ae290cf4d851d23e4d5668e7c81fe7cf7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
