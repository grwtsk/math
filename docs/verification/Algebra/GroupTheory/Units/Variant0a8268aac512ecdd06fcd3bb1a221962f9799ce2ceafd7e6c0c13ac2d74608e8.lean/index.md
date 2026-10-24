# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cf69d186da0159fcac0dcb7491c44c782b36398",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cf69d186da0159fcac0dcb7491c44c782b36398`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Tauto` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Units` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [units_natAbs](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/units-natabs--12e25d00d2c2321229cbf354.md) | 32 | `result-track:12e25d00d2c2321229cbf354f477e9924a0dedc1c9c1944833a625039a73396e` |
| 2 | `lemma` | [natAbs_of_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/natabs-of-isunit--97a817545af1eedb946f87d7.md) | 38 | `result-track:97a817545af1eedb946f87d737e1b6dbdf0efe6727dd226221df7c067ab09e6a` |
| 3 | `lemma` | [isUnit_eq_one_or](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/isunit-eq-one-or--f41aa4cdee1baa5bc4c7ce7d.md) | 40 | `result-track:f41aa4cdee1baa5bc4c7ce7d0fd41fd08303fdd2789ab2a4b50305a79f7b54e1` |
| 4 | `lemma` | [isUnit_ne_iff_eq_neg](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/isunit-ne-iff-eq-neg--e1804e4c11ce5c4adec8536c.md) | 43 | `result-track:e1804e4c11ce5c4adec8536cde3edaa0726a7782a8570fa28f85d8498162b477` |
| 5 | `lemma` | [isUnit_eq_or_eq_neg](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/isunit-eq-or-eq-neg--c00c699120fa2f354075d97b.md) | 46 | `result-track:c00c699120fa2f354075d97bf383973d8ddfd5dcb92e97c5ad998bfb51de1983` |
| 6 | `lemma` | [isUnit_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/isunit-iff--3d3ede84ab9e63bf0b47e65d.md) | 49 | `result-track:3d3ede84ab9e63bf0b47e65dd1e68bbcffd65457d878ebc468c259e01fe3db6a` |
| 7 | `lemma` | [eq_one_or_neg_one_of_mul_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/eq-one-or-neg-one-of-mul-eq-one--1262270183c408465bd6efde.md) | 55 | `result-track:1262270183c408465bd6efdea7d70b770c0728d3ebd290d427b3a3b89ebe8840` |
| 8 | `lemma` | [eq_one_or_neg_one_of_mul_eq_one'](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/eq-one-or-neg-one-of-mul-eq-one--a4a88e3363881ffc21bdc458.md) | 58 | `result-track:a4a88e3363881ffc21bdc45844b3381d47b2dfdaf3f6a928e1640cf70da304bf` |
| 9 | `lemma` | [eq_of_mul_eq_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/eq-of-mul-eq-one--f4ba40806605f423d83c9562.md) | 63 | `result-track:f4ba40806605f423d83c9562a6c0778e9ba2f9c5354b8da9823ce488e1126e6b` |
| 10 | `lemma` | [mul_eq_one_iff_eq_one_or_neg_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/mul-eq-one-iff-eq-one-or-neg-one--fc3c89ce6842e7ea225f8aa2.md) | 67 | `result-track:fc3c89ce6842e7ea225f8aa231d255e9fed8a44a2cd4c4b17700322acad621a0` |
| 11 | `lemma` | [eq_one_or_neg_one_of_mul_eq_neg_one'](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/eq-one-or-neg-one-of-mul-eq-neg-one--1da4da118436daa22cbcaca8.md) | 71 | `result-track:1da4da118436daa22cbcaca88892c5f686193c6a71d8a0cf3fa048938ae4a28b` |
| 12 | `lemma` | [mul_eq_neg_one_iff_eq_one_or_neg_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/mul-eq-neg-one-iff-eq-one-or-neg-one--f49c20030227b77ef36c889e.md) | 76 | `result-track:f49c20030227b77ef36c889ec650cf3eda9cb1a402aeba3d2809c22d6fd3657f` |
| 13 | `lemma` | [isUnit_iff_natAbs_eq](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/isunit-iff-natabs-eq--c0021e57654dcd4614b494c6.md) | 80 | `result-track:c0021e57654dcd4614b494c69fd4ef65544750305ceae3a6c64b2b3b3c7a6c03` |
| 14 | `lemma` | [ofNat_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/ofnat-isunit--ea96f8456758e49baff334e2.md) | 85 | `result-track:ea96f8456758e49baff334e22b7935c2a34dab08f8ff125052540f7a1a0561e5` |
| 15 | `lemma` | [isUnit_mul_self](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/isunit-mul-self--b69733455ad21aac67cccac0.md) | 87 | `result-track:b69733455ad21aac67cccac02b3d31cfec1ae7eca367d1bf8550d7f768be5301` |
| 16 | `lemma` | [isUnit_add_isUnit_eq_isUnit_add_isUnit](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/isunit-add-isunit-eq-isunit-add-isunit--1eebc9dd7faa55c003934908.md) | 90 | `result-track:1eebc9dd7faa55c00393490806a44ec5aa3878827563ad60a9e0b3dd8e218b09` |
| 17 | `lemma` | [eq_one_or_neg_one_of_mul_eq_neg_one](../../../../../mathematics/Algebra/GroupTheory/Units/Variant0a8268aac512ecdd06fcd3bb1a221962f9799ce2ceafd7e6c0c13ac2d74608e8.lean/declarations/eq-one-or-neg-one-of-mul-eq-neg-one--bf3e44d6881a7b313b183cfc.md) | 95 | `result-track:bf3e44d6881a7b313b183cfccad0d3380801f0eae008c208f15e2b553c87edac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
