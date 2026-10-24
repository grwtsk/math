# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Cast.Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc838d7861b3c02ffa1c53603cf60197206888f2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc838d7861b3c02ffa1c53603cf60197206888f2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Hom.cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/hom-cast--638c6e4286ea67a4338b5e6f.md) | 40 | `declaration-track:638c6e4286ea67a4338b5e6f73666899b4f470a937fc7f87aeb20384efb7e083` |
| 2 | `theorem` | [Hom.cast_eq_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/hom-cast-eq-cast--ab9cf70a148e9441d320cc27.md) | 43 | `result-track:ab9cf70a148e9441d320cc279381ffc2182ebe7b4a32bbb3f16ff9914856e1c1` |
| 3 | `theorem` | [Hom.cast_rfl_rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/hom-cast-rfl-rfl--87030ec45aaece1f323952b0.md) | 49 | `result-track:87030ec45aaece1f323952b069d655acc4311af00d807a4520fbe81eb3ed6263` |
| 4 | `theorem` | [Hom.cast_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/hom-cast-cast--7cc4b6913822add1e840a705.md) | 53 | `result-track:7cc4b6913822add1e840a705b7b6b48900b7e25c4636e8222ee74166f87f7add` |
| 5 | `theorem` | [Hom.cast_heq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/hom-cast-heq--0702c2054f878a96791a075e.md) | 59 | `result-track:0702c2054f878a96791a075e3c96bcda85e98953487500f39f475b95370de7fb` |
| 6 | `theorem` | [Hom.cast_eq_iff_heq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/hom-cast-eq-iff-heq--9ad8d69cb15a9a52c062e792.md) | 64 | `result-track:9ad8d69cb15a9a52c062e792696744d34f361e0ed4a5d2e362bae0cfb08daaf8` |
| 7 | `theorem` | [Hom.eq_cast_iff_heq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/hom-eq-cast-iff-heq--ee090b6401086703a89097fd.md) | 69 | `result-track:ee090b6401086703a89097fdb1782c69472c31489fa1e172c7a2ce079dc95397` |
| 8 | `def` | [Path.cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/path-cast--8017288ba5e58b26c2ad922b.md) | 82 | `declaration-track:8017288ba5e58b26c2ad922be8d8d8e13dbd9e15f81f5a1e4284fd28d7f3d1a6` |
| 9 | `theorem` | [Path.cast_eq_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/path-cast-eq-cast--829e79187c4f7c0243b9a3c9.md) | 85 | `result-track:829e79187c4f7c0243b9a3c9ccf7fc0de3f929d84469ecf918a485dfbeba47ab` |
| 10 | `theorem` | [Path.cast_rfl_rfl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/path-cast-rfl-rfl--7e2a8adf9b04cbd0b1772b97.md) | 91 | `result-track:7e2a8adf9b04cbd0b1772b978dfbdc6a18258938d20c26d0d952ec013bd34783` |
| 11 | `theorem` | [Path.cast_cast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/path-cast-cast--c9f49ef540f9b741e634e9d1.md) | 95 | `result-track:c9f49ef540f9b741e634e9d11b11579eed8f405f7af8358a8371f54fda6a0550` |
| 12 | `theorem` | [Path.cast_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/path-cast-nil--3fdcf658d19d1741f881ebb3.md) | 102 | `result-track:3fdcf658d19d1741f881ebb32da89d1faa3ef4ae0a65fcdab51f0e5b22c48190` |
| 13 | `theorem` | [Path.cast_heq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/path-cast-heq--49714cbce72eacca0c7f5b5e.md) | 106 | `result-track:49714cbce72eacca0c7f5b5ee57d0678a27966a5b160232997f797be0f0e9b58` |
| 14 | `theorem` | [Path.cast_eq_iff_heq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/path-cast-eq-iff-heq--e09f21fd7f5631a2bfcfaca3.md) | 111 | `result-track:e09f21fd7f5631a2bfcfaca38947db819be82e087157ac7f3ea1e2fb52cccb6a` |
| 15 | `theorem` | [Path.eq_cast_iff_heq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/path-eq-cast-iff-heq--c7b561c266511ef28d8ecf16.md) | 116 | `result-track:c7b561c266511ef28d8ecf16bee16ba6841c915dca4a4ae42cfb1c69675563e1` |
| 16 | `theorem` | [Path.cast_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/path-cast-cons--6499f4de66c92e8d8a13e1a9.md) | 121 | `result-track:6499f4de66c92e8d8a13e1a91e1fa531eae3032aa6b8dd50c4341fc3e480c5fd` |
| 17 | `theorem` | [cast_eq_of_cons_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/cast-eq-of-cons-eq-cons--8003a6ac6afc58fa78e4e22c.md) | 126 | `result-track:8003a6ac6afc58fa78e4e22ca9a1b77ba3ec8ea51efe38242aff3d0e882d9ca0` |
| 18 | `theorem` | [hom_cast_eq_of_cons_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/hom-cast-eq-of-cons-eq-cons--c9acf19b5bd10e0016bee70c.md) | 131 | `result-track:c9acf19b5bd10e0016bee70c9be39d668837009e6f3f46896eec55cf3a2c383c` |
| 19 | `theorem` | [eq_nil_of_length_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Cast/Variantfb8f507961feeda737757ec1344e8775332df8ff0ca04ee19d12b7c55fc527a1.lean/declarations/eq-nil-of-length-zero--effe7eb7e211d9f416ceb382.md) | 136 | `result-track:effe7eb7e211d9f416ceb3828b7fac9df532b1a3aa5c268c99d3796c3471a7a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
