# Verification target: GRWTSK.Geometry.AlgebraicGeometry.UniversallyClosed.Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d69a347b2d8026170b4b4b555d9c2adedf8c67a1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d69a347b2d8026170b4b4b555d9c2adedf8c67a1`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean.json)

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
| 1 | `class` | [UniversallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/universallyclosed--d23f4508520e184683587352.md) | 51 | `declaration-track:d23f4508520e1846835873525c30c04d89851c1e547cc3fbbdc757cf61112305` |
| 2 | `lemma` | [Scheme.Hom.isClosedMap](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/scheme-hom-isclosedmap--249735f695e38423e69a30e7.md) | 54 | `result-track:249735f695e38423e69a30e7baa6215195a74382502c9659056c707d8794bbff` |
| 3 | `theorem` | [universallyClosed_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/universallyclosed-eq--c93833e971e86825359c87c5.md) | 57 | `result-track:c93833e971e86825359c87c52e358af0e8cb7d4a2769f268d19a66a6eb6e2131` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/instance--e8b593883e889b4d6adbd064.md) | 60 | `declaration-track:e8b593883e889b4d6adbd064a875ce3a430018a819a29e25decfb6d60b418410` |
| 5 | `theorem` | [universallyClosed_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/universallyclosed-respectsiso--1833311b785f5388a34d9d44.md) | 67 | `result-track:1833311b785f5388a34d9d447926da13f38bbc005727166d3f2ba1882155f8f6` |
| 6 | `instance` | [universallyClosed_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/universallyclosed-isstableunderbasechange--03f2caae0f3d220e1d394db0.md) | 70 | `declaration-track:03f2caae0f3d220e1d394db06a80259fdf0bac1efbbac180c93f5da88f163646` |
| 7 | `instance` | [isClosedMap_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/isclosedmap-isstableundercomposition--1d94a8d2f144b2aff55be14e.md) | 73 | `declaration-track:1d94a8d2f144b2aff55be14e2715adc9f542b81757532a2d5cbac6a259003176` |
| 8 | `instance` | [universallyClosed_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/universallyclosed-isstableundercomposition--2ed54d14d611f47bc3798fc4.md) | 77 | `declaration-track:2ed54d14d611f47bc3798fc4c4a8210be57732d1dd487e34d45a3bd26edc1bc0` |
| 9 | `lemma` | [UniversallyClosed.of_comp_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/universallyclosed-of-comp-surjective--3c62e15b46a1f22e3c7dc73a.md) | 83 | `result-track:3c62e15b46a1f22e3c7dc73a2d09a0adfb1b8e6033844d9d0f57b7b5cf490959` |
| 10 | `instance` | [universallyClosedTypeComp](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/universallyclosedtypecomp--aa66547c4e486e5331bb222b.md) | 92 | `declaration-track:aa66547c4e486e5331bb222b8fc991dc1d9869f5951f3f9db00c8130c2deeee5` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/instance--306b4f4551f0dff6f235637e.md) | 96 | `declaration-track:306b4f4551f0dff6f235637e626ad3e88f6d225a3a1d72677b6f23bb2c820f8d` |
| 12 | `instance` | [universallyClosed_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/universallyclosed-fst--05fc456c0b89baaccb33576e.md) | 100 | `declaration-track:05fc456c0b89baaccb33576e948045fece4c2ddde05dc7658bc080fdbf1c30c6` |
| 13 | `instance` | [universallyClosed_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/universallyclosed-snd--672ef5802c9b83179cf0bbbb.md) | 105 | `declaration-track:672ef5802c9b83179cf0bbbbcc608fa431eed4e204dc9186bc360dd21f8ef9eb` |
| 14 | `instance` | [universallyClosed_isZariskiLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/universallyclosed-iszariskilocalattarget--31d62ae901311bb6feabc6e9.md) | 109 | `declaration-track:31d62ae901311bb6feabc6e9bd9eb7633696c6d203c22a313ec8f3d944ee8fd8` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/instance--9faf211f7675474fba67c257.md) | 116 | `declaration-track:9faf211f7675474fba67c2575107c1a59bbe82bd05d92c0c8f2c86b3be6ea7a6` |
| 16 | `lemma` | [compactSpace_of_universallyClosed](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/compactspace-of-universallyclosed--18569245cbc460f2a3b92e2f.md) | 121 | `result-track:18569245cbc460f2a3b92e2fb0d0e562f90b748fb206f0df4118a49570c72705` |
| 17 | `lemma` | [Scheme.Hom.isProperMap](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/scheme-hom-ispropermap--74b09ed6e68eeeff44cbb93a.md) | 165 | `result-track:74b09ed6e68eeeff44cbb93ae71303f6e33d6f4ecea41dd05cc245de9a44fa6f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/instance--f893e0a9f425a400bfeb98c8.md) | 172 | `declaration-track:f893e0a9f425a400bfeb98c85b9b5e517a1e30915b6288195b98824f0fd043b9` |
| 19 | `lemma` | [universallyClosed_eq_universallySpecializing](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/universallyclosed-eq-universallyspecializing--6ed0d7fae3321f04df6fb844.md) | 176 | `result-track:6ed0d7fae3321f04df6fb8441c398c2ade8961ead008be7106e59b1b5cac0834` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/UniversallyClosed/Variant58561b427a936812eb5d115ae9b2a427f5c5f862d2cd6b34daba9f9d0361ed23.lean/declarations/instance--8b2812f3e30b8538f27aae24.md) | 185 | `declaration-track:8b2812f3e30b8538f27aae24335f86e292470dd5ebd63ede1cca0867ef6a9ab0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
