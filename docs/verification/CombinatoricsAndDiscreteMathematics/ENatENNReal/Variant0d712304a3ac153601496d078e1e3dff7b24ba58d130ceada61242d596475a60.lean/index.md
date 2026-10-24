# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ENatENNReal.Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "742e854a9ec5dd8f5593988049a287281d3a4f11",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `742e854a9ec5dd8f5593988049a287281d3a4f11`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENNReal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toENNReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal--9ec0fece9bb9f3d438012c0c.md) | 34 | `declaration-track:9ec0fece9bb9f3d438012c0c5a0de0dce2907a334211a27e6666234abc752fd5` |
| 2 | `instance` | [hasCoeENNReal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/hascoeennreal--3a4b4120cf0dc11cd69c3c88.md) | 36 | `declaration-track:3a4b4120cf0dc11cd69c3c88b7808b67de4d2de365df97875de321f3fc974e0f` |
| 3 | `theorem` | [map_coe_nnreal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/map-coe-nnreal--a7541661b6b2af66deb9a081.md) | 39 | `result-track:a7541661b6b2af66deb9a0818650dbcd9bdf14cb39bc07e50f49a17eaad66f22` |
| 4 | `def` | [toENNRealOrderEmbedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennrealorderembedding--06a158f457297162df0adbe1.md) | 44 | `declaration-track:06a158f457297162df0adbe13c733906d34f0f3a0b5485f6c00e2972799ce4b5` |
| 5 | `def` | [toENNRealRingHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennrealringhom--8ff8a80ea077b8fbf32cf861.md) | 49 | `declaration-track:8ff8a80ea077b8fbf32cf861353e2b50ae729ca2d61796539b02b1f2c6b62128` |
| 6 | `theorem` | [toENNReal_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-top--df60478bec5925a47539f4c9.md) | 53 | `result-track:df60478bec5925a47539f4c989d03245deded4b686e88b7e42947d990f6dcbd4` |
| 7 | `theorem` | [toENNReal_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-coe--37e0bd6f9e983fb9946111cd.md) | 57 | `result-track:37e0bd6f9e983fb9946111cddfb21d55e70d11ddbcd5c6d3be02e09d48f6f176` |
| 8 | `theorem` | [toENNReal_ofNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-ofnat--7e6410100668dc1a9e108683.md) | 61 | `result-track:7e6410100668dc1a9e108683a04b25cfc5cfd7626fa2b1115f33a7bf514aee79` |
| 9 | `theorem` | [toENNReal_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-inj--d0bc557d7f89f4201fe8bf67.md) | 65 | `result-track:d0bc557d7f89f4201fe8bf671e876192fa4f23e0f9c372f9960f63cdc398c8fd` |
| 10 | `lemma` | [toENNReal_eq_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-eq-top--f8dc68d93116320b3a51d8da.md) | 70 | `result-track:f8dc68d93116320b3a51d8da871fdba80cf0ee210ea171d44eb37c0ebc37bfe4` |
| 11 | `lemma` | [toENNReal_ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-ne-top--04ec29912c944812c3379d8b.md) | 71 | `result-track:04ec29912c944812c3379d8be305ee89364ae3334a799af35da0e117a80a94fd` |
| 12 | `theorem` | [toENNReal_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-le--bc9ef214ce834d0a5709521d.md) | 74 | `result-track:bc9ef214ce834d0a5709521d8ebb19fad42701c28c23ef5b7307cae0de208fb2` |
| 13 | `theorem` | [toENNReal_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-lt--7dd88b9f3a737d5670714be3.md) | 78 | `result-track:7dd88b9f3a737d5670714be3fb4c838da7b715c7bc6ffe2106f9e7b93524d21b` |
| 14 | `lemma` | [toENNReal_lt_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-lt-top--b5a68d5d667beed54a43e926.md) | 82 | `result-track:b5a68d5d667beed54a43e926cc50a4da83e04610f5f102fad7dc7fff48b8fd6c` |
| 15 | `theorem` | [toENNReal_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-mono--a33ebede36e810489db0ffcf.md) | 85 | `result-track:a33ebede36e810489db0ffcf93259834a03d7a5c7bcdb09f8216955c5e6030fb` |
| 16 | `theorem` | [toENNReal_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-strictmono--451939af172737cdf238f925.md) | 89 | `result-track:451939af172737cdf238f92581f3d332f5c8f63be7b1bcc7effd6efe05ed7a4b` |
| 17 | `theorem` | [toENNReal_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-zero--a46dc63c9795e2f2b647c7b4.md) | 93 | `result-track:a46dc63c9795e2f2b647c7b45cb973abc12d9c10c6c9ea6ad1c596f4e2f12f01` |
| 18 | `theorem` | [toENNReal_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-add--9b6d6359ddb973c308ce3474.md) | 97 | `result-track:9b6d6359ddb973c308ce34748268c2918dfa4ce9086c919690e0fb7e69d2eadf` |
| 19 | `theorem` | [toENNReal_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-one--62a9c75092972d4a85ef4f68.md) | 101 | `result-track:62a9c75092972d4a85ef4f68fad38d06f7a67084d8629ae843337266ea6e9ea8` |
| 20 | `theorem` | [toENNReal_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-mul--bb14958d24d8ae5e9dd40fef.md) | 105 | `result-track:bb14958d24d8ae5e9dd40fef5f788e07aaec9354a7f991658b8b3a6167036cc7` |
| 21 | `theorem` | [toENNReal_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-pow--81cfe2b91bcc0d4fe7e57e85.md) | 109 | `result-track:81cfe2b91bcc0d4fe7e57e853740225622c3f689e30bec99d926955ff008a482` |
| 22 | `theorem` | [toENNReal_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-min--ecddab971f67045d64c2b07a.md) | 113 | `result-track:ecddab971f67045d64c2b07ae579eff5af75e0a42b67db9e4e837a77b5540a83` |
| 23 | `theorem` | [toENNReal_max](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-max--4d1dd3a5dbe142f6380c9704.md) | 117 | `result-track:4d1dd3a5dbe142f6380c9704793cbe48e7207e41b82b2c2b1cd54a85f0615d51` |
| 24 | `theorem` | [toENNReal_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ENatENNReal/Variant0d712304a3ac153601496d078e1e3dff7b24ba58d130ceada61242d596475a60.lean/declarations/toennreal-sub--53e28e629a0b16536c889ffd.md) | 121 | `result-track:53e28e629a0b16536c889ffd6d15a1533fdbb4674ead95d460639c77d881db31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
