# Verification target: GRWTSK.Algebra.GroupTheory.Nat.Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d02952ab3d79c00199cbcc4dee9ca5fc1353bf47",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d02952ab3d79c00199cbcc4dee9ca5fc1353bf47`.

Source path: `GRWTSK/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Spread` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean/declarations/instmulzeroclass--75a43a08dfddeec77385b3ed.md) | 30 | `declaration-track:75a43a08dfddeec77385b3ede7ff19b921f2c7bebc809df2bff9df9ed8f06d1d` |
| 2 | `instance` | [instSemigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean/declarations/instsemigroupwithzero--ac4b5f8b8b45cd066a5d8ee7.md) | 34 | `declaration-track:ac4b5f8b8b45cd066a5d8ee73e8a10a63bebef6385025085b6d4fcd56b7be6a6` |
| 3 | `instance` | [instMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean/declarations/instmonoidwithzero--2c554e1ed2d83a899a90bbd4.md) | 38 | `declaration-track:2c554e1ed2d83a899a90bbd475b2346607d15b0973e49434dbc0a367780f0565` |
| 4 | `instance` | [instCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean/declarations/instcommmonoidwithzero--2c271fe6ef08ac0f856e7f9d.md) | 43 | `declaration-track:2c271fe6ef08ac0f856e7f9d323c6de23d8350d4bc5379604a5d367c5d8af113` |
| 5 | `instance` | [instIsLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean/declarations/instisleftcancelmulzero--236eb7afea2e4ab2641693cf.md) | 47 | `declaration-track:236eb7afea2e4ab2641693cf9712b28df3ed597986aec355ec52a93f8ca998ae` |
| 6 | `instance` | [instCancelCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean/declarations/instcancelcommmonoidwithzero--0a2d2be1b05156db67d9a952.md) | 50 | `declaration-track:0a2d2be1b05156db67d9a9523487f61a8c4e835a1d0a3f7331fe7854204c6de3` |
| 7 | `instance` | [instMulDivCancelClass](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean/declarations/instmuldivcancelclass--848681eb4f6e6baeb91d86d5.md) | 54 | `declaration-track:848681eb4f6e6baeb91d86d567b630c91f548881d1b872d23d1b4361d1e523c6` |
| 8 | `instance` | [instMulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Nat/Variantf24c114adfde28d6c330bc7227cebb888e366ff07d9ae80545cff822f551dd2d.lean/declarations/instmulzerooneclass--8525f190dc3aaa930ba11b49.md) | 57 | `declaration-track:8525f190dc3aaa930ba11b49992c56366c256b9ed78251718cfc66a5e181879b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
