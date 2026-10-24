# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Artinian.Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4feb2b35b479c1250936a025072db37ce4d28eeb",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4feb2b35b479c1250936a025072db37ce4d28eeb`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLocallyArtinian](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/islocallyartinian--d616315936e0d1350e78336f.md) | 53 | `declaration-track:d616315936e0d1350e78336fac8285407d33618ff47e409f7c9b4b616e12fe86` |
| 2 | `instance` | [IsLocallyArtinian.isLocallyNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/islocallyartinian-islocallynoetherian--55f7dfe1922cb2122a3d85f8.md) | 59 | `declaration-track:55f7dfe1922cb2122a3d85f8c7f9a4a4682683e8988ae1852776f58ad301bdf1` |
| 3 | `instance` | [IsLocallyArtinian.isArtinianRing_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/islocallyartinian-isartinianring-of-isaffine--02b6b15c9d6f349846e47db3.md) | 62 | `declaration-track:02b6b15c9d6f349846e47db35e8553a04a5096e664e544d527c536cb94b4cc5a` |
| 4 | `lemma` | [IsLocallyArtinian.of_topologicalKrullDim_le_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/islocallyartinian-of-topologicalkrulldim-le-zero--9c93fbf1a4ca6e278119dfd5.md) | 66 | `result-track:9c93fbf1a4ca6e278119dfd569286be946a5faa03433feb5b4af472bfb0bc8e3` |
| 5 | `theorem` | [IsLocallyArtinian.of_isLocallyNoetherian_of_discreteTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/islocallyartinian-of-islocallynoetherian-of-discretetopology--7f02473207e625dce86a9417.md) | 76 | `result-track:7f02473207e625dce86a9417ba2bab94ee63ee99e2a175fbc370bfa28319ecfb` |
| 6 | `lemma` | [IsLocallyArtinian.of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/islocallyartinian-of-isopenimmersion--753cbe9d7d6dc6956d8ded43.md) | 82 | `result-track:753cbe9d7d6dc6956d8ded433f56fad9ed629e4d91e0b7806fcf1ec012a858dc` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/instance--dea0be60fab2586f21b36e14.md) | 89 | `declaration-track:dea0be60fab2586f21b36e14b50e6fce161f955a8ed1c6461b4baf72c33d5266` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/instance--53e0996a84975ffbff4ea79c.md) | 91 | `declaration-track:53e0996a84975ffbff4ea79c8430c36c714eab3c0367ba8a7e9ef9d96e911d09` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/instance--790c83874b5576af848e115d.md) | 95 | `declaration-track:790c83874b5576af848e115d6ddc7d56a72f22247cfbed76106fa3ce6b7282ce` |
| 10 | `theorem` | [IsLocallyArtinian.iff_isLocallyNoetherian_and_discreteTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/islocallyartinian-iff-islocallynoetherian-and-discretetopology--ff3a107b532b57521c5f7a25.md) | 105 | `result-track:ff3a107b532b57521c5f7a251d0b6f4bef9a70915d66d6d29d43dcdce00dd5d2` |
| 11 | `theorem` | [IsLocallyArtinian.of_isImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/islocallyartinian-of-isimmersion--889f50c607212e2480ddd9e6.md) | 110 | `result-track:889f50c607212e2480ddd9e60fb64a80b839a0a9b9a33d034aa2aecab52b9232` |
| 12 | `theorem` | [Scheme.isLocallyArtinianScheme_Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/scheme-islocallyartinianscheme-spec--6c10dcf02db749a6e2648a89.md) | 116 | `result-track:6c10dcf02db749a6e2648a89d264e01586cf2aaa388d7cb58b3894fa303ae985` |
| 13 | `theorem` | [isLocallyArtinian_iff_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/islocallyartinian-iff-opencover--d65edbdb2efdc95b0230473e.md) | 122 | `result-track:d65edbdb2efdc95b0230473e63919f0fd9b0e9bd3ebf6868a12af15384caafff` |
| 14 | `theorem` | [isLocallyArtinian_iff_of_isOpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/islocallyartinian-iff-of-isopencover--350f42f9e88e8ee6469117b3.md) | 132 | `result-track:350f42f9e88e8ee6469117b3634d022d653be1e5099d56aac213fbc558596b56` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/instance--5cb193a8e334b6e6d18f7ace.md) | 140 | `declaration-track:5cb193a8e334b6e6d18f7acea791a114d817afcf1f1e2acf6de07d4a38948c4c` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/instance--ee61cdaae6fe20f7234cf6db.md) | 143 | `declaration-track:ee61cdaae6fe20f7234cf6db8bdb3cdcad44d9b3155f3038304cab4359b48e3c` |
| 17 | `class` | [IsArtinianScheme](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/isartinianscheme--8046445c3e52622f2183907f.md) | 162 | `declaration-track:8046445c3e52622f2183907fd2861fff09b73ba05b003a6771a1c221fb6ce56f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/instance--717e995f2194a8bae49224da.md) | 165 | `declaration-track:717e995f2194a8bae49224da52cfed1161eb9b309defbf26cc3340c69f6f3707` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/instance--82f4df57bc0cc87547fdf5a0.md) | 168 | `declaration-track:82f4df57bc0cc87547fdf5a04f7e134ce4c8e6055cd30a59ada2d522e77e4785` |
| 20 | `theorem` | [IsArtinianScheme.iff_isNoetherian_and_discreteTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/isartinianscheme-iff-isnoetherian-and-discretetopology--8458261fd200831abfab8290.md) | 172 | `result-track:8458261fd200831abfab8290617a9b8e5d9d7a667d9789885f7d6625bd9220c2` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/instance--8936ddee14c53c6d551820cf.md) | 177 | `declaration-track:8936ddee14c53c6d551820cf540ac8a607d9ab230ea0a903b29d1e92bc28922b` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/instance--0ff0fcc62dd290b3a7c2545e.md) | 183 | `declaration-track:0ff0fcc62dd290b3a7c2545e23a5d42f761696acc10e4c865033f8c1b39c62a1` |
| 23 | `theorem` | [Scheme.isArtinianScheme_Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Variant9ce660ce438a399e6a2edeba53e38d0f3a7adeaca86c6470aa441b56f8566b93.lean/declarations/scheme-isartinianscheme-spec--21ea6184da2c8d4049b9d0d8.md) | 187 | `result-track:21ea6184da2c8d4049b9d0d8891d61729f1c6b5670393ad722c520c97dda2c40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
