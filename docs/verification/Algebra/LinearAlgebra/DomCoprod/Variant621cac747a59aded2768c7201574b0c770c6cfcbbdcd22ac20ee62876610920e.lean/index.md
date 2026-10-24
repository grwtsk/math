# Verification target: GRWTSK.Algebra.LinearAlgebra.DomCoprod.Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fce6ce35d7fb13fd09ab98df1c48322b29f46ba",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fce6ce35d7fb13fd09ab98df1c48322b29f46ba`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Alternating.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.TensorProduct` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ModSumCongr](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/modsumcongr--8611acdd331ec2536954b77d.md) | 39 | `declaration-track:8611acdd331ec2536954b77d7542ea6eb16c39bc880d39fa45bb3d39bcfc6a6e` |
| 2 | `def` | [domCoprod.summand](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/domcoprod-summand--3a17445525e7951002418c45.md) | 51 | `declaration-track:3a17445525e7951002418c453dff8254a55e57cf24a1f9171e06d826fbdc962f` |
| 3 | `theorem` | [domCoprod.summand_mk''](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/domcoprod-summand-mk--4715677b4b9371665a4f9507.md) | 71 | `result-track:4715677b4b9371665a4f95070b76049050bcca7d0f6c639487a7fa64c980e0a4` |
| 4 | `theorem` | [domCoprod.summand_add_swap_smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/domcoprod-summand-add-swap-smul-eq-zero--0fbb5672caa7b7cc648e50b9.md) | 80 | `result-track:0fbb5672caa7b7cc648e50b93e908c7c24c83f947985bba530a45207ce6fa298` |
| 5 | `theorem` | [domCoprod.summand_eq_zero_of_smul_invariant](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/domcoprod-summand-eq-zero-of-smul-invariant--b16e13910e288fa4db26b12d.md) | 97 | `result-track:b16e13910e288fa4db26b12d8da35d9bf645749c0212abf814fd9cf73e4bcce8` |
| 6 | `def` | [domCoprod](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/domcoprod--cf8bdb781fa8b0580a6244d2.md) | 140 | `declaration-track:cf8bdb781fa8b0580a6244d28fcfbbb129912d89de97d2a373ad73b2dc1cfe9b` |
| 7 | `theorem` | [domCoprod_coe](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/domcoprod-coe--d9612ec3a1cacd3ef892bfbd.md) | 153 | `result-track:d9612ec3a1cacd3ef892bfbde9633c595160d8f094bf33c494643ab0044099e3` |
| 8 | `def` | [domCoprod'](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/domcoprod--68b1bd409679abaea5147a96.md) | 160 | `declaration-track:68b1bd409679abaea5147a96605d07cfca12bb0856a9b47e3d7137c7fe517f8b` |
| 9 | `theorem` | [domCoprod'_apply](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/domcoprod-apply--ea1ae410aac4ea480d571b7f.md) | 181 | `result-track:ea1ae410aac4ea480d571b7f1c9ee6a45b44708662830b8ac1edbe0ea9f41646` |
| 10 | `theorem` | [MultilinearMap.domCoprod_alternization_coe](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/multilinearmap-domcoprod-alternization-coe--a70a5caa7eac3154dfb98e80.md) | 190 | `result-track:a70a5caa7eac3154dfb98e80be3d0e1de6a4161706bb0e5614de015735a46b2c` |
| 11 | `theorem` | [MultilinearMap.domCoprod_alternization](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/multilinearmap-domcoprod-alternization--4f05da66f9e1031703c237a5.md) | 208 | `result-track:4f05da66f9e1031703c237a51c0875d61918022aa531fa2e713bc90954e804c3` |
| 12 | `theorem` | [MultilinearMap.domCoprod_alternization_eq](../../../../../mathematics/Algebra/LinearAlgebra/DomCoprod/Variant621cac747a59aded2768c7201574b0c770c6cfcbbdcd22ac20ee62876610920e.lean/declarations/multilinearmap-domcoprod-alternization-eq--92326bac363d6f71f3f36555.md) | 241 | `result-track:92326bac363d6f71f3f36555cd0862135f7b289bc836c1069b0615daf82d7ca2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
