# Verification target: GRWTSK.Algebra.Congruence.Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f24c7432ed8448fcd4e7b4220c4344841665837b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/index.md) · [Full source](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f24c7432ed8448fcd4e7b4220c4344841665837b`.

Source path: `GRWTSK/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/algebra--fc7fc0d53f3b49529be8e229.md) | 24 | `declaration-track:fc7fc0d53f3b49529be8e22943c8b96e0463247abc2671d36b5ffdbb5b46eb15` |
| 2 | `def` | [Compatible](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/compatible--9f3b52912cdc4adc760d607f.md) | 33 | `declaration-track:9f3b52912cdc4adc760d607f0bf711b5fb32202f12ac84d37ae868a12feb7aa1` |
| 3 | `def` | [Congruence](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/congruence--7f11ff0c764f71424804cf96.md) | 38 | `declaration-track:7f11ff0c764f71424804cf96eeeb9778428c8f104c9c0f447410b17192f1eb32` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/instance--26c05f66b54c88bc6aa9bf08.md) | 41 | `declaration-track:26c05f66b54c88bc6aa9bf08d8ff07bf7681216c94587b4005e2fb7d68620cff` |
| 5 | `def` | [Representable](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/representable--9055d02b74e62f8738b10a08.md) | 45 | `declaration-track:9055d02b74e62f8738b10a08f946298f143157d6d3c34789d23046d36e9afbdb` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/instance--c35a5abe1f6c930a22cb80de.md) | 48 | `declaration-track:c35a5abe1f6c930a22cb80de107a3d73923e7ad05c6c34baaf77a786d4cbd43f` |
| 7 | `theorem` | [ext](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/ext--02515bc6a7260cf82f3e38f9.md) | 56 | `result-track:02515bc6a7260cf82f3e38f9f592b6f2b2e71e090bee1d81fa0120bd087bdaa5` |
| 8 | `theorem` | [refl](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/refl--d366112ca1b9c2aa38111a61.md) | 60 | `result-track:d366112ca1b9c2aa38111a61e197502bdb166858d1cd7c34058f7f92e51396e0` |
| 9 | `theorem` | [symm](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/symm--37b723d49670bece6827dcaa.md) | 62 | `result-track:37b723d49670bece6827dcaa698add09971a826baf99708e3c4011a4617fccf1` |
| 10 | `theorem` | [trans](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/trans--13dd5e3bfa40559abbe90102.md) | 65 | `result-track:13dd5e3bfa40559abbe90102bede246cf3a31099721cb49e5445eb0efb69e377` |
| 11 | `theorem` | [compatible](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/compatible--e7152b326c8fbcae953d4793.md) | 69 | `result-track:e7152b326c8fbcae953d4793aebf146b3d9ab541b4cc03dcbb852055ae19e35b` |
| 12 | `def` | [equality](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/equality--b853780e0f936aef96e1002b.md) | 75 | `declaration-track:b853780e0f936aef96e1002b72aa0eab3fba4102c3332f62d992c5bbcbcb1829` |
| 13 | `theorem` | [equality_apply](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/equality-apply--0975ba9ee54df5a3e2778d77.md) | 82 | `result-track:0975ba9ee54df5a3e2778d7710c203e425d890361e18cb46797becb4fe9eb990` |
| 14 | `theorem` | [equality_le](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/equality-le--f77592ddf7763679121feb4f.md) | 85 | `result-track:f77592ddf7763679121feb4ff6f732447c6a4a0ac44a68d4d2b6b4c1c5cc32dc` |
| 15 | `def` | [principal](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/principal--55117037d252b79048b59ca0.md) | 91 | `declaration-track:55117037d252b79048b59ca0ca5398ae5efeedb6f1fe22af52521a60c11f7cba` |
| 16 | `theorem` | [principal_pair](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/principal-pair--0e0174ae379df166656aa4db.md) | 100 | `result-track:0e0174ae379df166656aa4dbffef76c49a66ba51fbc4651e34f682b32b3f7b87` |
| 17 | `theorem` | [principal_le](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/principal-le--c0b3006aaa6772e2555206d0.md) | 103 | `result-track:c0b3006aaa6772e2555206d0733c4be780ac13838a757c897e77ff2fbd79098d` |
| 18 | `theorem` | [principal_comm](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/principal-comm--5872eaecf6943462803fd408.md) | 111 | `result-track:5872eaecf6943462803fd4083a6e599946186794787b7d0f0c950ea089d1b2a2` |
| 19 | `theorem` | [relation_map_of_updates](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/relation-map-of-updates--563fabd3bb4dd0b07f870b4e.md) | 121 | `result-track:563fabd3bb4dd0b07f870b4e936f684c243d3e48f04367c188e5f70de0fc70fa` |
| 20 | `def` | [translation](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/translation--9864c0604f9b122327ccada4.md) | 148 | `declaration-track:9864c0604f9b122327ccada41105bcfd5b7478b0454d197b5b4a04757dfddce9` |
| 21 | `theorem` | [translation_preserves](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/translation-preserves--0aa56a3be745158f67a358a1.md) | 153 | `result-track:0aa56a3be745158f67a358a143386d38acb3ede8397aff05ea94d02d2b473d04` |
| 22 | `theorem` | [compatible_iff_translations](../../../../mathematics/Algebra/Congruence/Variant8864048219e3d7aa77f6d97dc1a973fae14e7c90dfe21ecc3c12dabd80284c41.lean/declarations/compatible-iff-translations--0712fcd8ae78680dc43c0c0c.md) | 164 | `result-track:0712fcd8ae78680dc43c0c0cfe080c34412eeca7847e53ae12703021d9db7441` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
