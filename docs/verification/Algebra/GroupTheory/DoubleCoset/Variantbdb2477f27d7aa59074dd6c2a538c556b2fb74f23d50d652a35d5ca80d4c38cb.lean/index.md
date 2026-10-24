# Verification target: GRWTSK.Algebra.GroupTheory.DoubleCoset.Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6fceaa0cc749a0ce8831c091cfce6afdd645f6b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6fceaa0cc749a0ce8831c091cfce6afdd645f6b`.

Source path: `GRWTSK/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [doset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/doset--e7de308f8068a6703c1ca143.md) | 41 | `declaration-track:e7de308f8068a6703c1ca143867978f45b57ff02e60f52548ccc971e2d3ca6d0` |
| 2 | `lemma` | [doset_eq_image2](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/doset-eq-image2--3561734722db56cba0d855fb.md) | 44 | `result-track:3561734722db56cba0d855fb05e4aabfdee4e4a6edb1a6aaf991216fc57782c1` |
| 3 | `theorem` | [mem_doset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/mem-doset--598b4d2ef9b0d7e94215d582.md) | 47 | `result-track:598b4d2ef9b0d7e94215d582db74ac57c6a16226302b1ef2d84cacb06e987e4d` |
| 4 | `theorem` | [mem_doset_self](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/mem-doset-self--ec9d99a864f6902be1fc4427.md) | 50 | `result-track:ec9d99a864f6902be1fc442762ebbdac09808a29e3b52eca4df38444df3ebba3` |
| 5 | `theorem` | [doset_eq_of_mem](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/doset-eq-of-mem--4ed6f56d97217bb45d8a2f16.md) | 53 | `result-track:4ed6f56d97217bb45d8a2f16b449393b6b4ea2c301452dfddeb0fb8df6381c8d` |
| 6 | `theorem` | [mem_doset_of_not_disjoint](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/mem-doset-of-not-disjoint--cbf0b6da4da8511cc075145c.md) | 60 | `result-track:cbf0b6da4da8511cc075145c2a4671b5efab6240c535709b223c90faea801420` |
| 7 | `theorem` | [eq_of_not_disjoint](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/eq-of-not-disjoint--cca2a09010b97db8494d17df.md) | 68 | `result-track:cca2a09010b97db8494d17df2fbc5f015021793cb794f5b2e4fc2dab41808ae5` |
| 8 | `def` | [setoid](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/setoid--83b353b2bfe8968068ef6349.md) | 75 | `declaration-track:83b353b2bfe8968068ef634957cff023c5eed2ee1a18511bb87fb36ef3f67d91` |
| 9 | `def` | [Quotient](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/quotient--5cad872c49ccbf240e099113.md) | 79 | `declaration-track:5cad872c49ccbf240e099113e9a0c4c23b5d6881ff072d448585975cc4c63226` |
| 10 | `theorem` | [rel_iff](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/rel-iff--0593316a36107fa91c254c60.md) | 82 | `result-track:0593316a36107fa91c254c600defb7da6c2bc8afb6ca8221b26e9b43089e92d8` |
| 11 | `theorem` | [bot_rel_eq_leftRel](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/bot-rel-eq-leftrel--e54792d3bc6b39706f669386.md) | 88 | `result-track:e54792d3bc6b39706f669386fdeca236d456a2d48fb2aa98d52c91d6bbc59e96` |
| 12 | `theorem` | [rel_bot_eq_right_group_rel](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/rel-bot-eq-right-group-rel--8f1a1f52080df322b26f13dc.md) | 98 | `result-track:8f1a1f52080df322b26f13dcb601f5501bfb2b54247815fc4bdc88016f6198f4` |
| 13 | `def` | [quotToDoset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/quottodoset--153e161672edd65f13217cb7.md) | 109 | `declaration-track:153e161672edd65f13217cb702bd4451ece7f96d269936b07addf35cb930725a` |
| 14 | `abbrev` | [mk](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/mk--af376ae406339305b6c8539c.md) | 113 | `declaration-track:af376ae406339305b6c8539c764b6806188b5b74497c7bb1aaac20ae1573a99d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/instance--f621f7be5fba9eca1b5fa005.md) | 116 | `declaration-track:f621f7be5fba9eca1b5fa005ead1d4539fb7f4051e27926068009b8b6e19ef96` |
| 16 | `theorem` | [eq](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/eq--a2ef1a96e6515de6bf360f33.md) | 119 | `result-track:a2ef1a96e6515de6bf360f33d0bea5d3b443cb556fcd9a19de599fbb73a8a3c1` |
| 17 | `theorem` | [out_eq'](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/out-eq--f0fd0310c35eb2b8e16ea791.md) | 124 | `result-track:f0fd0310c35eb2b8e16ea79116999f0d31418ad07a7b24c37435496a37fc0210` |
| 18 | `theorem` | [mk_out_eq_mul](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/mk-out-eq-mul--c54e9a1dc3abfeac6ec4a1ef.md) | 127 | `result-track:c54e9a1dc3abfeac6ec4a1efc0c25e0882a6f05dc2dfab22545d985911072bfc` |
| 19 | `theorem` | [mk_eq_of_doset_eq](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/mk-eq-of-doset-eq--699b96d7065e03ae28f8916b.md) | 135 | `result-track:699b96d7065e03ae28f8916be3fefcdc10bf1695af985d051a5f8c9bbb0090c7` |
| 20 | `theorem` | [disjoint_out](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/disjoint-out--824adde87a829cfaa5f0ff0f.md) | 140 | `result-track:824adde87a829cfaa5f0ff0f1903e7014557bf2fd54df614b26d8b4e2504780b` |
| 21 | `theorem` | [union_quotToDoset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/union-quottodoset--ca4e415966c09749ce3f757c.md) | 146 | `result-track:ca4e415966c09749ce3f757c816497261ee6e8de0e6bb7b83c22e6c20783afac` |
| 22 | `theorem` | [doset_union_rightCoset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/doset-union-rightcoset--4a8262778060581e1885c399.md) | 155 | `result-track:4a8262778060581e1885c3998a8b12670d79be3dc8b44791dc2a016c7be4f2c7` |
| 23 | `theorem` | [doset_union_leftCoset](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/doset-union-leftcoset--b201cfbeb954f659cf0ac44f.md) | 168 | `result-track:b201cfbeb954f659cf0ac44f6adf3a703a151d690721e189d6774c62175bee60` |
| 24 | `theorem` | [left_bot_eq_left_quot](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/left-bot-eq-left-quot--c8515eda2d11b5ee1fe94884.md) | 180 | `result-track:c8515eda2d11b5ee1fe94884b50539f054aa3c04df55ab6bb0c8f64b79eca2dc` |
| 25 | `theorem` | [right_bot_eq_right_quot](../../../../../mathematics/Algebra/GroupTheory/DoubleCoset/Variantbdb2477f27d7aa59074dd6c2a538c556b2fb74f23d50d652a35d5ca80d4c38cb.lean/declarations/right-bot-eq-right-quot--80bf4da543420e2d43a52321.md) | 187 | `result-track:80bf4da543420e2d43a52321de1da48014c3079eab90e64bfc35155d1df4917e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
