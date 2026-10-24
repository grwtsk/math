# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48b02c97cde31a41a18c8594d5e354b39e92fc13",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48b02c97cde31a41a18c8594d5e354b39e92fc13`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.ZPowers.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_zpowersHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean/declarations/range-zpowershom--4fc6eaaa43f8d34118e64043.md) | 25 | `result-track:4fc6eaaa43f8d34118e64043b833a492db6c40f82402491a248bf07e2d58c82a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean/declarations/instance--0ee44cacd52356768fb64861.md) | 28 | `declaration-track:0ee44cacd52356768fb648611747d6b25bade98fe16206fe2f83b47f134e3a99` |
| 3 | `theorem` | [range_zmultiplesHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean/declarations/range-zmultipleshom--4199e6fab66bc4875bfbdf5d.md) | 35 | `result-track:4199e6fab66bc4875bfbdf5dcf2245b4723c089ee0d9fc67b6dc672093725e64` |
| 4 | `theorem` | [intCast_mul_mem_zmultiples](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean/declarations/intcast-mul-mem-zmultiples--41e3dd8e5613515e47ac941d.md) | 43 | `result-track:41e3dd8e5613515e47ac941dd3b81c94a0024e36ed38d92f499c7b0490ecd2c3` |
| 5 | `theorem` | [intCast_mem_zmultiples_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean/declarations/intcast-mem-zmultiples-one--ff0a2072dbaa7a5e01082096.md) | 47 | `result-track:ff0a2072dbaa7a5e010820967ba11b064ea0cd631ab950c3ff251c6c26dd3f24` |
| 6 | `lemma` | [Int.range_castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean/declarations/int-range-castaddhom--b1de916ca011c246c3f407fd.md) | 54 | `result-track:b1de916ca011c246c3f407fd782c5fe6c9c55bfa42ce519c8720599345baa357` |
| 7 | `theorem` | [centralizer_closure](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean/declarations/centralizer-closure--333e7f3f7eb144107ee72cae.md) | 64 | `result-track:333e7f3f7eb144107ee72caea6012d4b916f5873e247ccaf812987629141b3fa` |
| 8 | `theorem` | [center_eq_iInf](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean/declarations/center-eq-iinf--e13a381679deb75ea14b9318.md) | 73 | `result-track:e13a381679deb75ea14b931804af658bead47d61bf80d1fd57698cfdcdfbbc8e` |
| 9 | `theorem` | [center_eq_infi'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantf4eccb93416c2c6a3319a46ce82b2bb13767fc822250cdd700d74a3ddf7fa772.lean/declarations/center-eq-infi--48071ae9a31eb5602c95689e.md) | 78 | `result-track:48071ae9a31eb5602c95689eb08264564c5252b21e27a34cd6a71e58959d5fa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
