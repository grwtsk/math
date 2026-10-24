# Verification target: GRWTSK.Algebra.Basic.Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a54f107356a1c65bfbc165954e1c4f8c3febbd5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a54f107356a1c65bfbc165954e1c4f8c3febbd5`.

Source path: `GRWTSK/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocalHom_id](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/islocalhom-id--dec160c3c547ff380a6e59fa.md) | 37 | `result-track:dec160c3c547ff380a6e59fa2de19344fd936b4631e793b56a11de224365e03e` |
| 2 | `theorem` | [isLocalHom_toRingHom](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/islocalhom-toringhom--9a9df0a78728238d35be1796.md) | 42 | `result-track:9a9df0a78728238d35be179628c121499d27e3aa5d1e3d672ddb83d5b0eead0c` |
| 3 | `theorem` | [RingHom.isLocalHom_comp](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/ringhom-islocalhom-comp--ffa8b4371ec12eee6eb50248.md) | 47 | `result-track:ffa8b4371ec12eee6eb5024864ef9bdea00d83328a5c0219f1606493af89d073` |
| 4 | `theorem` | [isLocalHom_of_comp](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/islocalhom-of-comp--03616458a86f2a5c35f216d6.md) | 51 | `result-track:03616458a86f2a5c35f216d6a4a1bd1eb868cb7be7b470ba591fdb9faf5f55cd` |
| 5 | `theorem` | [RingHom.domain_isLocalRing](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/ringhom-domain-islocalring--c2a5538d1b26a71f47ff8168.md) | 56 | `result-track:c2a5538d1b26a71f47ff81680e2f8416bd0a16406a72a5033b1eb3bccb6c4d4a` |
| 6 | `theorem` | [map_nonunit](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/map-nonunit--e1e851dc568aec0079da6365.md) | 74 | `result-track:e1e851dc568aec0079da6365ea6d2abba8d85fb30965b0fa03f078e6841d7d28` |
| 7 | `theorem` | [local_hom_TFAE](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/local-hom-tfae--849cc4c86456ac477a977e58.md) | 88 | `result-track:849cc4c86456ac477a977e5857feec4219d15f1b87eabe84d3d5b126dde694cc` |
| 8 | `lemma` | [maximalIdeal_comap](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/maximalideal-comap--25f92dba5594860ef328ae74.md) | 103 | `result-track:25f92dba5594860ef328ae748383e470d681438b1602b7ed2683df73142c39ff` |
| 9 | `theorem` | [map_maximalIdeal_le](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/map-maximalideal-le--01bc446d553606a9cf63afa7.md) | 106 | `result-track:01bc446d553606a9cf63afa73c96ad08b1179141ddd3b740ac56b0962b8dec82` |
| 10 | `theorem` | [map_maximalIdeal_lt_top](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/map-maximalideal-lt-top--e23213cc7856eeeeabc59071.md) | 110 | `result-track:e23213cc7856eeeeabc59071d969fa21eac676e229995f75f9f19f93fc3ffd7e` |
| 11 | `theorem` | [of_surjective](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/of-surjective--98c8fef83db7776f3ad2cb34.md) | 115 | `result-track:98c8fef83db7776f3ad2cb34ab75cd01dc3c0453676c9f92d5232b843ef979e4` |
| 12 | `lemma` | [_root_.GRWTSK.Algebra.IsLocalHomId.Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.IsLocalHom.of_surjective](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/root-grwtsk-algebra-islocalhomid-variant5b55f038bcbe64d45dab1df9d1882bb9--9e378eb60de6ab130516daa7.md) | 126 | `result-track:9e378eb60de6ab130516daa73e6bbe851dc0a86c4600fe176f2a2c475671acd6` |
| 13 | `theorem` | [surjective_units_map_of_local_ringHom](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/surjective-units-map-of-local-ringhom--a41a98ec5e00297ee80ce52d.md) | 137 | `result-track:a41a98ec5e00297ee80ce52d0252f23c8ad0d471dd54289399eecc5f9d13682e` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/instance--6852b946af66dfb4c99a48e4.md) | 149 | `declaration-track:6852b946af66dfb4c99a48e418997c45de35b216ed14f617be78e7b29a9271a5` |
| 15 | `lemma` | [map_maximalIdeal_of_surjective](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/map-maximalideal-of-surjective--e73ef1c383beda64cb3cd9c8.md) | 153 | `result-track:e73ef1c383beda64cb3cd9c8a028a2eb46b30404a7e85229f10f836c0379c6ce` |
| 16 | `lemma` | [map_ringEquiv_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/map-ringequiv-maximalideal--ff1978ebc702a18848751d0d.md) | 159 | `result-track:ff1978ebc702a18848751d0d677d989a2bf76ec7ba1acffc8ad1527e16940cce` |
| 17 | `theorem` | [isLocalRing](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/islocalring--3616dc045f192670a1c0cb24.md) | 167 | `result-track:3616dc045f192670a1c0cb2414aaa28b4000f01a2a2e57c34a12a2643082ac9c` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/declarations/instance--1b05c85e23ad00a8e5186f4f.md) | 174 | `declaration-track:1b05c85e23ad00a8e5186f4f5a4f60a53d5445a940e9698cd9bde58f65e4fa06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
