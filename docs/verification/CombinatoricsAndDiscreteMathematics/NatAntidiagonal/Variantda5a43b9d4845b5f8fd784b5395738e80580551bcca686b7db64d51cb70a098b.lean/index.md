# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "771015f6a33f51c9234454e28fb7d3f4b1461f0c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `771015f6a33f51c9234454e28fb7d3f4b1461f0c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.NatAntidiagonal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instHasAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/insthasantidiagonal--17e67d6c2830ddcae92ae5a2.md) | 41 | `declaration-track:17e67d6c2830ddcae92ae5a2ea357b5cd44d63f514ff32f3dde02f4810c026bc` |
| 2 | `lemma` | [antidiagonal_eq_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-eq-map--689a7710999faa8db64bf3c0.md) | 46 | `result-track:689a7710999faa8db64bf3c0afdbed4bb6fdc37754b0887175edd23933dba6b4` |
| 3 | `lemma` | [antidiagonal_eq_map'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-eq-map--e7113a9967ebcd4bc4ad6547.md) | 50 | `result-track:e7113a9967ebcd4bc4ad6547c17080edc3ca7769987c174ab3bedb95d6780fa6` |
| 4 | `lemma` | [antidiagonal_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-eq-image--d0fa77a76dea96913f34bc46.md) | 55 | `result-track:d0fa77a76dea96913f34bc4646711a7b2afc98468750521d3250b0f812d32287` |
| 5 | `lemma` | [antidiagonal_eq_image'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-eq-image--4b21762932704fb3b89b0f16.md) | 59 | `result-track:4b21762932704fb3b89b0f1651bddc323856b6f9dfcca8ffc495620948823a69` |
| 6 | `theorem` | [card_antidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/card-antidiagonal--0a24979d8b5e1169b3c25ad0.md) | 65 | `result-track:0a24979d8b5e1169b3c25ad007601b0e38fd67ef86d943dcb4e3186da3a44812` |
| 7 | `theorem` | [antidiagonal_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-zero--6477706cb560973c57459760.md) | 69 | `result-track:6477706cb560973c574597603af9062df856158cba81c030c9b886a214c95efb` |
| 8 | `theorem` | [antidiagonal_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-succ--1b6fd257b79503fdeeebe380.md) | 71 | `result-track:1b6fd257b79503fdeeebe380c99511d10df1551c271a12c7787490f4c788e12c` |
| 9 | `theorem` | [antidiagonal_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-succ--dad4034e81cf949761c45257.md) | 81 | `result-track:dad4034e81cf949761c45257f14abe971f8b8fdd8cd9702619644bc416bcbf14` |
| 10 | `theorem` | [antidiagonal_succ_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-succ-succ--a500c0fb7c169081978da97c.md) | 91 | `result-track:a500c0fb7c169081978da97cfe4a694dcad00ba8096a6d8436c245b34c48b629` |
| 11 | `theorem` | [antidiagonal.fst_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-fst-lt--2dd48bbd1df42df8406b28e7.md) | 103 | `result-track:2dd48bbd1df42df8406b28e7856119ff8a3b665599a110023bb16bc6c625f31a` |
| 12 | `theorem` | [antidiagonal.snd_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-snd-lt--83eeb40a98cecb83d563b873.md) | 106 | `result-track:83eeb40a98cecb83d563b8739412a145efb7e1658b14c88205bef12d9f3b42a5` |
| 13 | `lemma` | [antidiagonal_filter_snd_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-filter-snd-le-of-le--f9dad04f8f3e527fbce4c520.md) | 109 | `result-track:f9dad04f8f3e527fbce4c520a4ba1d50d4e6e200e2b2275c85def37dfd9e4103` |
| 14 | `lemma` | [antidiagonal_filter_fst_le_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-filter-fst-le-of-le--a49079777ee01e318ee49f88.md) | 122 | `result-track:a49079777ee01e318ee49f888b30cf70c9e5be447e067e0460d436d766413dbf` |
| 15 | `lemma` | [antidiagonal_filter_le_fst_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-filter-le-fst-of-le--c95dfd6579a55ebb7a4436ea.md) | 134 | `result-track:c95dfd6579a55ebb7a4436ea8b4d1435045366155f4cb41086226671d9928c1a` |
| 16 | `lemma` | [antidiagonal_filter_le_snd_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonal-filter-le-snd-of-le--acb6385b43fc069dcc14b522.md) | 146 | `result-track:acb6385b43fc069dcc14b5224a951b91654cb56908f2b626368f982d493f6aa9` |
| 17 | `def` | [antidiagonalEquivFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantda5a43b9d4845b5f8fd784b5395738e80580551bcca686b7db64d51cb70a098b.lean/declarations/antidiagonalequivfin--f5e64e9285066c6c4ef12eb6.md) | 160 | `declaration-track:f5e64e9285066c6c4ef12eb6e6270d5f5edf68098ac18b725d386709aa4bdf26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
