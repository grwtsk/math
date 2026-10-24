# Verification target: GRWTSK.Algebra.GroupTheory.MonoidWithZero.Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a26f3a24bd4d01497718324097565fe5c1a1dd0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a26f3a24bd4d01497718324097565fe5c1a1dd0`.

Source path: `GRWTSK/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toMap_injective_iff](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/tomap-injective-iff--de2032e45f8bedbeb24f65bd.md) | 22 | `result-track:de2032e45f8bedbeb24f65bd5336f8649267f9601383394f4d3450308ba3acc3` |
| 2 | `theorem` | [LocalizationMap.subsingleton](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/localizationmap-subsingleton--943023165ff2c77a2a82a2c0.md) | 48 | `result-track:943023165ff2c77a2a82a2c0ed649c9363c31445d35e2771d38bb05fe20babfe` |
| 3 | `structure` | [LocalizationWithZeroMap](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/localizationwithzeromap--7880309ae0fa4255dcc14bee.md) | 57 | `declaration-track:7880309ae0fa4255dcc14beef8f11fe4ccd2833ab939b433bc3eed2be90cf1db` |
| 4 | `def` | [LocalizationWithZeroMap.toMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/localizationwithzeromap-tomonoidwithzerohom--79871a7dd887c09f1442692c.md) | 67 | `declaration-track:79871a7dd887c09f1442692c934c3cc08c16bbd74317d41e051795739ee7f4c8` |
| 5 | `theorem` | [mk_zero](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/mk-zero--deac564d07b501a17ea4382c.md) | 76 | `result-track:deac564d07b501a17ea4382ca02ed93b5e9b8744f4ad0e91806e39619858027a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/instance--99916cf3de16f17421687ad1.md) | 78 | `declaration-track:99916cf3de16f17421687ad119cc1d88119ce5e90a4e98fa314d4df25e9f2431` |
| 7 | `theorem` | [liftOn_zero](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/lifton-zero--8e87f7eecea544032da470ec.md) | 84 | `result-track:8e87f7eecea544032da470ec8cc525575f0519ce58b96ec88d360f6540fdb0ba` |
| 8 | `theorem` | [LocalizationMap.sec_zero_fst](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/localizationmap-sec-zero-fst--728a913028a5a50ca8673d0d.md) | 94 | `result-track:728a913028a5a50ca8673d0d83fc0df5c378cc39a41dfbe4cc8f04d1c4772d66` |
| 9 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/lift--26e3221f43d0fe1f0b7e6c36.md) | 103 | `declaration-track:26e3221f43d0fe1f0b7e6c36696bb7593ec9066cfcf5a0e314fc27fc3b4ca50e` |
| 10 | `lemma` | [lift_def](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/lift-def--e5856e913d73ada83c22d5f7.md) | 114 | `result-track:e5856e913d73ada83c22d5f7f1580c0d1f760001d1c7272643a1f93375fcc735` |
| 11 | `lemma` | [lift_apply](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/lift-apply--507b55783ba44515bcb6653c.md) | 117 | `result-track:507b55783ba44515bcb6653c0db46a36a5b8893b7cd458be9c31852423220894` |
| 12 | `theorem` | [leftCancelMulZero_of_le_isLeftRegular](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/leftcancelmulzero-of-le-isleftregular--b67d0f8485a28b014377005b.md) | 123 | `result-track:b67d0f8485a28b014377005b59eb7a96294cfdbb23616273cbd477722203ba69` |
| 13 | `theorem` | [isLeftRegular_of_le_isCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Variant940c785156d0b28b714c5f1b040bc3c380a4938b37ca8c40ae180e631d873025.lean/declarations/isleftregular-of-le-iscancelmulzero--238c0fcb01693873f224bc1c.md) | 164 | `result-track:238c0fcb01693873f224bc1c96788993852180069ee15ca443745748d0d32886` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
