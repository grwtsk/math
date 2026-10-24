# Verification target: GRWTSK.Algebra.GroupTheory.PresentedGroup.Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1eefe27652739ba7f93b9950a5c0fadb484d1f42",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1eefe27652739ba7f93b9950a5c0fadb484d1f42`.

Source path: `GRWTSK/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PresentedGroup](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/presentedgroup--13fc111197b1e408e763d612.md) | 34 | `declaration-track:13fc111197b1e408e763d612764d96f0ec4ea95f0093a06f735731fcae696384` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/instance--60eecc45e23ed53b0af9263f.md) | 39 | `declaration-track:60eecc45e23ed53b0af9263f2b185f0c2772a7dd9f55c35d6821e40fee20804c` |
| 3 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/mk--e0af80514358118a6c31d1fe.md) | 44 | `declaration-track:e0af80514358118a6c31d1fe281f8c4161b1fe9fe8933a5dc3679f91f0c8f438` |
| 4 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/mk-surjective--6744359cfd4a5abb29ae3e0d.md) | 47 | `result-track:6744359cfd4a5abb29ae3e0d446cb04bcac3192f2168e3fb1eee00041c882fa7` |
| 5 | `def` | [of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/of--e3a46a9716105f1c20eb722a.md) | 52 | `declaration-track:e3a46a9716105f1c20eb722a4d30d2f25cb618e43f69c7da11f6d1284c0b4287` |
| 6 | `lemma` | [mk_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/mk-eq-one-iff--857364acb4ddf9b701f31f33.md) | 55 | `result-track:857364acb4ddf9b701f31f33a4ead790e4b74afd491eedefc33c2597461eb4f3` |
| 7 | `lemma` | [one_of_mem](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/one-of-mem--853a0457905c32cd460f05b3.md) | 59 | `result-track:853a0457905c32cd460f05b337bd98f0b17627165bf77bb87a1d45cb7ac2d2b5` |
| 8 | `lemma` | [mk_eq_mk_of_mul_inv_mem](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/mk-eq-mk-of-mul-inv-mem--81b194bf57ffc013c5ed99cb.md) | 63 | `result-track:81b194bf57ffc013c5ed99cb6c7d9234250c2d109f8f2ae94d4a0e1bec9e6e98` |
| 9 | `lemma` | [mk_eq_mk_of_inv_mul_mem](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/mk-eq-mk-of-inv-mul-mem--400397eb2d9482720c4f4626.md) | 67 | `result-track:400397eb2d9482720c4f462645a0a438f878f1d7307f7bebbd4b91290a5f185e` |
| 10 | `theorem` | [closure_range_of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/closure-range-of--df3de76b8051df8178b69a14.md) | 74 | `result-track:df3de76b8051df8178b69a140c11a7595f4b8ce6a10958a6932517dc62815d03` |
| 11 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/induction-on--b7717b4efa36e61ec3b5a03c.md) | 82 | `result-track:b7717b4efa36e61ec3b5a03cd4d1f0f3967103c8f1766fdadc4d29a41e0cb915` |
| 12 | `theorem` | [generated_by](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/generated-by--e05e32f1ef5346cd6948b7fb.md) | 86 | `result-track:e05e32f1ef5346cd6948b7fb1aae01abaf6029724d8558653ea6f98f43b39fb8` |
| 13 | `theorem` | [closure_rels_subset_ker](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/closure-rels-subset-ker--3df65ce9fcbe1e5a6a886984.md) | 109 | `result-track:3df65ce9fcbe1e5a6a8869846942a392d478cfb868c2494dacf0fb28ff5b397e` |
| 14 | `theorem` | [to_group_eq_one_of_mem_closure](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/to-group-eq-one-of-mem-closure--f5ba59245abedefad46667f5.md) | 113 | `result-track:f5ba59245abedefad46667f5abad108e6c5e64be2a37f699194d543ac193c27f` |
| 15 | `def` | [toGroup](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/togroup--d7ecdb4f46bea267f1aff5d5.md) | 119 | `declaration-track:d7ecdb4f46bea267f1aff5d5d1ac3ffff21d568a80aa62677cb1cecaeb33636d` |
| 16 | `theorem` | [toGroup.of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/togroup-of--e117a92cbbbc524f3ddb313c.md) | 123 | `result-track:e117a92cbbbc524f3ddb313ca6a942813cd0b9440838b76fe39a6e266ccfeb37` |
| 17 | `theorem` | [toGroup.unique](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/togroup-unique--3723f3f7f2dd2fcf8846855e.md) | 126 | `result-track:3723f3f7f2dd2fcf8846855ed7381944871771558672224009069c037a61117a` |
| 18 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/ext--0ad4d6ae8ef613f6f4cd285e.md) | 133 | `result-track:0ad4d6ae8ef613f6f4cd285e5f2e7d29f10d2923a5f2939919d5064dbbccb8a2` |
| 19 | `def` | [equivPresentedGroup](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/equivpresentedgroup--dc16606e5d2ab8b985362d60.md) | 141 | `declaration-track:dc16606e5d2ab8b985362d60b4f4e7364716450feecab32136202067613198fa` |
| 20 | `theorem` | [equivPresentedGroup_apply_of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/equivpresentedgroup-apply-of--d741eb07caad91b19f31e6fb.md) | 148 | `result-track:d741eb07caad91b19f31e6fb83ca1f9181bf134d9f97ac7e31d14260dac21d8a` |
| 21 | `theorem` | [equivPresentedGroup_symm_apply_of](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/equivpresentedgroup-symm-apply-of--bcc780c41657963654a0d638.md) | 152 | `result-track:bcc780c41657963654a0d6389416290eaf3ebe1ff0c23370cae3b36566298508` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/PresentedGroup/Variantf6423431a4c2e0502b98ce39eb48fa8cb7cee5bdc2ef33ac298d49b7ee68ca90.lean/declarations/instance--df3d2b4f439238f290728ab7.md) | 158 | `declaration-track:df3d2b4f439238f290728ab7bc2224da9f49b33bf936a88f70fcaf7484832c3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
