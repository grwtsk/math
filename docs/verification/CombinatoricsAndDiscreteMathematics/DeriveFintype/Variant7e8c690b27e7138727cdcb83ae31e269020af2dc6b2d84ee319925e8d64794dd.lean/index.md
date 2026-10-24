# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DeriveFintype.Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "446ec31c4cb43bf8bd13c2faa6a20285df476104",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `446ec31c4cb43bf8bd13c2faa6a20285df476104`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ProxyType` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean/declarations/macro--aab33cb0e2b446c6795ff802.md) | 85 | `declaration-track:aab33cb0e2b446c6795ff802cbf5925be83f197b62d3b89011880cdd256f2c92` |
| 2 | `def` | [mkFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean/declarations/mkfintype--a412ed10979677eafb90dc8e.md) | 91 | `declaration-track:a412ed10979677eafb90dc8eed2f9b876d818ba7d2e68422f2a609211ec6e3fc` |
| 3 | `instance` | [$header.binders](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean/declarations/header-binders--a0aa2f5e74553b2c2eff289c.md) | 97 | `declaration-track:a0aa2f5e74553b2c2eff289c1f2ae02bbea1d6807bfa519f7a7dd7ed30e48b94` |
| 4 | `def` | [mkFintypeEnum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean/declarations/mkfintypeenum--16f9670cbffa3c191219ecbd.md) | 113 | `declaration-track:16f9670cbffa3c191219ecbdbe2a1b6dd563eff4b223e2c4981ea488b5d51775` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean/declarations/instance--487a7978ae048841b51432e7.md) | 171 | `declaration-track:487a7978ae048841b51432e71745359a2cc2b2a49c06d06c5c4a99a1c594ce3d` |
| 6 | `def` | [mkFintypeInstanceHandler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean/declarations/mkfintypeinstancehandler--22a4bc2144c64c2ee22762d5.md) | 180 | `declaration-track:22a4bc2144c64c2ee22762d5b4f41e07c5b1c0bb9c0178fa112de0742175aba9` |
| 7 | `initialize` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant7e8c690b27e7138727cdcb83ae31e269020af2dc6b2d84ee319925e8d64794dd.lean/declarations/initialize--29a031cd7cc1e95a7a9d1449.md) | 191 | `declaration-track:29a031cd7cc1e95a7a9d14495d2331c2c37117d1b530523184b932de24486d7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
