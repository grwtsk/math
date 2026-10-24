# Verification target: GRWTSK.Algebra.Basic.Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "329dd69fb2f0641bae6e97b035c3d95a29fd3a66",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `329dd69fb2f0641bae6e97b035c3d95a29fd3a66`.

Source path: `GRWTSK/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean.json)

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
| 1 | `instance` | [addCommSemigroup](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/addcommsemigroup--a51fb28f5e66530055bce411.md) | 32 | `declaration-track:a51fb28f5e66530055bce4110d10eae5d3370cf86edbaa1bb52275d10bde15f0` |
| 2 | `instance` | [addCommMonoid](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/addcommmonoid--dc8c9cb0adbc0e6e34bc5bc8.md) | 36 | `declaration-track:dc8c9cb0adbc0e6e34bc5bc83abf398981b9b3f24e78c4b4a1426dd337aa1e02` |
| 3 | `def` | [instAddMonoidWithOne](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/instaddmonoidwithone--337cd8cde845336362619d23.md) | 55 | `declaration-track:337cd8cde845336362619d2365e36b29e238905a2efe30f5f783c83d5e9f6aad` |
| 4 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/addcommgroup--c5dbad2efbec03c66d7ad295.md) | 67 | `declaration-track:c5dbad2efbec03c66d7ad29561efc4d79c28cf1b92fe718de1d52a2652f9824b` |
| 5 | `instance` | [instInvolutiveNeg](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/instinvolutiveneg--f614e92f29264fb8ac4d3802.md) | 80 | `declaration-track:f614e92f29264fb8ac4d38023c094b7440a14660f440d97414ec38ac0b10d5da` |
| 6 | `instance` | [instIsCancelAdd](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/instiscanceladd--d92690a1fc8a1086160ccb70.md) | 84 | `declaration-track:d92690a1fc8a1086160ccb7053dc9dfd62e186cfd4b0c629eb001bc8896263e0` |
| 7 | `instance` | [instAddLeftCancelSemigroup](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/instaddleftcancelsemigroup--e33d77e30780de809679235c.md) | 89 | `declaration-track:e33d77e30780de809679235ccc41ba9464bcce666226ececb9997e34e8e6d8e3` |
| 8 | `instance` | [instAddRightCancelSemigroup](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/instaddrightcancelsemigroup--ff9652ea92e42a6503906bef.md) | 93 | `declaration-track:ff9652ea92e42a6503906bef3154a5bec557845def0c879a467608aecf66c4ef` |
| 9 | `theorem` | [intCast_def'](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/intcast-def--60da66a38bfb65638a379533.md) | 100 | `result-track:60da66a38bfb65638a379533aeb4ae2c4596ed1aba6c415b996687ea28c49b98` |
| 10 | `lemma` | [coe_sub_one](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/coe-sub-one--50eed669feaf343b0f3f2afb.md) | 104 | `result-track:50eed669feaf343b0f3f2afb3bce8dcad2f3ee8a59e794b050408ff1c41c4f9b` |
| 11 | `lemma` | [lt_sub_iff](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/lt-sub-iff--d64252bd11a9076b2107c76e.md) | 112 | `result-track:d64252bd11a9076b2107c76ef1974cbca64fca2900c66b93ab32161de623513b` |
| 12 | `lemma` | [sub_le_iff](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/sub-le-iff--1ed78e62b3779626ccd4fa10.md) | 116 | `result-track:1ed78e62b3779626ccd4fa1067bb16bb0cee066ddd59c9c894ce3b2fa6c14c5f` |
| 13 | `lemma` | [lt_one_iff](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/lt-one-iff--5e302d8add201bd969b38130.md) | 120 | `result-track:5e302d8add201bd969b38130aca1f8062501e9bc74b560cf88c928ad7028c526` |
| 14 | `lemma` | [lt_sub_one_iff](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/lt-sub-one-iff--0c6478e3ef17823f38148d4e.md) | 123 | `result-track:0c6478e3ef17823f38148d4e051c5bf307503f13d1dec61139451acc06c1854f` |
| 15 | `lemma` | [le_sub_one_iff](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/le-sub-one-iff--f2db677653b9eae24107b434.md) | 126 | `result-track:f2db677653b9eae24107b434ced0094a9cc0454c4af2d957a9f86d53fc53b612` |
| 16 | `lemma` | [sub_one_lt_iff](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/sub-one-lt-iff--1de6ce22317e2f3c7e4915d4.md) | 132 | `result-track:1de6ce22317e2f3c7e4915d419d87fe6b2ec21e0aa57a1dc4054a4265abe681a` |
| 17 | `lemma` | [neg_last](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/neg-last--380c1aa8ec8be46750a6c2de.md) | 135 | `result-track:380c1aa8ec8be46750a6c2de35abe4ce252cd8c9c19b6edb70fbcbb6517974ac` |
| 18 | `lemma` | [neg_natCast_eq_one](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/neg-natcast-eq-one--78703663a6b879b1f8e8b1bc.md) | 138 | `result-track:78703663a6b879b1f8e8b1bc9e058c328396ae8c87ac253f36a4883c5676add6` |
| 19 | `lemma` | [rev_add](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/rev-add--e596d3b03c3cc4c60404704c.md) | 141 | `result-track:e596d3b03c3cc4c60404704c5d6ce274e27f12702c4c583c369fa5b5c44dcd41` |
| 20 | `lemma` | [rev_sub](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/rev-sub--a9ef05f3559f6628496113b1.md) | 146 | `result-track:a9ef05f3559f6628496113b1125f110f165ee2697b39543e41b59cf7b6f82616` |
| 21 | `lemma` | [lt_add_one_of_succ_lt](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/lt-add-one-of-succ-lt--e44e7758a3c2ca1c0b29f0ab.md) | 149 | `result-track:e44e7758a3c2ca1c0b29f0ab3f5d0cd3c3bc45d9fa236e6ee994498ebc2a12c6` |
| 22 | `lemma` | [add_lt_left_iff](../../../../mathematics/Algebra/Basic/Variant8a106aa2dbe15a499fe579cdbc46d8f63eb06ad0689266902bc8d6a1bde7d01e.lean/declarations/add-lt-left-iff--01449e305dfd9ed36134ef56.md) | 153 | `result-track:01449e305dfd9ed36134ef5696d51ace5974697e10d9f4025b5e3c27fa97d15a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
