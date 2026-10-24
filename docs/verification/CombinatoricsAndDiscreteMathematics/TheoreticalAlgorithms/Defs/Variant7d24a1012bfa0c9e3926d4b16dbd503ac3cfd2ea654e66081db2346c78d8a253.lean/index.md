# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "616e88f05aea06e8e8e8b73bfa0fb87546cadde5",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `616e88f05aea06e8e8e8b73bfa0fb87546cadde5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Cost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/cost--d9b33c3158023b8611cb2b95.md) | 46 | `declaration-track:d9b33c3158023b8611cb2b9503fa479bf2610927dcbdc0a867296c1bbd1b3124` |
| 2 | `def` | [defaultCost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/defaultcost--2a32d95b4ffd11ab3f6634a4.md) | 56 | `declaration-track:2a32d95b4ffd11ab3f6634a4d080d9aa9754b58ef4954f6e67fcb04478eb08f3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/instance--0c6f572538725013c80f2c16.md) | 61 | `declaration-track:0c6f572538725013c80f2c16ee642ec59cd60bf29922d4418ba8c306a095958b` |
| 4 | `def` | [weightCost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/weightcost--c5b6c2f51cf6a6772fc76449.md) | 68 | `declaration-track:c5b6c2f51cf6a6772fc76449478583a592db8185240cbb0a9376d7f3011edaf1` |
| 5 | `def` | [stringLengthCost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/stringlengthcost--707cc8306d9eab3e065586fb.md) | 77 | `declaration-track:707cc8306d9eab3e065586fbb3b9446720b4583b3d33132111b5cb92fc0c5160` |
| 6 | `def` | [stringLogLengthCost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/stringloglengthcost--16dd9c1608b44c13fe8e8398.md) | 83 | `declaration-track:16dd9c1608b44c13fe8e83987177f3608bcaea0388834ab92e06727ec8208772` |
| 7 | `def` | [impl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/impl--6a1ecabfad453526d77a92a3.md) | 99 | `declaration-track:6a1ecabfad453526d77a92a39bb0a5ba184ca3d3a99247fee7fdd9ec2b523d7a` |
| 8 | `theorem` | [impl_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/impl-cons--3f52ed6726982d8dfca5322a.md) | 112 | `result-track:3f52ed6726982d8dfca5322af1856ac72463e92b47091cd66b8426f47df83da3` |
| 9 | `theorem` | [impl_cons_fst_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/impl-cons-fst-zero--5debc06ce05cdafecc5ddfd3.md) | 120 | `result-track:5debc06ce05cdafecc5ddfd31ea948c05b19681bf7a122bd86fb013d0d336a7a` |
| 10 | `theorem` | [impl_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/impl-length--abf1547a1a7a3af72bddac84.md) | 126 | `result-track:abf1547a1a7a3af72bddac84e34aed2560eb2d949746b6598773c34961acabdb` |
| 11 | `def` | [suffixLevenshtein](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/suffixlevenshtein--b008cb2846c72a8de9f4a36e.md) | 158 | `declaration-track:b008cb2846c72a8de9f4a36e48bbe24ffbb1150bfa29b72c2fe97c4b6141b254` |
| 12 | `theorem` | [suffixLevenshtein_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/suffixlevenshtein-length--ac4064145aea25f3fd30bae2.md) | 165 | `result-track:ac4064145aea25f3fd30bae2a33f7e36579d5240d089886c86e1f764da61c186` |
| 13 | `theorem` | [suffixLevenshtein_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/suffixlevenshtein-eq--60f976602d9d068bc344fd6c.md) | 180 | `result-track:60f976602d9d068bc344fd6c176575af01bd72ed2b0b1638e189363737f025b5` |
| 14 | `def` | [levenshtein](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/levenshtein--1007f531a7dd0cff4d58ecbc.md) | 198 | `declaration-track:1007f531a7dd0cff4d58ecbce980fc7e1279846dd1bf9e25359a056887ed6793` |
| 15 | `theorem` | [suffixLevenshtein_nil_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/suffixlevenshtein-nil-nil--534d6295b8d98ddf6e90d7f8.md) | 204 | `result-track:534d6295b8d98ddf6e90d7f87633e987ad4bf5dcb94dcb774140a4a56d588248` |
| 16 | `theorem` | [List.eq_of_length_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/list-eq-of-length-one--07ad9ebcff629658e7ffa204.md) | 208 | `result-track:07ad9ebcff629658e7ffa20429b4a4d35892cafe018c6af1f66f3d165f72635c` |
| 17 | `theorem` | [suffixLevenshtein_nil'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/suffixlevenshtein-nil--69d44084a791b51349c0b477.md) | 214 | `result-track:69d44084a791b51349c0b47741e7144190e5a71cab9360b15918df7faab41092` |
| 18 | `theorem` | [suffixLevenshtein_cons₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/suffixlevenshtein-cons--1baceecb79c2fd06ec06ffbd.md) | 218 | `result-track:1baceecb79c2fd06ec06ffbd6d00e38ccb0fb650657b759e5a7b28eae82d421e` |
| 19 | `theorem` | [suffixLevenshtein_cons₁_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/suffixlevenshtein-cons-aux--0c7b836252edcb10177edda1.md) | 222 | `result-track:0c7b836252edcb10177edda15976dd9c63f2d8cebd5aa96eb90bfd7a4bebdae3` |
| 20 | `theorem` | [suffixLevenshtein_cons₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/suffixlevenshtein-cons--56134cd45760ea50f0db3a1b.md) | 227 | `result-track:56134cd45760ea50f0db3a1bc5ea3fe03c1861ce6fc33497d647fff59e5f3683` |
| 21 | `theorem` | [suffixLevenshtein_cons₁_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/suffixlevenshtein-cons-fst--05660e3de2b824c0de1ed78d.md) | 242 | `result-track:05660e3de2b824c0de1ed78dce1cb477a68678f7e14be2251700e27cb58efb3b` |
| 22 | `theorem` | [suffixLevenshtein_cons_cons_fst_get_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/suffixlevenshtein-cons-cons-fst-get-zero--b449e77884cff38422c21d0f.md) | 248 | `result-track:b449e77884cff38422c21d0f157041e7693a6276a2f3b2e2306f40cd94e6337d` |
| 23 | `theorem` | [suffixLevenshtein_eq_tails_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/suffixlevenshtein-eq-tails-map--eca6db37d596b2d973021392.md) | 266 | `result-track:eca6db37d596b2d973021392d722c0258906224f5fca2d3f96a480851f008c43` |
| 24 | `theorem` | [levenshtein_nil_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/levenshtein-nil-nil--e261d5228dcd09b8883ba0d7.md) | 275 | `result-track:e261d5228dcd09b8883ba0d7a106c5d32a896f899102058d5dcc8f391d1db567` |
| 25 | `theorem` | [levenshtein_nil_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/levenshtein-nil-cons--24e6a65232433e59172a8965.md) | 279 | `result-track:24e6a65232433e59172a89654590ba8d92bb4673be4bbbd87a018e49a5dedac4` |
| 26 | `theorem` | [levenshtein_cons_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/levenshtein-cons-nil--bce28f87849316fd092e7ae1.md) | 289 | `result-track:bce28f87849316fd092e7ae1cbebbd4073dbc16f749c8bada905c231eda02889` |
| 27 | `theorem` | [levenshtein_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d24a1012bfa0c9e3926d4b16dbd503ac3cfd2ea654e66081db2346c78d8a253.lean/declarations/levenshtein-cons-cons--6273b49330a911e2aea6a81c.md) | 294 | `result-track:6273b49330a911e2aea6a81c4c7a135ac41696ac0407cb8102a5c2f6818bda02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
