# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Defs.Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05d05718b66165be3223a45e13667ac68db02332",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05d05718b66165be3223a45e13667ac68db02332`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Fold` — import line 7; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Pairwise` — import line 8; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Range` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean/declarations/discr--c3c42a9e4de940e8e7e47dae.md) | 34 | `declaration-track:c3c42a9e4de940e8e7e47dae14e728a4aa73ccd4e22654eeb15e61d6ccfc3df5` |
| 2 | `theorem` | [coe_discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean/declarations/coe-discr--86c6f3ebb8e0c3f90af470e3.md) | 36 | `result-track:86c6f3ebb8e0c3f90af470e378389760112fff2d80396030841a61dcc39618b5` |
| 3 | `theorem` | [discr_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean/declarations/discr-ne-zero--17a36d4be3709a90d213d994.md) | 39 | `result-track:17a36d4be3709a90d213d99421bfe646e4e8d0412792cf81f46c3e95ea1d6ece` |
| 4 | `theorem` | [discr_eq_discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean/declarations/discr-eq-discr--3791926bc9e18023607ffe1e.md) | 43 | `result-track:3791926bc9e18023607ffe1e444e9e925183a80fb93d3b157db75a9e191d8c89` |
| 5 | `theorem` | [discr_eq_discr_of_algEquiv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean/declarations/discr-eq-discr-of-algequiv--c0311fd6ae7738e88cf4316b.md) | 48 | `result-track:c0311fd6ae7738e88cf4316bc22ab708fbf93883055e7e6a5df7ddab2e159e42` |
| 6 | `theorem` | [numberField_discr](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean/declarations/numberfield-discr--25d0403095ddbe7f04983681.md) | 69 | `result-track:25d0403095ddbe7f04983681aead403d464d7938cce42b8be64b2bebaa8b46e5` |
| 7 | `theorem` | [Algebra.discr_eq_discr_of_toMatrix_coeff_isIntegral](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Defs/Variant57ffcc4727ab24937f9ac578a941d56e66f49d863336666c03fe665a495c00c7.lean/declarations/algebra-discr-eq-discr-of-tomatrix-coeff-isintegral--ba0d98b7b55638913f0dd094.md) | 92 | `result-track:ba0d98b7b55638913f0dd0948e3b7b217a315d913f8821768d23fa6b55b38814` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
