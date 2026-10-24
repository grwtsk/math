# Verification target: GRWTSK.Algebra.GroupTheory.ZGroup.Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a91576f8eb05c5858a7b2f5cf1a6ca10b4aebf55",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a91576f8eb05c5858a7b2f5cf1a6ca10b4aebf55`.

Source path: `GRWTSK/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Squarefree.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Nilpotent` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SchurZassenhaus` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SemidirectProduct` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsZGroup](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/iszgroup--26e9e652091f0571de06cbcd.md) | 35 | `declaration-track:26e9e652091f0571de06cbcd28f569d2606a97e56ee31715f654b350bd49a35a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/instance--c3fa64d6439b395415f0da95.md) | 42 | `declaration-track:c3fa64d6439b395415f0da95261c90fdf5eb99245b99f4d17d988b157eee0f26` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/instance--9daba7dafb9948630fc597f0.md) | 45 | `declaration-track:9daba7dafb9948630fc597f02030b209661a209ab9c8548cd7fd525323afba60` |
| 4 | `theorem` | [_root_.IsPGroup.isCyclic_of_isZGroup](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/root-ispgroup-iscyclic-of-iszgroup--386ac5a0118c6c01e05b1628.md) | 48 | `result-track:386ac5a0118c6c01e05b162880f041be52a297e08763b83dc6dbe3903a4c927c` |
| 5 | `theorem` | [of_squarefree](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/of-squarefree--5858c2262015579011ea827e.md) | 53 | `result-track:5858c2262015579011ea827e4f80e7feca98b4dacbbffd6d66193e9c770058b8` |
| 6 | `theorem` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/of-injective--2faec06fdc0e65d2ec1c459d.md) | 60 | `result-track:2faec06fdc0e65d2ec1c459d1eb57ca43701e2c02bfeefcaea070b5cdb466d1f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/instance--501c15dda86475703d229ecf.md) | 69 | `declaration-track:501c15dda86475703d229ecf67ae6d46d4d2a932fb9edfdd27de609886b47e30` |
| 8 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/of-surjective--e538a18df72dc67a562f449e.md) | 71 | `result-track:e538a18df72dc67a562f449eef2f4c1ccca71027d492e9f4b6cf035d83c0681e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/instance--7802f47c4e625fcb90ef6ce3.md) | 79 | `declaration-track:7802f47c4e625fcb90ef6ce3428cf80387d0f727003a11c1f7d95476bede8d22` |
| 10 | `theorem` | [commutator_lt](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/commutator-lt--d35111db5d724f0dcdd6f4c3.md) | 85 | `result-track:d35111db5d724f0dcdd6f4c38b42a91a19dd7a0975900255189b473be41b1e1b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/instance--ebff92530709f09865a835e3.md) | 98 | `declaration-track:ebff92530709f09865a835e3be37424b68bbb7322073e1fc21f73b36bc700456` |
| 12 | `theorem` | [exponent_eq_card](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/exponent-eq-card--665eee2b4d46c7001ec16a5f.md) | 111 | `result-track:665eee2b4d46c7001ec16a5f720cbc15253d6c4cbbfd598ae46cd55f5182bc79` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/instance--1eba19d4fd39392461d52b5b.md) | 121 | `declaration-track:1eba19d4fd39392461d52b5b6e459e2bb45e0216176e9aa265ad0f09b28e9474` |
| 14 | `instance` | [isCyclic_abelianization](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/iscyclic-abelianization--70f1f0638a1081c60a2d1e93.md) | 130 | `declaration-track:70f1f0638a1081c60a2d1e9307ced94e447bd36569534dff6fd8457ddbcef5df` |
| 15 | `theorem` | [isCyclic_commutator](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/iscyclic-commutator--f7a95c6628a65832af8c3de6.md) | 140 | `result-track:f7a95c6628a65832af8c3de6bd55538f44576fb7b9707fee0521470d3d0fb81e` |
| 16 | `theorem` | [smul_mul_inv_trivial_or_surjective](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/smul-mul-inv-trivial-or-surjective--199a8f11bcbab8c7c930a1ff.md) | 181 | `result-track:199a8f11bcbab8c7c930a1ff5132679cad3425e518967a48cae3b08dd7ace2ba` |
| 17 | `theorem` | [commutator_eq_bot_or_commutator_eq_self](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/commutator-eq-bot-or-commutator-eq-self--9cc5e5fafa2d7ae919a528b1.md) | 208 | `result-track:9cc5e5fafa2d7ae919a528b198628c7c60234af1272ef4355f37c56bb491565f` |
| 18 | `theorem` | [commutator_eq_bot_or_commutator_eq_self](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/commutator-eq-bot-or-commutator-eq-self--1eaee0ebc2eec6d643ee5058.md) | 229 | `result-track:1eaee0ebc2eec6d643ee50581d44e7b2a9820635710c786dc9086d0be842352d` |
| 19 | `theorem` | [le_center_or_le_commutator](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/le-center-or-le-commutator--49258f240a77f2c5bdb63ca2.md) | 235 | `result-track:49258f240a77f2c5bdb63ca2f3f12256104c3dec5a6700f3d9ed4fe99bfec72d` |
| 20 | `theorem` | [normalizer_le_centralizer_or_le_commutator](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/normalizer-le-centralizer-or-le-commutator--cf1d4d73671f2286473f86c4.md) | 245 | `result-track:cf1d4d73671f2286473f86c4c912cdd878bfdbe6185001c7045f92a832550b6c` |
| 21 | `theorem` | [not_dvd_card_commutator_or_not_dvd_index_commutator](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/not-dvd-card-commutator-or-not-dvd-index-commutator--57fa827f923ab96a63216881.md) | 264 | `result-track:57fa827f923ab96a632168817b4575ac1a6fe249a1af90f28201888dc50fe2ed` |
| 22 | `theorem` | [IsZGroup.coprime_commutator_index](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/iszgroup-coprime-commutator-index--3b9336febd60292b58b8533d.md) | 276 | `result-track:3b9336febd60292b58b8533d90e5448775b89d9ad83a168892a51a7ef8f6e59a` |
| 23 | `theorem` | [isZGroup_of_coprime](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/iszgroup-of-coprime--94fbc1172b3dfc56ff86ea7d.md) | 290 | `result-track:94fbc1172b3dfc56ff86ea7dcfe17137a41b68e355211fbb0c08e8a168acfa77` |
| 24 | `theorem` | [isZGroup_iff_exists_mulEquiv](../../../../../mathematics/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/declarations/iszgroup-iff-exists-mulequiv--9db1decc4b8fb9d1d6b39cb9.md) | 311 | `result-track:9db1decc4b8fb9d1d6b39cb978417d4c5f28f27646fd26e26689a164fe69f225` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
