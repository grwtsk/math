# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Erase.Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00d4cb969cacc90684ada6df7f855ec92e1ddec8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00d4cb969cacc90684ada6df7f855ec92e1ddec8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Filter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/erase--60db4f933759836a94e0a00a.md) | 45 | `declaration-track:60db4f933759836a94e0a00a5a95e27e6f33269a2da5d45f01abf106f1a9b7a8` |
| 2 | `theorem` | [erase_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/erase-val--ed7d1ab005a99df9b5a64d45.md) | 49 | `result-track:ed7d1ab005a99df9b5a64d45580f3b4fcef743a2bac267b501f04f831a14891a` |
| 3 | `theorem` | [mem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/mem-erase--094fccd896d11363dba56f08.md) | 53 | `result-track:094fccd896d11363dba56f0853f19e0164c1bf53ea22de27b6f1cd6131dda78c` |
| 4 | `theorem` | [notMem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/notmem-erase--49621787c45a7ce5a5dcd36c.md) | 56 | `result-track:49621787c45a7ce5a5dcd36ca761e48e53ed414c3feee44a884b75ce3d5eef4e` |
| 5 | `theorem` | [ne_of_mem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/ne-of-mem-erase--e9431e768348583de91eaea2.md) | 61 | `result-track:e9431e768348583de91eaea2f693083426d8adc9f3ed70cbee4e8e4489bf47dd` |
| 6 | `theorem` | [mem_of_mem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/mem-of-mem-erase--7542e34b2b53dd9ce0efe46a.md) | 63 | `result-track:7542e34b2b53dd9ce0efe46ab8e02a2311fb52d9c89bb051376c44070a14f12f` |
| 7 | `theorem` | [mem_erase_of_ne_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/mem-erase-of-ne-of-mem--7cc1e9c0895ddaa168516a1b.md) | 66 | `result-track:7cc1e9c0895ddaa168516a1b4ae69289ef739f937651a0a38695bcb7d6739141` |
| 8 | `theorem` | [eq_of_mem_of_notMem_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/eq-of-mem-of-notmem-erase--55f35ba90ffefaca0671636f.md) | 70 | `result-track:55f35ba90ffefaca0671636f4bf01028404702009735dc228692cd8b793465d7` |
| 9 | `theorem` | [erase_eq_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/erase-eq-of-notmem--7ecf41e1dbb015b756865b24.md) | 77 | `result-track:7ecf41e1dbb015b756865b24c805ec933200e8d75bce3cf77d578264f0e31cc4` |
| 10 | `theorem` | [erase_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/erase-eq-self--c2216898d06acc9224fb839f.md) | 83 | `result-track:c2216898d06acc9224fb839fcc8df937b989caa51613d658dfe733ac8316b710` |
| 11 | `theorem` | [erase_ne_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/erase-ne-self--58b71cfb46e1ca3dbcbf9f2c.md) | 86 | `result-track:58b71cfb46e1ca3dbcbf9f2c07dd41696dd1665d98fc689a8dcb7206f4da24b6` |
| 12 | `theorem` | [erase_subset_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/erase-subset-erase--a74cd134b26ace60509bbae2.md) | 89 | `result-track:a74cd134b26ace60509bbae2d55dd68197d12070a162ca9361305c78db125c0b` |
| 13 | `theorem` | [erase_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/erase-subset--ea01e697fcb86755f04090ed.md) | 92 | `result-track:ea01e697fcb86755f04090ed9690363d7e73bc5dbc9de076fb3dc480d120f0d0` |
| 14 | `theorem` | [subset_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/subset-erase--e13075b8be3537640121b1e7.md) | 95 | `result-track:e13075b8be3537640121b1e73253a41b97850f5257f33ae1682dd7ddce1e7f42` |
| 15 | `theorem` | [coe_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/coe-erase--0aee7b9b59f52242e2fe1340.md) | 100 | `result-track:0aee7b9b59f52242e2fe134002dc2dd4cc86832206dbc3583cf434238f852990` |
| 16 | `theorem` | [erase_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/erase-idem--1544eda67ca73740ba787b48.md) | 103 | `result-track:1544eda67ca73740ba787b4868e24c4983d18ae254c27b7e098190640b7d5e9f` |
| 17 | `theorem` | [erase_right_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/erase-right-comm--fea4e9f7839ff9a5abb3972c.md) | 105 | `result-track:fea4e9f7839ff9a5abb3972ccc6ba91b384e79581261c73feb5b22f8ee616207` |
| 18 | `theorem` | [erase_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/erase-inj--07c572edff9e860194c47200.md) | 110 | `result-track:07c572edff9e860194c47200508403f1a7ff0715367f4fffea430dfa24962b81` |
| 19 | `theorem` | [erase_injOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Erase/Variantc5202c7591d8649a1378b901657abbf491119b0cafd8667092742e434faecb31.lean/declarations/erase-injon--1082d155b0bc6cc636f56cdc.md) | 115 | `result-track:1082d155b0bc6cc636f56cdc29a0739c22d155af6da90853f598e441c845d1ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
