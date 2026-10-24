# Verification target: GRWTSK.Algebra.ZeroDivisorsInAddMonoidAlgebras.Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce54372923f016593fc044f3d30ca4752942bc9d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/index.md) · [Full source](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce54372923f016593fc044f3d30ca4752942bc9d`.

Source path: `GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean.json)

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
| 1 | `theorem` | [zero_divisors_of_periodic](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/zero-divisors-of-periodic--c1946abd23153efe303d2ea8.md) | 60 | `result-track:c1946abd23153efe303d2ea80797794306539595ef598d5f5687c05f9ff76dd9` |
| 2 | `theorem` | [single_zero_one](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/single-zero-one--aba7373e37b844ffb47d93be.md) | 68 | `result-track:aba7373e37b844ffb47d93bedb7c74507db323c3a8ca54663f330cbbbbe9b5f8` |
| 3 | `theorem` | [zero_divisors_of_torsion](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/zero-divisors-of-torsion--169062a9d373330d29869ec6.md) | 80 | `result-track:169062a9d373330d29869ec67ce35a3613e8d92fdebf5451015282d656703348` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/example--94a3694676474eafb494acda.md) | 102 | `declaration-track:94a3694676474eafb494acdaadca5be9901c9a678b2b68bb89d82ab06d51da48` |
| 5 | `inductive` | [F](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/f--bac002e8db2dcb2202eb61f2.md) | 108 | `declaration-track:bac002e8db2dcb2202eb61f2a6a2a0f63263d6a0865711e5d2c7e23edf31b404` |
| 6 | `def` | [List.dropUntil](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/list-dropuntil--aa0315e1f05ad92f79fe9e01.md) | 119 | `declaration-track:aa0315e1f05ad92f79fe9e01d33ec9a3d35fd679b400e6c686068cd30865b570` |
| 7 | `elab` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/elab--c2e58fa70ff059a430fd17b5.md) | 134 | `declaration-track:c2e58fa70ff059a430fd17b5db11b6324ece27bb7aa7eb6c748f61f22da875d1` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/instance--80d26590aea29ed95560b809.md) | 148 | `declaration-track:80d26590aea29ed95560b809f9d6c9b8cd4e6395fdc3094ccd03b742fa7a087a` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/instance--2fed255df5703e1494005822.md) | 152 | `declaration-track:2fed255df5703e1494005822d8a0eb4ac9e1b286270dab25e6d6ce93b33597aa` |
| 10 | `macro` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/macro--ff5091faa9a4bb68aaf1ac7c.md) | 156 | `declaration-track:ff5091faa9a4bb68aaf1ac7c19c6c9710ffb1d894470a00aa45df4e2c8fc5511` |
| 11 | `def` | [val](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/val--39895430236b0524d9f0e8a0.md) | 160 | `declaration-track:39895430236b0524d9f0e8a010fe41ef039b32fc2cc3394e6c22f575cbe963f9` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/instance--8c1c7022ba8acb3c8d905d5b.md) | 164 | `declaration-track:8c1c7022ba8acb3c8d905d5b00a0ae3921acb4abcb03b557038089eb374fbf29` |
| 13 | `theorem` | [z01](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/z01--938a9b32d02c3ce4fb3e4003.md) | 168 | `result-track:938a9b32d02c3ce4fb3e40033871b2a756dc96364f5cf2ffbd81b967ed2e18fc` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/instance--349d35bb523a1f7ebc0127e5.md) | 170 | `declaration-track:349d35bb523a1f7ebc0127e5f5d03bf39c583463c2e702f012568975a76b109a` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/instance--dc57fe7cf36242475b4df959.md) | 174 | `declaration-track:dc57fe7cf36242475b4df959d526ebfd8d4be202960d6607d277eb720939b611` |
| 16 | `instance` | [addLeftMono](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/addleftmono--19ba65f0ef6a88169a3ff1ef.md) | 182 | `declaration-track:19ba65f0ef6a88169a3ff1efc0486d1f0f353eef86349be6ea3824ebe4aaf8d2` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/example--d30c5f10720dfb6385eb057c.md) | 185 | `declaration-track:d30c5f10720dfb6385eb057c5c84de1b5e02326cf397d7e117fbaad268de741f` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/example--fc4543f2d3760bb444f3905b.md) | 189 | `declaration-track:fc4543f2d3760bb444f3905b6b87b347f93e2ba40ac32f65720efce1fe0bfbf8` |
| 19 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/example--df28a7462be9cf0245472e33.md) | 191 | `declaration-track:df28a7462be9cf0245472e33a6e06050f0e8ce2b3ead153c608e54a715061bfd` |
| 20 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/example--6e0123c72a3a94919aba363a.md) | 194 | `declaration-track:6e0123c72a3a94919aba363af6af6ab2fda7b5bc7ae1ad773ee1f1976e86fcdb` |
| 21 | `theorem` | [f1](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/f1--19df8e187e8fab263775439d.md) | 199 | `result-track:19df8e187e8fab263775439d82fe6064873ce911089edeef15f47b1e16d55d64` |
| 22 | `theorem` | [f011](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/f011--42114d552656d39d625ea6d8.md) | 202 | `result-track:42114d552656d39d625ea6d80ad3efee585ee8f809c263350a4c27de33c31e3f` |
| 23 | `theorem` | [f010](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/f010--126db8a44168af28a98f89d1.md) | 206 | `result-track:126db8a44168af28a98f89d189f5f39dd1de34b1dad315a7f71dd24661a27fca` |
| 24 | `theorem` | [f111](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/f111--74096dd6db13c6a728c72864.md) | 210 | `result-track:74096dd6db13c6a728c72864b50913a01dc4268192d845169ef2dea5be954358` |
| 25 | `theorem` | [f110](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/f110--dc04c8cfd62344cbab5cbed3.md) | 214 | `result-track:dc04c8cfd62344cbab5cbed3b5f22a35ecb8bea3b13add2d50484eb0bb6e430a` |
| 26 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/example--5968d97423434a24a4aaec39.md) | 221 | `declaration-track:5968d97423434a24a4aaec395a52e4956bc5acf4607d006fadfc70a8a212aac3` |
| 27 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/example--a478f9c566936f9ac3e57ca7.md) | 228 | `declaration-track:a478f9c566936f9ac3e57ca7a080c7655fe0fb9fa9ce8d8b5924efb18db57e77` |
| 28 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/example--c133df0f32948cf40516c046.md) | 231 | `declaration-track:c133df0f32948cf40516c046214de2ada19001736ceb738c952dbeef85e2e9cf` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/example--8e381f48ac3f9ea06d31cbec.md) | 239 | `declaration-track:8e381f48ac3f9ea06d31cbecc327ed4ae9ff7dbf1add1542c5d416e8c77513cf` |
| 30 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantd0a4bee2de3ad928b3c65d78aa195a739b00e68adf43722aab62f3aa8ebd116b.lean/declarations/example--508ab4f4e73398610166c2c1.md) | 245 | `declaration-track:508ab4f4e73398610166c2c12644c67b7302d0983ca8b85edf206970fe36c0f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
