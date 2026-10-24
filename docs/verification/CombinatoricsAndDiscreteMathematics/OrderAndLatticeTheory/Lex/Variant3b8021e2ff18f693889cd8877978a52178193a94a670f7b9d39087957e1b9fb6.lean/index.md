# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11bf78dfdb62d745f1a344c37779d2b08ef0a277",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11bf78dfdb62d745f1a344c37779d2b08ef0a277`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Lex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex--aa7c3dccbb2a24c2d9047cb5.md) | 30 | `declaration-track:aa7c3dccbb2a24c2d9047cb5759ddb795c791ae065c9ac4e87847a49cea81f53` |
| 2 | `theorem` | [_root_.Pi.lex_eq_finsupp_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/root-pi-lex-eq-finsupp-lex--578acb382d8e9693710a60d3.md) | 33 | `result-track:578acb382d8e9693710a60d3c74c783030258dadd97889d5fb28e6d61bc45475` |
| 3 | `theorem` | [lex_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-def--3c221c92bb05d5c72eb59f5c.md) | 37 | `result-track:3c221c92bb05d5c72eb59f5c96fa813f672c4fac20f0202f3f987c8e3edcad99` |
| 4 | `theorem` | [lex_eq_invImage_dfinsupp_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-eq-invimage-dfinsupp-lex--e02dc6a7ab8449c0cf3d1d55.md) | 41 | `result-track:e02dc6a7ab8449c0cf3d1d55dffbb8894f927d80b319d6045c9681372af85801` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/instance--2de53720a94184fb76dd768a.md) | 45 | `declaration-track:2de53720a94184fb76dd768ab9ebaaf51be547efff823f2dc20a21be1565169f` |
| 6 | `theorem` | [lex_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-lt-iff--8ae916402a3df02969561864.md) | 48 | `result-track:8ae916402a3df02969561864ebf0d6f12a4b3f121144e611d1d7ce8a3d544412` |
| 7 | `theorem` | [lex_lt_iff_of_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-lt-iff-of-unique--41698935f441f04461742b82.md) | 52 | `result-track:41698935f441f04461742b82b9b923e6a65314aaafecec1a3f83f021dc7ff199` |
| 8 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-lt-of-lt-of-preorder--2fcd3e22df3a3f4fcabe3cab.md) | 58 | `result-track:2fcd3e22df3a3f4fcabe3cabf1d7c1e074e751e507225d47dbac2791b079fc4e` |
| 9 | `theorem` | [lex_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-lt-of-lt--7db3762956acf90f43385fb0.md) | 62 | `result-track:7db3762956acf90f43385fb0bce46f968a0113385144ce327c507caf9bf1b9d5` |
| 10 | `instance` | [Lex.isStrictOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-isstrictorder--b25c73565c09a01b263283c6.md) | 66 | `declaration-track:b25c73565c09a01b263283c6b1c6c4d2c3fa0425f5de47042ab9bfd5458709d2` |
| 11 | `instance` | [Lex.partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-partialorder--228e94dcdfd552ff89a5d8e4.md) | 75 | `declaration-track:228e94dcdfd552ff89a5d8e4fc5bb33eb37ed7e383af42e7cdd45d963d9ef431` |
| 12 | `instance` | [Lex.linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-linearorder--b5db1411d1df84a98a93f677.md) | 82 | `declaration-track:b5db1411d1df84a98a93f677a7f0456474fb2f26e84f980ffa59f722f7049252` |
| 13 | `theorem` | [Lex.single_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-single-strictanti--dda66f1dcf4136afd224897f.md) | 87 | `result-track:dda66f1dcf4136afd224897f67326e8f5091cf9096d88390d1362f74bbb0547f` |
| 14 | `theorem` | [Lex.single_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-single-lt-iff--c0a4820aa7322d943450b609.md) | 97 | `result-track:c0a4820aa7322d943450b609e68c6d5190ff1259501fb943f0d3d84ee4722d51` |
| 15 | `theorem` | [Lex.single_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-single-le-iff--ca3fb22fea16c94ff8b18e34.md) | 100 | `result-track:ca3fb22fea16c94ff8b18e34baae3d93a6cd51fe3d2fa6a4cfb6da938e0c3e24` |
| 16 | `theorem` | [Lex.single_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-single-antitone--788dbddf9f56d8cec8057dd8.md) | 103 | `result-track:788dbddf9f56d8cec8057dd8b9628ed4be5ad88691fc1a191db41781da5c2d1b` |
| 17 | `theorem` | [toLex_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/tolex-monotone--1c5bb4c7cb45d046217f690d.md) | 108 | `result-track:1c5bb4c7cb45d046217f690d03e8a6c571d9d94c081dbe3818b772eab03997b2` |
| 18 | `theorem` | [lt_of_forall_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lt-of-forall-lt-of-lt--7cf3fcb3d5bc620d75f3a18c.md) | 111 | `result-track:7cf3fcb3d5bc620d75f3a18c4c49ba840821704c93b8edf2dd6f4662ef97d127` |
| 19 | `theorem` | [lex_le_iff_of_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-le-iff-of-unique--73d16dedaae9a199f0301ad2.md) | 115 | `result-track:73d16dedaae9a199f0301ad2f95d8e16d56328731ed7e54a251f35a8817f72da` |
| 20 | `instance` | [Lex.addLeftStrictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-addleftstrictmono--7859991bc7feaeba278333d6.md) | 140 | `declaration-track:7859991bc7feaeba278333d66d8ee8129de2d46bc478b60eead3d97f59ae1f26` |
| 21 | `instance` | [Lex.addLeftMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-addleftmono--1ea5f33e000423a4941396f9.md) | 143 | `declaration-track:1ea5f33e000423a4941396f984454e321d044b3728d6e3244d69d126dbab121f` |
| 22 | `instance` | [Lex.addRightStrictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-addrightstrictmono--55d1491498e7437c5a53849c.md) | 152 | `declaration-track:55d1491498e7437c5a53849c25a3ce06399ca1c4790e9f3c1160dbf2f2a01511` |
| 23 | `instance` | [Lex.addRightMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-addrightmono--41161e23431263fc5b910f3a.md) | 156 | `declaration-track:41161e23431263fc5b910f3a0b29253658f10aa2f691127bf13a6f441d0a2a23` |
| 24 | `instance` | [Lex.orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-orderbot--c1efc2422ea58028c90818ab.md) | 167 | `declaration-track:c1efc2422ea58028c90818ab97a01158aecca019a8c543bf5ce340f98d08b04a` |
| 25 | `instance` | [Lex.isOrderedCancelAddMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant3b8021e2ff18f693889cd8877978a52178193a94a670f7b9d39087957e1b9fb6.lean/declarations/lex-isorderedcanceladdmonoid--9f59a69dd60e73fa858c1a65.md) | 172 | `declaration-track:9f59a69dd60e73fa858c1a65e13ce9b12333b2ba3d85398dad6609c0c6aff15e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
