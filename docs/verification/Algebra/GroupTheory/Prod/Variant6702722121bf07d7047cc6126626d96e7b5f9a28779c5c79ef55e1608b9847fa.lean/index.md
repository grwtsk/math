# Verification target: GRWTSK.Algebra.GroupTheory.Prod.Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a87fa632cc96526c87d12ce70cf5ca9f014b0995",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a87fa632cc96526c87d12ce70cf5ca9f014b0995`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/isscalartower--9e92bda1381d25a948d5f22f.md) | 47 | `declaration-track:9e92bda1381d25a948d5f22fc7f40c04e783a59600882bb42a1eda398c3e69c5` |
| 2 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/smulcommclass--44243f76306b303d02b5a56d.md) | 52 | `declaration-track:44243f76306b303d02b5a56d7691758a3a79df478cc886b9b44607584d0ec35c` |
| 3 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/iscentralscalar--bbc9d1c82e3a5c926faeed8a.md) | 56 | `declaration-track:bbc9d1c82e3a5c926faeed8aca3a9ff0130b23d061c784661bec69f46df2e249` |
| 4 | `instance` | [faithfulSMulLeft](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/faithfulsmulleft--b1d1a13e0db01f9916717230.md) | 61 | `declaration-track:b1d1a13e0db01f9916717230bc9634bba69acf5a42f97a015f9c2b699fdb0730` |
| 5 | `instance` | [faithfulSMulRight](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/faithfulsmulright--d4ec9c889df7abbd824154aa.md) | 67 | `declaration-track:d4ec9c889df7abbd824154aaf1370fa626b437089e4c2acbef48cab1249c246b` |
| 6 | `instance` | [smulCommClassBoth](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/smulcommclassboth--25663d222aaf58142bac30a2.md) | 75 | `declaration-track:25663d222aaf58142bac30a235a83b5fe7109808b8dee33b2d6c1d30094e8705` |
| 7 | `instance` | [isScalarTowerBoth](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/isscalartowerboth--cd07cbce8f255f83ec42828c.md) | 79 | `declaration-track:cd07cbce8f255f83ec42828cc1d0660f6e1fea010e620286b483477b4c891c5c` |
| 8 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/mulaction--57f39a1d262f185ea7ca6c4d.md) | 84 | `declaration-track:57f39a1d262f185ea7ca6c4d4f7a5db15e9d8be1c94c86159740b9b5bf7c5cc6` |
| 9 | `def` | [smulMulHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/smulmulhom--dcdac7675d7785b7f7498478.md) | 96 | `declaration-track:dcdac7675d7785b7f7498478a6838e89d4cc71a53f136f4112181896ee2ba87a` |
| 10 | `def` | [smulMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/smulmonoidhom--b1514f7d8379cec0e0ab789e.md) | 103 | `declaration-track:b1514f7d8379cec0e0ab789e0766ad5707503cb03ec61a00b5770c02f2e1fabe` |
| 11 | `abbrev` | [MulAction.prodOfSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/mulaction-prodofsmulcommclass--dbc693433afd78a726d902e0.md) | 117 | `declaration-track:dbc693433afd78a726d902e080fcc49787ad67a79c4f717c3f109f28939a0284` |
| 12 | `def` | [MulAction.prodEquiv](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant6702722121bf07d7047cc6126626d96e7b5f9a28779c5c79ef55e1608b9847fa.lean/declarations/mulaction-prodequiv--df904c2f6a08b5af2dfc9349.md) | 128 | `declaration-track:df904c2f6a08b5af2dfc9349be917ebd39191aff37cb42913a0272e45e5a36e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
