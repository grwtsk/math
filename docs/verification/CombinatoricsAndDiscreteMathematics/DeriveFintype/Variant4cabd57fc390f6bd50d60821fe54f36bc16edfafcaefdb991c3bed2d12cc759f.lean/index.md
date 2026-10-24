# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DeriveFintype.Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23411c79b1d7581adb0bf11672155f065a0ab69a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23411c79b1d7581adb0bf11672155f065a0ab69a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean.json)

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
| 1 | `macro` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean/declarations/macro--b73bb6193c295170973f2d1b.md) | 85 | `declaration-track:b73bb6193c295170973f2d1b5ad85ba2a6b7790c63f081ba22cb14f3f50855d2` |
| 2 | `def` | [mkFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean/declarations/mkfintype--94d66a0d55d66f8b578b6653.md) | 91 | `declaration-track:94d66a0d55d66f8b578b6653c6e831fec436d805ca67a2755ca87d50592e226a` |
| 3 | `instance` | [$header.binders](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean/declarations/header-binders--ac8191996e1b653e18a0aa6a.md) | 97 | `declaration-track:ac8191996e1b653e18a0aa6a7c7f1084b6652c0f4bf8a2aba859b43fcf0bd04f` |
| 4 | `def` | [mkFintypeEnum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean/declarations/mkfintypeenum--831f18d201b34b6963fc8682.md) | 113 | `declaration-track:831f18d201b34b6963fc8682ac88fa020315c6246652935d69561d82ab5a77e4` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean/declarations/instance--72851624bc3f9048bbd8fa38.md) | 169 | `declaration-track:72851624bc3f9048bbd8fa3810665c768ee06cbcc4d509f7e8206602047057b0` |
| 6 | `def` | [mkFintypeInstanceHandler](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean/declarations/mkfintypeinstancehandler--a158dba08d5353bc5f305d3b.md) | 178 | `declaration-track:a158dba08d5353bc5f305d3b7a06e874b2d13a66e02fc1ccf102df2a11298cef` |
| 7 | `initialize` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean/declarations/initialize--8131dc2ea82e0dd15b7a1ff7.md) | 188 | `declaration-track:8131dc2ea82e0dd15b7a1ff795831b2fdebda165265d1932afddbc6f4785cfc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
