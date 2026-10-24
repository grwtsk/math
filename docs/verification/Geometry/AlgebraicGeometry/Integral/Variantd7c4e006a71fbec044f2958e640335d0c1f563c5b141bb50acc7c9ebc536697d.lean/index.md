# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Integral.Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12be92f1764926d5417079abbd86805ee833fbea",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12be92f1764926d5417079abbd86805ee833fbea`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean.json)

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
| 1 | `class` | [GeometricallyIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/geometricallyintegral--348e56264e76bf68b17da779.md) | 48 | `declaration-track:348e56264e76bf68b17da779c02bfab3c75a9a4c8e9848067dce91f9ff8f1e6d` |
| 2 | `lemma` | [GeometricallyIntegral.eq_geometrically](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/geometricallyintegral-eq-geometrically--81842281131876ae1e330b26.md) | 51 | `result-track:81842281131876ae1e330b26a67b0f0ceaab264759d54ee56c386bc2841cb2b2` |
| 3 | `lemma` | [GeometricallyIntegral.eq_geometricallyReduced_inf_geometricallyIrreducible](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/geometricallyintegral-eq-geometricallyreduced-inf-geometricallyirreducib--218ae84789acab5d501d2f87.md) | 55 | `result-track:218ae84789acab5d501d2f87cc2acc9debb2c54fb67b46e8c1157ab48cadbc18` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/instance--03a68b6f41805b05c70b9cce.md) | 63 | `declaration-track:03a68b6f41805b05c70b9cce8f45913e729f241d3b5781023f70f5df0d40ca45` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/instance--ad812be7746190f9b7fd2f3c.md) | 66 | `declaration-track:ad812be7746190f9b7fd2f3cb3063bfc66db595b92301bd748c321dbd6a3e079` |
| 6 | `lemma` | [GeometricallyIntegral.of_geometricallyReduced_of_geometricallyIrreducible](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/geometricallyintegral-of-geometricallyreduced-of-geometricallyirreducibl--998cb3271c3012984874ab78.md) | 69 | `result-track:998cb3271c3012984874ab78fee68b82a8ae20bfe474e8e6a2bdff2adcc2a7a1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/instance--b4b47fccd1ed07d9161689ac.md) | 74 | `declaration-track:b4b47fccd1ed07d9161689ac02f8b18191e6473204351983b59993781b13184d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/instance--aa60db6db6a7a20e89479849.md) | 78 | `declaration-track:aa60db6db6a7a20e89479849fee253b1d63b5d1a28dde555638f2d1bf5254120` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/instance--dbdd61242c7f71ab447d5d67.md) | 82 | `declaration-track:dbdd61242c7f71ab447d5d67fa4b22b1cb23cbb93a70c74363435d4256e955c6` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/instance--ef8bbb4df9e38829779bee0f.md) | 85 | `declaration-track:ef8bbb4df9e38829779bee0fcc1f69a3413350e4c881484d1a49afdd6030a1a4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/instance--684e52504918f07aeda98d5d.md) | 89 | `declaration-track:684e52504918f07aeda98d5d815c63394f1034575ea51e01699a9a8127ff4994` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/instance--3c22818df2b2e1c2840c312d.md) | 93 | `declaration-track:3c22818df2b2e1c2840c312dc6d9653dfba2275c3a8a93361134d297d94ce739` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/instance--9e8b055341df70a237fa2c56.md) | 96 | `declaration-track:9e8b055341df70a237fa2c56d05c74524813d214ce75f0e235ddfa89d3e9d7ae` |
| 14 | `lemma` | [GeometricallyIntegral.isIntegral_of_isLocallyNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/geometricallyintegral-isintegral-of-islocallynoetherian--4b2fea86d5b67682db6b528b.md) | 99 | `result-track:4b2fea86d5b67682db6b528b7b8641c2ac7af7e379ee74570bce936bcf122a82` |
| 15 | `lemma` | [GeometricallyIntegral.isIntegral_of_subsingleton](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/geometricallyintegral-isintegral-of-subsingleton--8ecabe6ee47ae6bc9d6206d7.md) | 107 | `result-track:8ecabe6ee47ae6bc9d6206d76132197e68eabf4cf7059c4ce34dd9c0b5370a63` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/instance--6e9f31a0211518048131f4ee.md) | 115 | `declaration-track:6e9f31a0211518048131f4eee034c8b86fc9d3f052de06764410015d5c99054a` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/instance--17821bd7e49951a9b28ac086.md) | 119 | `declaration-track:17821bd7e49951a9b28ac086f0751186209c238d22c3d75636d7948d31e7c642` |
| 18 | `lemma` | [GeometricallyIntegral.iff_geometricallyIntegral_fiber](../../../../../mathematics/Geometry/AlgebraicGeometry/Integral/Variantd7c4e006a71fbec044f2958e640335d0c1f563c5b141bb50acc7c9ebc536697d.lean/declarations/geometricallyintegral-iff-geometricallyintegral-fiber--546383f1e0a9c5767a325df1.md) | 124 | `result-track:546383f1e0a9c5767a325df1cf7510fc1c438c7f850c06bdc06065bcef6b59f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
