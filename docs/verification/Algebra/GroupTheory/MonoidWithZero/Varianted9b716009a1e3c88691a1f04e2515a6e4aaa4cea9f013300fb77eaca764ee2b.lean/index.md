# Verification target: GRWTSK.Algebra.GroupTheory.MonoidWithZero.Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98ca45cc4647e4e4871aaf49e06726d6d4f59b83",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98ca45cc4647e4e4871aaf49e06726d6d4f59b83`.

Source path: `GRWTSK/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toMap_injective_iff](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/tomap-injective-iff--a34153cb73e9106467540625.md) | 30 | `result-track:a34153cb73e9106467540625ff284f29340c3f11fe6f87ae6a2ef8254bd8ec8e` |
| 2 | `theorem` | [LocalizationMap.subsingleton](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/localizationmap-subsingleton--aab4fd045d973f59c301a27a.md) | 56 | `result-track:aab4fd045d973f59c301a27ad04a1b22c0319a9d8b5a26c8288ae80c39c74cfa` |
| 3 | `structure` | [LocalizationWithZeroMap](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/localizationwithzeromap--0a27ddf1991ce3623d059096.md) | 65 | `declaration-track:0a27ddf1991ce3623d059096377f599b5b750359bf2655d5fd49262da3cc9dd1` |
| 4 | `def` | [LocalizationWithZeroMap.toMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/localizationwithzeromap-tomonoidwithzerohom--3797fd5424dfa2fea1a44713.md) | 75 | `declaration-track:3797fd5424dfa2fea1a447130cca85f80ef1b684535bfa3dc7808d67350c6a72` |
| 5 | `theorem` | [mk_zero](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/mk-zero--7e0ecbbc5d2eccde2b35c8a0.md) | 84 | `result-track:7e0ecbbc5d2eccde2b35c8a07f34dd17cb48b22316d136ed59935f097d026995` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/instance--098604c5a025a3d745543f47.md) | 86 | `declaration-track:098604c5a025a3d745543f473cf7499cff501c162011b7298dde7a5c554fdc81` |
| 7 | `theorem` | [liftOn_zero](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/lifton-zero--ef583ffdd59359a9b2fb3846.md) | 92 | `result-track:ef583ffdd59359a9b2fb3846c56c1bfc28e6ec9870d245ec488be939ae9509ec` |
| 8 | `theorem` | [LocalizationMap.sec_zero_fst](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/localizationmap-sec-zero-fst--fe89c04715f75768ba2d54e4.md) | 102 | `result-track:fe89c04715f75768ba2d54e419cbd45335366b6272c22012ab425c9d814dab80` |
| 9 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/lift--0ac0a109b3f4e999cf52274c.md) | 111 | `declaration-track:0ac0a109b3f4e999cf52274cb45bf9b9fa52c79174a52911541b2517398fa690` |
| 10 | `lemma` | [lift_def](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/lift-def--c20eeec98000a34df779eda5.md) | 122 | `result-track:c20eeec98000a34df779eda5402eb53cd501b78993293034369b1211261e497d` |
| 11 | `lemma` | [lift_apply](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/lift-apply--2bbee74fac46de557105f665.md) | 125 | `result-track:2bbee74fac46de557105f66592ab39ab1fa43f05b62920d9dd700185831d5849` |
| 12 | `theorem` | [leftCancelMulZero_of_le_isLeftRegular](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/leftcancelmulzero-of-le-isleftregular--83da6c456f1c3c712f4642ae.md) | 131 | `result-track:83da6c456f1c3c712f4642ae9b5ce4b9ce8285409107723089a23d4b8b6b4c4b` |
| 13 | `theorem` | [isLeftRegular_of_le_isCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/declarations/isleftregular-of-le-iscancelmulzero--081c199d04897e29aba62e5c.md) | 172 | `result-track:081c199d04897e29aba62e5c3b45239d0c355496e7e5a41ba0de9e8f1bbbe7c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
