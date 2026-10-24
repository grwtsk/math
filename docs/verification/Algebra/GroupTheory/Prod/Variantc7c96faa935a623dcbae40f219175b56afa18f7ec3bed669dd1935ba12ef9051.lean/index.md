# Verification target: GRWTSK.Algebra.GroupTheory.Prod.Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de580c068ec7a939d0d708950f6f8e409ce460e2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de580c068ec7a939d0d708950f6f8e409ce460e2`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Hom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/isscalartower--67a6d2973889d7e821b08441.md) | 55 | `declaration-track:67a6d2973889d7e821b084411226cc48ad53d682e660d846225c666e7ab168f9` |
| 2 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/smulcommclass--78c245ade33f48bc7717207e.md) | 60 | `declaration-track:78c245ade33f48bc7717207ed9bcc4d1c7f583af06b95cecb05722cda5d76707` |
| 3 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/iscentralscalar--d918f065d05b61eb42f9bee0.md) | 64 | `declaration-track:d918f065d05b61eb42f9bee00c07a176cff2062d3303c875d37a98eb52fee511` |
| 4 | `instance` | [faithfulSMulLeft](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/faithfulsmulleft--5924136984754a6f8aa27dd0.md) | 69 | `declaration-track:5924136984754a6f8aa27dd02794282284fe2036a06d4ab118e5c93bc590d22b` |
| 5 | `instance` | [faithfulSMulRight](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/faithfulsmulright--42ba5d75c5ae09ce1982e373.md) | 75 | `declaration-track:42ba5d75c5ae09ce1982e373d41cd1b28bee8384cde3c694fc19b005ba8a6cb1` |
| 6 | `instance` | [smulCommClassBoth](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/smulcommclassboth--a44fcf1cba61fc388f0fbe51.md) | 83 | `declaration-track:a44fcf1cba61fc388f0fbe518e9616aef7ef172def89bcdd2ecfdf27f6101641` |
| 7 | `instance` | [isScalarTowerBoth](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/isscalartowerboth--869300dc689a32af869554ef.md) | 87 | `declaration-track:869300dc689a32af869554ef47b4ba355655a0c0f1c5ddd6a67dfcf43f9a4f99` |
| 8 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/mulaction--cc41dd82d2dc8f97aac3f434.md) | 92 | `declaration-track:cc41dd82d2dc8f97aac3f4346e295a3ce1c2a2d2d126535c0eb13a5e9dac34b2` |
| 9 | `def` | [smulMulHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/smulmulhom--4845ea50b44d709c2590c589.md) | 104 | `declaration-track:4845ea50b44d709c2590c5891532c763212aebd0c9ab69cd7c79352bc7dd70fb` |
| 10 | `def` | [smulMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/smulmonoidhom--0aee12ad9400128025f366f7.md) | 111 | `declaration-track:0aee12ad9400128025f366f7a84cbac212a5ca23e635faee790de0ca9c0b2fb5` |
| 11 | `abbrev` | [MulAction.prodOfSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/mulaction-prodofsmulcommclass--b442961d2401cc787c7ccc18.md) | 125 | `declaration-track:b442961d2401cc787c7ccc182e17ef9ca5425749e85d19bbb4ff0e0e4c29bfbb` |
| 12 | `def` | [MulAction.prodEquiv](../../../../../mathematics/Algebra/GroupTheory/Prod/Variantc7c96faa935a623dcbae40f219175b56afa18f7ec3bed669dd1935ba12ef9051.lean/declarations/mulaction-prodequiv--aa7fe5b2f808bec289af59cd.md) | 136 | `declaration-track:aa7fe5b2f808bec289af59cd9fb0c2216827deda99eebbf342b3c416678cc2e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
