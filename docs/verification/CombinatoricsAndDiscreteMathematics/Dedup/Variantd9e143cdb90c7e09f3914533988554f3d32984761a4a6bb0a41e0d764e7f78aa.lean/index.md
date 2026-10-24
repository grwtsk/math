# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Dedup.Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87d09da43e59d079be7abd1fd1b87eba8de7c059",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87d09da43e59d079be7abd1fd1b87eba8de7c059`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Nodup` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup--1ec9dc6217658cd7cd0d4493.md) | 25 | `declaration-track:1ec9dc6217658cd7cd0d44931cca3c655391c7eaf3f5e4663893d29602470287` |
| 2 | `theorem` | [coe_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/coe-dedup--cb96dec47a960395f6c79d08.md) | 30 | `result-track:cb96dec47a960395f6c79d08185c906098f1722c4f511620898e1b29bd672f4f` |
| 3 | `theorem` | [dedup_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-zero--a45d696352e83395c182faaf.md) | 35 | `result-track:a45d696352e83395c182faafce81e29b29f73e771a972c80a1d5979be746738a` |
| 4 | `theorem` | [mem_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/mem-dedup--ae4f71c526605e0d56d44236.md) | 40 | `result-track:ae4f71c526605e0d56d44236ef80a083447fd2e31ddb99fb4d39ccdaa76a0ffd` |
| 5 | `theorem` | [dedup_cons_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-cons-of-mem--e7e651ae45a2d30b29e423a1.md) | 45 | `result-track:e7e651ae45a2d30b29e423a111197534bd5047f577cc25e617befe0397b72004` |
| 6 | `theorem` | [dedup_cons_of_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-cons-of-not-mem--1436ff369ece9a80a811cc64.md) | 50 | `result-track:1436ff369ece9a80a811cc64ab7b0a4c555a0e2345dddbac482c4ff6aefa4889` |
| 7 | `theorem` | [dedup_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-le--20ca2acb08dcc8056a09237c.md) | 54 | `result-track:20ca2acb08dcc8056a09237ca070820b828bd55baf4ea10da7fc513f5f7bd355` |
| 8 | `theorem` | [dedup_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-subset--d4ad18278a53eea435b536bc.md) | 58 | `result-track:d4ad18278a53eea435b536bc0c99ca5ac6096ab89d4fc1c63743997a700c09ee` |
| 9 | `theorem` | [subset_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/subset-dedup--4104eb2048adedd7e580e2b5.md) | 62 | `result-track:4104eb2048adedd7e580e2b5a7663bbe8fc586a0621d146c9f17fcca40ff6fc3` |
| 10 | `theorem` | [dedup_subset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-subset--598fb9a8223c3792f694dde9.md) | 66 | `result-track:598fb9a8223c3792f694dde9b3a8e5cda61d035e0d487db2f7ca697ca6477407` |
| 11 | `theorem` | [subset_dedup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/subset-dedup--e3ee70bc77da494c2de8a699.md) | 71 | `result-track:e3ee70bc77da494c2de8a699634772eeee40279bd27c6cf9c91bc237df531482` |
| 12 | `theorem` | [nodup_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/nodup-dedup--8f11e5048fec3609436ffaed.md) | 76 | `result-track:8f11e5048fec3609436ffaed81baa16f0055124857c0b074805b9687fba1f6f9` |
| 13 | `theorem` | [dedup_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-eq-self--eab7a0bbcc1ccf8a837dbaec.md) | 80 | `result-track:eab7a0bbcc1ccf8a837dbaec33ddbb5b250469b807bec2163de4cd79f0638cde` |
| 14 | `theorem` | [count_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/count-dedup--683650e325dcc51c5728b96b.md) | 87 | `result-track:683650e325dcc51c5728b96b48e78121d3c9a1745648844984078bfdd3d4ff3a` |
| 15 | `theorem` | [dedup_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-idempotent--b3b001af3ad308d6aee85c55.md) | 94 | `result-track:b3b001af3ad308d6aee85c5556bce2552fbc12adbb18ff6114241f55705f0e96` |
| 16 | `theorem` | [dedup_bind_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-bind-dedup--f85c4fd183b5abbf567b0641.md) | 99 | `result-track:f85c4fd183b5abbf567b0641bb532adb6d69d61dee70b0eb7afd34fe6a0a83ec` |
| 17 | `theorem` | [dedup_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-eq-zero--00fb71ac1fa19791c1451d59.md) | 108 | `result-track:00fb71ac1fa19791c1451d59f0a733d9bb4c45fdf11ce775395415fc398142a4` |
| 18 | `theorem` | [dedup_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-singleton--d30aad95b3397c98ba178eac.md) | 113 | `result-track:d30aad95b3397c98ba178eac26b4bb689c9316cb6c6603e130a4f31a98325add` |
| 19 | `theorem` | [le_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/le-dedup--a1f345618bedcddcf264e49c.md) | 117 | `result-track:a1f345618bedcddcf264e49c9fbde2fff5722d1ed5978b80766ce8caf72eba0e` |
| 20 | `theorem` | [le_dedup_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/le-dedup-self--1d332a009cd4491df7ab4587.md) | 122 | `result-track:1d332a009cd4491df7ab45876f53681e2c5ac395d40eb151cd531251160a4371` |
| 21 | `theorem` | [dedup_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-ext--e54b1dfa7447c7ceab3e5bef.md) | 126 | `result-track:e54b1dfa7447c7ceab3e5bef280307308106e528d5e3d93b5b1b13b82dbc8d05` |
| 22 | `theorem` | [dedup_map_dedup_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-map-dedup-eq--cf140ea683e4550ba8efe1fc.md) | 130 | `result-track:cf140ea683e4550ba8efe1fc65ddb7f380163564c88aaff6b75e083022119814` |
| 23 | `theorem` | [dedup_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/dedup-nsmul--d71a3680d3d99a89ea9698a2.md) | 136 | `result-track:d71a3680d3d99a89ea9698a2aa6affa43d92ece40e57ae3bb6219f5075aee1b2` |
| 24 | `theorem` | [Nodup.le_dedup_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/nodup-le-dedup-iff-le--b4e673a238e83e01a6b8d0ff.md) | 141 | `result-track:b4e673a238e83e01a6b8d0ffdf59168b568fd91a50f7a32091261b07d165b819` |
| 25 | `theorem` | [Multiset.Nodup.le_nsmul_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantd9e143cdb90c7e09f3914533988554f3d32984761a4a6bb0a41e0d764e7f78aa.lean/declarations/multiset-nodup-le-nsmul-iff-le--cdcf7e3824c0e0a92fc35beb.md) | 147 | `result-track:cdcf7e3824c0e0a92fc35bebb6fd07b041f4abba7a8c686ba50f7ba6006911c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
