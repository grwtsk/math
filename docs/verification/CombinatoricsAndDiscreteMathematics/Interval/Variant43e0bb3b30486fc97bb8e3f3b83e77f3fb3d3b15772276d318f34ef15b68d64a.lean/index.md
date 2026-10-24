# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3aa41a2058151f8e8f27abdeea17b7c9c975c867",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3aa41a2058151f8e8f27abdeea17b7c9c975c867`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/instlocallyfiniteorder--285e2339e0cc3b0d92669c14.md) | 31 | `declaration-track:285e2339e0cc3b0d92669c1447a835fc2902ebd4221d79bedc63215bf248e269` |
| 2 | `theorem` | [Icc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/icc-eq-finset-subtype--bc9c8e4d32844801fed5d7fb.md) | 33 | `result-track:bc9c8e4d32844801fed5d7fb0e67e29e6f02aa3c0da1df9ad225b5bb1421f447` |
| 3 | `theorem` | [Ico_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/ico-eq-finset-subtype--7c98770f435ec49311c94e37.md) | 36 | `result-track:7c98770f435ec49311c94e3765ba5854c442e8608e292ebf2e42fa4daf27046d` |
| 4 | `theorem` | [Ioc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/ioc-eq-finset-subtype--8c686626642d986e013eb190.md) | 39 | `result-track:8c686626642d986e013eb190060137872b1c35956ba9f86798ddacd006b52b96` |
| 5 | `theorem` | [Ioo_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/ioo-eq-finset-subtype--d4f3010f705b7263d75b7e28.md) | 42 | `result-track:d4f3010f705b7263d75b7e28f8ee5eb4c06bbc0c0a60dff654d2c986e669ca40` |
| 6 | `theorem` | [uIcc_eq_finset_subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/uicc-eq-finset-subtype--21655e3f688c1a9fd6e945ee.md) | 45 | `result-track:21655e3f688c1a9fd6e945eebf32a510f5bddfbfe923b678e29c726b4ff2d893` |
| 7 | `theorem` | [map_subtype_embedding_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/map-subtype-embedding-icc--41aeb2607140f19b88c86b15.md) | 47 | `result-track:41aeb2607140f19b88c86b1504d9bf4eff15b9979976b8a38eb46b105c13a5f2` |
| 8 | `theorem` | [map_subtype_embedding_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/map-subtype-embedding-ico--cc8ef1ef5496e77794565791.md) | 50 | `result-track:cc8ef1ef5496e77794565791ce6913163db7340923550d40003bad235ab9e109` |
| 9 | `theorem` | [map_subtype_embedding_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/map-subtype-embedding-ioc--1158edab1bdf40a170d40df3.md) | 53 | `result-track:1158edab1bdf40a170d40df35491899b267f094cc95f3b13f4ef95c66d080dfb` |
| 10 | `theorem` | [map_subtype_embedding_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/map-subtype-embedding-ioo--6121cc69556d2ccb4713b3c1.md) | 56 | `result-track:6121cc69556d2ccb4713b3c1a6a11c4642598859be943eeffc4c571b3b73fe19` |
| 11 | `theorem` | [map_subtype_embedding_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/map-subtype-embedding-uicc--d1f4e2e02e6f7e26c38f7a38.md) | 59 | `result-track:d1f4e2e02e6f7e26c38f7a38e8e631c11ee1307b4d56f72ebcf787e603f2bdd2` |
| 12 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/card-icc--68ee996a4427c59dc5548c51.md) | 63 | `result-track:68ee996a4427c59dc5548c516d48f9489087b9e8e613a5468d7bd1cf7b0f7793` |
| 13 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/card-ico--e5ed8a3d9ed8621b74b1b3f1.md) | 67 | `result-track:e5ed8a3d9ed8621b74b1b3f16c07d890dc7b4911dee3b64c0c82fd68e372ce76` |
| 14 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/card-ioc--c9328f5e427b9a12ce85301c.md) | 71 | `result-track:c9328f5e427b9a12ce85301c93f7c67f744ba43dc6e8a2ceccf9b0e106a10bb6` |
| 15 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/card-ioo--4bb66484a38f266243c9c73d.md) | 75 | `result-track:4bb66484a38f266243c9c73d99269dee6a7383ad1e0c2cb5b6244f9e679e3d4d` |
| 16 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/card-uicc--422fc3a6f03a0769994d942e.md) | 79 | `result-track:422fc3a6f03a0769994d942ed9413caf31e572d6a3a983aed2d8ea8e6b66a435` |
| 17 | `theorem` | [card_fintype_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/card-fintype-icc--beaff4b6e013397504a513d7.md) | 82 | `result-track:beaff4b6e013397504a513d7b93cc35d9ef5cffeb6c638e68fc4589e76e0028a` |
| 18 | `theorem` | [card_fintype_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/card-fintype-ico--4597d59478722400a3d923b8.md) | 85 | `result-track:4597d59478722400a3d923b82fd471f80dbfb60a90e9cf71e267d95be89610ba` |
| 19 | `theorem` | [card_fintype_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/card-fintype-ioc--7172a3f717b0e0c3820aeba6.md) | 88 | `result-track:7172a3f717b0e0c3820aeba632f4ef21a7f113dff9452d8aa075e06c1737ae8d` |
| 20 | `theorem` | [card_fintype_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/card-fintype-ioo--99fb6b6a82ad5257393099db.md) | 91 | `result-track:99fb6b6a82ad5257393099db0df843b72bb9c8eefb41c9d5403a825872a6d494` |
| 21 | `theorem` | [card_fintype_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant43e0bb3b30486fc97bb8e3f3b83e77f3fb3d3b15772276d318f34ef15b68d64a.lean/declarations/card-fintype-uicc--62933d3d74c7065fc357433f.md) | 94 | `result-track:62933d3d74c7065fc357433fb340f83cccb29f597eefec7fe627ef2b50839ea9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
