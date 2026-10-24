# Verification target: GRWTSK.Algebra.GroupTheory.Ext.Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89ed7b9dd7489a012fac2e0c8b1cce476b7883ae",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89ed7b9dd7489a012fac2e0c8b1cce476b7883ae`.

Source path: `GRWTSK/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean.json)

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
| 1 | `theorem` | [Monoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/monoid-ext--9e1db3d42533ce726d9bba5e.md) | 47 | `result-track:9e1db3d42533ce726d9bba5e33a0f9e2f0510d2f2dc7f273c075845d09416154` |
| 2 | `theorem` | [CommMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/commmonoid-tomonoid-injective--4f119a2f50fc42da1ef8aaf0.md) | 62 | `result-track:4f119a2f50fc42da1ef8aaf0da19aff4db083057b9ba866f15eaf6cacbbde47e` |
| 3 | `theorem` | [CommMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/commmonoid-ext--84151893a72a953e54d7779d.md) | 68 | `result-track:84151893a72a953e54d7779db3ffb6c401f04680d32946e809fae96504118f2a` |
| 4 | `theorem` | [LeftCancelMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/leftcancelmonoid-tomonoid-injective--30adb210f49c551954807e0b.md) | 73 | `result-track:30adb210f49c551954807e0beed71729522e9642fee8411cbccf808b5c8c9e2e` |
| 5 | `theorem` | [LeftCancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/leftcancelmonoid-ext--11f1b5fe392f1e5d915e806e.md) | 79 | `result-track:11f1b5fe392f1e5d915e806ed73bb7bef6b9b51ebc7f52488e235fab52aee10a` |
| 6 | `theorem` | [RightCancelMonoid.toMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/rightcancelmonoid-tomonoid-injective--85028bb5eea52ecccbd24cd3.md) | 85 | `result-track:85028bb5eea52ecccbd24cd32d3980449304288666520f1551bc2515047bae4b` |
| 7 | `theorem` | [RightCancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/rightcancelmonoid-ext--9e02ea62cc8b84f3db7ff8ce.md) | 91 | `result-track:9e02ea62cc8b84f3db7ff8ceb5a89d29be5f5bb4bb01c7aaec8a9700cea4c9ac` |
| 8 | `theorem` | [CancelMonoid.toLeftCancelMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/cancelmonoid-toleftcancelmonoid-injective--505bca36f2ca3d27314c813d.md) | 97 | `result-track:505bca36f2ca3d27314c813d63fe5d9cb3cfa2cdbd57ef83067932c108b16364` |
| 9 | `theorem` | [CancelMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/cancelmonoid-ext--70683cc91865f9051d0694fd.md) | 103 | `result-track:70683cc91865f9051d0694fde7886014b80e17b5af9b665ac859b09a86a14067` |
| 10 | `theorem` | [CancelMonoid.toRightCancelMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/cancelmonoid-torightcancelmonoid-injective--4a5dcb6fe482520a574182ac.md) | 109 | `result-track:4a5dcb6fe482520a574182acb87b575f22a3b9ccd3cb8ab0c4579751af955fcb` |
| 11 | `theorem` | [CancelCommMonoid.toCommMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/cancelcommmonoid-tocommmonoid-injective--2e257fc7e38e3ad5980572b2.md) | 117 | `result-track:2e257fc7e38e3ad5980572b281f98500f927f7d55e758c2611bc131e036fc297` |
| 12 | `theorem` | [CancelCommMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/cancelcommmonoid-ext--ca5de4335f0a2fc79b8a439e.md) | 123 | `result-track:ca5de4335f0a2fc79b8a439eb7e4a51bd7a4d9ecec6dafc5fd26198540570cfc` |
| 13 | `theorem` | [DivInvMonoid.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/divinvmonoid-ext--1e6ee07b2248d292024ef7f4.md) | 129 | `result-track:1e6ee07b2248d292024ef7f495cdb5e81992174d43ae8f404f0dd2bf180641f1` |
| 14 | `lemma` | [Group.toDivInvMonoid_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/group-todivinvmonoid-injective--03facfd624e4b92382a9cfa6.md) | 149 | `result-track:03facfd624e4b92382a9cfa6d730ee5f2669c21c26b9bab6beac1d9f28730aa5` |
| 15 | `theorem` | [Group.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/group-ext--4a7aece347317dc14321c233.md) | 153 | `result-track:4a7aece347317dc14321c233ebcde04a1e1c00c592165b4b6245d2b5ca78d0d7` |
| 16 | `lemma` | [CommGroup.toGroup_injective](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/commgroup-togroup-injective--df7f928853f1d8f172e62cbc.md) | 166 | `result-track:df7f928853f1d8f172e62cbc46b02f0326ccce57fe5ea71639bbb49ed3d585e4` |
| 17 | `theorem` | [CommGroup.ext](../../../../../mathematics/Algebra/GroupTheory/Ext/Variantf48c09d35c6d1247ee40b0c3d5c83b67bd8711679aa67280571e9763fefb8abe.lean/declarations/commgroup-ext--a94e3c64ed0bf402165244e4.md) | 170 | `result-track:a94e3c64ed0bf402165244e4f6957a33df3567043366bdfd9df9abbcd26973db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
