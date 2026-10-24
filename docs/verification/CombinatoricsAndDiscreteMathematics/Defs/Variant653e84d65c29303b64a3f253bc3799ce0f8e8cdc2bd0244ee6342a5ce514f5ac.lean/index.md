# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13701ce6afc1c495b0257d6bd73616a8c77b9704",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13701ce6afc1c495b0257d6bd73616a8c77b9704`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod--270ece9c0f473fac9f903a39.md) | 51 | `declaration-track:270ece9c0f473fac9f903a39323c60c7b40f741bc169ea130283aa12cec16a23` |
| 2 | `theorem` | [prod_eq_foldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-eq-foldr--a45a6885548495d045341b2e.md) | 55 | `result-track:a45a6885548495d045341b2e601bee1aa124a560ee43b720bda2abfd743d98a9` |
| 3 | `theorem` | [prod_eq_foldl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-eq-foldl--cc220d45826066a2a55d47ff.md) | 60 | `result-track:cc220d45826066a2a55d47ff739f7297540aafd8a0206f0ca793382fa63bbc81` |
| 4 | `theorem` | [prod_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-coe--4117900fd052475eb7c46e81.md) | 65 | `result-track:4117900fd052475eb7c46e814bd06553ea8c40d0abb92fb87165fd2e7c384e39` |
| 5 | `theorem` | [prod_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-tolist--7c20b5af51453cd63c75e665.md) | 68 | `result-track:7c20b5af51453cd63c75e665fd72f5587cb480f0e65d78329f68cecbd6dfa741` |
| 6 | `theorem` | [prod_map_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-map-tolist--e82c76e140e94103f52c9ae6.md) | 73 | `result-track:e82c76e140e94103f52c9ae652b6ca6669e41d423742dc7530c29a44fd58eb56` |
| 7 | `theorem` | [prod_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-zero--1fe3a26c14c66e25f027273a.md) | 77 | `result-track:1fe3a26c14c66e25f027273a694ae1a0d024bea283b2e9c458778ae620caaff3` |
| 8 | `theorem` | [prod_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-cons--5fb630cd02d214c6023471dc.md) | 81 | `result-track:5fb630cd02d214c6023471dccf94773873d6ee54b1f071eb624a5d23d31010f8` |
| 9 | `theorem` | [prod_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-singleton--3488a0a12dbe89bdf785b6c6.md) | 85 | `result-track:3488a0a12dbe89bdf785b6c68d685e6c7e9db1286002ea3fa006f0dd833772f0` |
| 10 | `theorem` | [prod_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-pair--5a818e7fe29c2ea60c2af76f.md) | 89 | `result-track:5a818e7fe29c2ea60c2af76f2d216f5b435f1ffccef9cc552042427984c2b2b3` |
| 11 | `theorem` | [prod_replicate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-replicate--ad9388a9441007641f8b0c0b.md) | 93 | `result-track:ad9388a9441007641f8b0c0b0f1f0b5cdb073ec7b3a4c21b9c85a1d42d9ba4dd` |
| 12 | `theorem` | [pow_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/pow-count--63b2f9ca538080a9df2e1fdb.md) | 97 | `result-track:63b2f9ca538080a9df2e1fdb70a4871eb96be7aea62388d79b36e0500cab2f85` |
| 13 | `theorem` | [prod_hom_rel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-hom-rel--e3981a672fd94657263bcc64.md) | 101 | `result-track:e3981a672fd94657263bcc642750bda661e519d2c3ca640023853a8e16f84dd0` |
| 14 | `theorem` | [prod_map_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-map-one--ce83d44a0539a42bd6082e48.md) | 108 | `result-track:ce83d44a0539a42bd6082e48b75141eb652e56aae6ee6b7d3c796df0c1b5ed03` |
| 15 | `theorem` | [prod_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-induction--e5ebdcbc085f687b5ac1df38.md) | 112 | `result-track:e5ebdcbc085f687b5ac1df3860a8cecbbba1c8a57a8b8aa3facb1bf7390808fb` |
| 16 | `theorem` | [prod_induction_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant653e84d65c29303b64a3f253bc3799ce0f8e8cdc2bd0244ee6342a5ce514f5ac.lean/declarations/prod-induction-nonempty--95671b448c8057b4b3ab3416.md) | 118 | `result-track:95671b448c8057b4b3ab3416dfd4fcc9ef3464c3c498ce1463d02b2c2e7db6b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
