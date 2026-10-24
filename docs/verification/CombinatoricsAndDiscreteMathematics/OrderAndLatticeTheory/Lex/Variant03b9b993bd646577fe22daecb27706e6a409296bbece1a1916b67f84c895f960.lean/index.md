# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6377ad926d9573eba869789df5e58ecf9f43707c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6377ad926d9573eba869789df5e58ecf9f43707c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.NeLocus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex--31eb9f85da2d0f4685de5d5a.md) | 31 | `declaration-track:31eb9f85da2d0f4685de5d5a2b0dc26cbc5be259d720530528dfa5379a1543d2` |
| 2 | `theorem` | [_root_.Pi.lex_eq_dfinsupp_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/root-pi-lex-eq-dfinsupp-lex--1a3d39f3e638cb73f4c28f8a.md) | 36 | `result-track:1a3d39f3e638cb73f4c28f8a853d472e8657df4454ab86de7958149203965ec8` |
| 3 | `theorem` | [lex_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-def--44a3463f1a4b761a0b06a6eb.md) | 42 | `result-track:44a3463f1a4b761a0b06a6eb6d7c070fd4882a1c5813db4084ce87fc651a0f52` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/instance--45077fcfb675a3cdf9c567fa.md) | 47 | `declaration-track:45077fcfb675a3cdf9c567faa531fb33ced7112fa27602c2028d69f36f4d82a7` |
| 5 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-lt-of-lt-of-preorder--27d69e869f8f1b0c6650a537.md) | 50 | `result-track:27d69e869f8f1b0c6650a537771e2c6d838fc6f1fda3c6930c1f89d058f747fc` |
| 6 | `theorem` | [lex_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-lt-of-lt--4b4788daf880f59f64371606.md) | 60 | `result-track:4b4788daf880f59f643716064127893904bee3d00cb3ff12692e2e668cc01b34` |
| 7 | `instance` | [Lex.isStrictOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-isstrictorder--364945bada45fae3a7eb6fe0.md) | 66 | `declaration-track:364945bada45fae3a7eb6fe036a4ebe9710a700dc5dc7c341bd58676f0ef7ede` |
| 8 | `instance` | [Lex.partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-partialorder--2697f3c181dab4dcfed58877.md) | 77 | `declaration-track:2697f3c181dab4dcfed58877921ca52fb8a470f066ee94bf93b7d7f023a413f9` |
| 9 | `def` | [lt_trichotomy_rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lt-trichotomy-rec--c8c939e26130ccd1e528f252.md) | 88 | `declaration-track:c8c939e26130ccd1e528f25224d14dd35c4c7dae699d20e7a32faa1d3af0e76e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/instance--571685ac3757d174a9ffac9f.md) | 113 | `declaration-track:571685ac3757d174a9ffac9f7ff20c21cfd95d32a8c8eb00674ed51582386573` |
| 11 | `instance` | [Lex.linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-linearorder--9b3496ad577285b1798d9b38.md) | 118 | `declaration-track:9b3496ad577285b1798d9b385f1469748aaac3f43e39a479b3f1496754b0ff9d` |
| 12 | `theorem` | [toLex_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/tolex-monotone--831e1b47325bb6d20cab5da7.md) | 130 | `result-track:831e1b47325bb6d20cab5da75372b31d8885562a0696b40b5919c07bb5d742aa` |
| 13 | `theorem` | [lt_of_forall_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lt-of-forall-lt-of-lt--62e8d409534e29dbf221ef69.md) | 139 | `result-track:62e8d409534e29dbf221ef6915dea2a29d30a429a4b21875f21d7174abaefde8` |
| 14 | `instance` | [Lex.covariantClass_lt_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-covariantclass-lt-left--3db64acc591b3eb7e5381586.md) | 160 | `declaration-track:3db64acc591b3eb7e5381586d9061b04c19d726035edbdf7ba912c2e39ff6f0f` |
| 15 | `instance` | [Lex.covariantClass_le_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-covariantclass-le-left--6774d070ec319aad1fcfaaa6.md) | 165 | `declaration-track:6774d070ec319aad1fcfaaa6d49760522de2b05dcdc50ee8a808dfb96146c93f` |
| 16 | `instance` | [Lex.covariantClass_lt_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-covariantclass-lt-right--bd57650e9617b96125d0f7d2.md) | 176 | `declaration-track:bd57650e9617b96125d0f7d2bb2dad85d82e8014e4d4396758d804cac1f650f7` |
| 17 | `instance` | [Lex.covariantClass_le_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-covariantclass-le-right--1c9747612e8091f3ac2c0e10.md) | 182 | `declaration-track:1c9747612e8091f3ac2c0e1075585da422054ed707c9ec45b8f64f85d96cc881` |
| 18 | `instance` | [Lex.orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-orderbot--828f97acd3807dea537ce2eb.md) | 195 | `declaration-track:828f97acd3807dea537ce2eb9411aba86d98b7de8f799e147c7da7c591394e12` |
| 19 | `instance` | [Lex.orderedAddCancelCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-orderedaddcancelcommmonoid--9b6018e3eec5dc32d552ce35.md) | 199 | `declaration-track:9b6018e3eec5dc32d552ce3521686c8ee71263194d31d6722aa29fbc1bdd9f5e` |
| 20 | `instance` | [Lex.orderedAddCommGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-orderedaddcommgroup--00d9e9588fd12bd25da86ad0.md) | 204 | `declaration-track:00d9e9588fd12bd25da86ad05855a89f364ec124e0ffb05d45a271e850f6a9c3` |
| 21 | `instance` | [Lex.linearOrderedCancelAddCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-linearorderedcanceladdcommmonoid--bb28008a83c7665751ac3ea6.md) | 208 | `declaration-track:bb28008a83c7665751ac3ea6f7bdcdd6d9dfa3f790550f869bc1cd0aff37d483` |
| 22 | `instance` | [Lex.linearOrderedAddCommGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant03b9b993bd646577fe22daecb27706e6a409296bbece1a1916b67f84c895f960.lean/declarations/lex-linearorderedaddcommgroup--fdc08e03cfbcbdc5baa3e9a6.md) | 214 | `declaration-track:fdc08e03cfbcbdc5baa3e9a64b549d70b3701eebf5c6c654b5d7717a28848507` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
