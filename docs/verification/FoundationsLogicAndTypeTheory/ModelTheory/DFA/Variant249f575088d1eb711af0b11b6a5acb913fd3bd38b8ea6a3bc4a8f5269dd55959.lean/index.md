# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.DFA.Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddce8cb42ee91c7093d0ee6b461bc77f5456189c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddce8cb42ee91c7093d0ee6b461bc77f5456189c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Language` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Small` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pigeonhole` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/dfa--9fd859c224b7490c95cb0e18.md) | 61 | `declaration-track:9fd859c224b7490c95cb0e18dca2028a819ebfa76daa85476481efecddbb068f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/instance--df3bb7a79d07c32da900cbe4.md) | 73 | `declaration-track:df3bb7a79d07c32da900cbe427500b50887f6f034da044bea46e31ce0bc6121c` |
| 3 | `def` | [evalFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/evalfrom--2088014239adcb9214d7befb.md) | 77 | `declaration-track:2088014239adcb9214d7befb94ed17c85dbe6c94c4732b5788012eed0dd4a2a1` |
| 4 | `theorem` | [evalFrom_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/evalfrom-nil--8b1cda2067a74298e17d87c0.md) | 81 | `result-track:8b1cda2067a74298e17d87c0e349daaafcf4b6a02acd85219683de7f00e4d52e` |
| 5 | `theorem` | [evalFrom_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/evalfrom-singleton--5c71fa61ecce7e5a92af172f.md) | 85 | `result-track:5c71fa61ecce7e5a92af172f3fd439048dd46dd6697697944e81eb596c600af9` |
| 6 | `theorem` | [evalFrom_append_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/evalfrom-append-singleton--de19d1ce7c2475c46719d394.md) | 89 | `result-track:de19d1ce7c2475c46719d394dc182214252d86b71a041c4e3eb94d060487ea34` |
| 7 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/eval--20a882f43a7c8459e3d4573a.md) | 94 | `declaration-track:20a882f43a7c8459e3d4573ab08fde62ea22f063d9b2300354c438eb29a2605a` |
| 8 | `theorem` | [eval_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/eval-nil--e081cb71fc2b9ae0e7a426af.md) | 98 | `result-track:e081cb71fc2b9ae0e7a426af9ec1596fdbb6ded4ce32b9f83c9fc9a7f561a960` |
| 9 | `theorem` | [eval_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/eval-singleton--785043678d5be4f6605d8ff5.md) | 102 | `result-track:785043678d5be4f6605d8ff5019c0c16fa262e972625b7e0f7cf84e64cf6cd35` |
| 10 | `theorem` | [eval_append_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/eval-append-singleton--803e4c3aa3c14bee73e40de8.md) | 106 | `result-track:803e4c3aa3c14bee73e40de86ec671e5d4a7760309061e4d6afafbd865f24ea3` |
| 11 | `theorem` | [evalFrom_of_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/evalfrom-of-append--896834af6867b036a42b841d.md) | 109 | `result-track:896834af6867b036a42b841da29856110082cb8c92b9d97fa1da7e1414662280` |
| 12 | `def` | [acceptsFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/acceptsfrom--9412dab6c683453be52e5fd4.md) | 116 | `declaration-track:9412dab6c683453be52e5fd469e88990f24b1b6eb81ffad01ee7ccbcb71485f3` |
| 13 | `theorem` | [mem_acceptsFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/mem-acceptsfrom--79479882d417c6e38b6593f5.md) | 118 | `result-track:79479882d417c6e38b6593f5bcee6ba31d426032df340d5894bdd103412a34d5` |
| 14 | `def` | [accepts](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/accepts--f72a88318ecbf2d7b062f71b.md) | 122 | `declaration-track:f72a88318ecbf2d7b062f71b0a4eae7dc8e40321b156f66430423043cf5983e6` |
| 15 | `theorem` | [mem_accepts](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/mem-accepts--3162f8bbaccbea1ee44e8234.md) | 124 | `result-track:3162f8bbaccbea1ee44e823472b37c697b728233e95753f28bb4f696fbf6c336` |
| 16 | `theorem` | [evalFrom_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/evalfrom-split--03fc6e1ae7fdddf41ef04ac6.md) | 126 | `result-track:03fc6e1ae7fdddf41ef04ac6b1f0d87621a7308cef662056032fde83c14b3088` |
| 17 | `theorem` | [evalFrom_of_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/evalfrom-of-pow--feff47677879b39ccaf99940.md) | 161 | `result-track:feff47677879b39ccaf99940f86f843b9c96977760d0d654673e5a01f5c7fb92` |
| 18 | `theorem` | [pumping_lemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/pumping-lemma--66d4e9b2341bdb7c5d72f15e.md) | 174 | `result-track:66d4e9b2341bdb7c5d72f15edd04a337d352ba57fc639e525d8340c1d39fbdf8` |
| 19 | `def` | [comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/comap--224b39828ce05dc58a5b48b3.md) | 200 | `declaration-track:224b39828ce05dc58a5b48b30d009f755ed07cad3e68e10b9b7372034c1c67d0` |
| 20 | `theorem` | [comap_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/comap-id--d861447dca59c2f2a70353e3.md) | 206 | `result-track:d861447dca59c2f2a70353e36586710a65449737abcb790ed3c2ba9bbdd8189a` |
| 21 | `theorem` | [evalFrom_comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/evalfrom-comap--05d78f6e03d311c209a8de25.md) | 209 | `result-track:05d78f6e03d311c209a8de2589b1fdf2bccfb46b187afd7924bea6aacad68211` |
| 22 | `theorem` | [eval_comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/eval-comap--df83d52a7528371e01e9ec5a.md) | 216 | `result-track:df83d52a7528371e01e9ec5a14aa533e34e33baa2174bea6b6513b42873b8fd9` |
| 23 | `theorem` | [accepts_comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/accepts-comap--8f359a7340f0e0a13882ceef.md) | 220 | `result-track:8f359a7340f0e0a13882ceefa937f2bcc21935ae7b5f39a2c01fd9b58e2fb9e6` |
| 24 | `def` | [reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/reindex--0f9f2c36757305eaf99e38e8.md) | 229 | `declaration-track:0f9f2c36757305eaf99e38e87ef71a2dae5dba7a85770e1d24d50d64439a83ff` |
| 25 | `theorem` | [reindex_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/reindex-refl--c276290999a3f6b5bd29a3c5.md) | 244 | `result-track:c276290999a3f6b5bd29a3c59e28a18e8a5e1cc381c5514b82d38698a40b5d52` |
| 26 | `theorem` | [symm_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/symm-reindex--d4f36a67f5c42896ab5d6881.md) | 247 | `result-track:d4f36a67f5c42896ab5d6881ad075c64ac0329f70d5c1d6f7a29320aabf5b7e0` |
| 27 | `theorem` | [evalFrom_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/evalfrom-reindex--bb21231c5ea147578b629cad.md) | 250 | `result-track:bb21231c5ea147578b629cad07d09fcaef24ba19d7abda31b8f80c2b61f61ade` |
| 28 | `theorem` | [eval_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/eval-reindex--1133ed5524b9e5d90eb3739a.md) | 257 | `result-track:1133ed5524b9e5d90eb3739a0618a48b09f36b38bdf01ba87faa38770d74382e` |
| 29 | `theorem` | [accepts_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/accepts-reindex--29a42bb97910bcb216e276ca.md) | 261 | `result-track:29a42bb97910bcb216e276ca537ecc58dc06a687f1373d03b271dece4e4deaf3` |
| 30 | `theorem` | [comap_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/comap-reindex--b2a1464e7fb6c325a2f70a13.md) | 265 | `result-track:b2a1464e7fb6c325a2f70a13f9656cfcc1faf6dff4cb0193c13371537fd555c3` |
| 31 | `def` | [Language.IsRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/language-isregular--64f7bef98f1b4108be1caad4.md) | 274 | `declaration-track:64f7bef98f1b4108be1caad4352d74eaeef56812465bb2927517c4c6d0aa6dbd` |
| 32 | `lemma` | [Language.isRegular_iff.helper.](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/language-isregular-iff-helper--6159f8eaa9583632cc963c68.md) | 278 | `result-track:6159f8eaa9583632cc963c682c7826e20897e52fd155c2344913547397e83abf` |
| 33 | `theorem` | [Language.isRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Variant249f575088d1eb711af0b11b6a5acb913fd3bd38b8ea6a3bc4a8f5269dd55959.lean/declarations/language-isregular-iff--33b8d2886c9ad1ba03c689f5.md) | 291 | `result-track:33b8d2886c9ad1ba03c689f5b977d9427de12c103f63220616ce20b3c31a368c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
