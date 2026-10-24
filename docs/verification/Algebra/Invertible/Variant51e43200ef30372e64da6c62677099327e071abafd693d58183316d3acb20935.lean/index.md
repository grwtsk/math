# Verification target: GRWTSK.Algebra.Invertible.Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21fe723083a096a9b7bbf21a2b3a1842ab8be580",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/index.md) · [Full source](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21fe723083a096a9b7bbf21a2b3a1842ab8be580`.

Source path: `GRWTSK/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertible--b83c7712e2464b29efa88874.md) | 87 | `declaration-track:b83c7712e2464b29efa888749863b68d22d98857d277d8d4747324336ba7ac21` |
| 2 | `theorem` | [invOf_mul_self'](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-mul-self--8d8b3e09a3567ef9112dc63d.md) | 102 | `result-track:8d8b3e09a3567ef9112dc63de009388b2bed0247641ccfab4c2d4b3bf3c9d71e` |
| 3 | `theorem` | [invOf_mul_self](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-mul-self--6a15a9b858c1f373ce5af3a7.md) | 105 | `result-track:6a15a9b858c1f373ce5af3a7a89b1acdbc461a3a03380704512b90d3a4d923e4` |
| 4 | `theorem` | [mul_invOf_self'](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-invof-self--95758ccdb7ed81afd8279e86.md) | 110 | `result-track:95758ccdb7ed81afd8279e86e48a2bb65046fb2a846c15443e6407ff15e23dcd` |
| 5 | `theorem` | [mul_invOf_self](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-invof-self--c0171b490a0c414b72c25a60.md) | 113 | `result-track:c0171b490a0c414b72c25a6094c5e74dfe1882740d91b1ac241797086a9629c4` |
| 6 | `theorem` | [invOf_mul_self_assoc'](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-mul-self-assoc--6e97519229f48d485b183d45.md) | 118 | `result-track:6e97519229f48d485b183d45e83e244601c2357f2af3b4c16743eec7f7b68140` |
| 7 | `theorem` | [invOf_mul_self_assoc](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-mul-self-assoc--b155cf953aa37dd12a861ea7.md) | 121 | `result-track:b155cf953aa37dd12a861ea719154b03ec647c395af88a94070ad511dfb17f5d` |
| 8 | `theorem` | [mul_invOf_self_assoc'](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-invof-self-assoc--07a7cd89b81893ccc7732088.md) | 126 | `result-track:07a7cd89b81893ccc773208800abc04e0c156d79d781a15d6dbe0255438b5dee` |
| 9 | `theorem` | [mul_invOf_self_assoc](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-invof-self-assoc--8763fe45b3bd97855c3a5986.md) | 129 | `result-track:8763fe45b3bd97855c3a598688512df85590e45bd66ebddbdb40261aa6ad927f` |
| 10 | `theorem` | [mul_invOf_mul_self_cancel'](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-invof-mul-self-cancel--68246fe57d12e518ba6048a3.md) | 134 | `result-track:68246fe57d12e518ba6048a335ddf91a80570aec2b8e59e1531e723215374e69` |
| 11 | `theorem` | [mul_invOf_mul_self_cancel](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-invof-mul-self-cancel--00fd57726db8065b5220dc2d.md) | 137 | `result-track:00fd57726db8065b5220dc2d4b7f97805030ea9245ffba3ffea61a70b9e19f41` |
| 12 | `theorem` | [mul_mul_invOf_self_cancel'](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-mul-invof-self-cancel--5d699be2f1207eab73db0d94.md) | 142 | `result-track:5d699be2f1207eab73db0d948199b97a9ee358037f86825405e27ba1595cca06` |
| 13 | `theorem` | [mul_mul_invOf_self_cancel](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-mul-invof-self-cancel--8f200b8ea142df385f27f6a1.md) | 145 | `result-track:8f200b8ea142df385f27f6a1753ecb3372bdc15841b67730c7a21c194c65f2ce` |
| 14 | `theorem` | [invOf_eq_right_inv](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-eq-right-inv--9708333f894b52a07016e9b9.md) | 149 | `result-track:9708333f894b52a07016e9b9e3fcf02a1a4574e229a7779670d024ef96486680` |
| 15 | `theorem` | [invOf_eq_left_inv](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-eq-left-inv--3df23001e5e3f8d21c67baec.md) | 153 | `result-track:3df23001e5e3f8d21c67baecf0ea34c178e82da9dcdce0d86eb462653faa05f3` |
| 16 | `theorem` | [invertible_unique](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertible-unique--d0eca14e23ad9c9d9e800a0d.md) | 157 | `result-track:d0eca14e23ad9c9d9e800a0df9d888e967c4837a8f64fae63a577075b1062c7a` |
| 17 | `instance` | [Invertible.subsingleton](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertible-subsingleton--c5b093ccd69b687d9f8149ec.md) | 163 | `declaration-track:c5b093ccd69b687d9f8149ec897b5dfae2e06ff5601dd05e72a57a817d473c4f` |
| 18 | `def` | [Invertible.copy'](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertible-copy--2d7881b50f93c01f55ea4027.md) | 170 | `declaration-track:2d7881b50f93c01f55ea40279c30bf8f14b1fd3f14a20f1936ff70670a4feb16` |
| 19 | `def` | [Invertible.copy](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertible-copy--23614df1f8c95c44159cf2aa.md) | 179 | `declaration-track:23614df1f8c95c44159cf2aa344c210aa279f1717dc84cc5529921a4bb9618d2` |
| 20 | `theorem` | [Invertible.congr](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertible-congr--aae3d5a720a89e05b0370333.md) | 186 | `result-track:aae3d5a720a89e05b0370333191b65b9748336d60cdee7d6087de9a0b17774b6` |
| 21 | `def` | [unitOfInvertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/unitofinvertible--98e4b1c0f535bf6ad3432ada.md) | 191 | `declaration-track:98e4b1c0f535bf6ad3432ada8666af89194bc24d8ae1c561bf494527eb9b8f7c` |
| 22 | `theorem` | [isUnit_of_invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/isunit-of-invertible--49ab93539f3c423ba1506e87.md) | 200 | `result-track:49ab93539f3c423ba1506e873c1a3d2115f1f27dd17bbfe93658baadf67b0853` |
| 23 | `def` | [Units.invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/units-invertible--bd6833c861a1aec76a8c07e5.md) | 205 | `declaration-track:bd6833c861a1aec76a8c07e5aa00da589cac5a3da089e2f2e517a84e4fb3503e` |
| 24 | `theorem` | [invOf_units](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-units--bd93db487f8b7b388d66fa79.md) | 213 | `result-track:bd93db487f8b7b388d66fa79f7fdd598ae565495913ee67ca191a1282404fc0c` |
| 25 | `theorem` | [IsUnit.nonempty_invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/isunit-nonempty-invertible--f981b634d33b20e9c1d004e8.md) | 217 | `result-track:f981b634d33b20e9c1d004e850b73b7f8378712a8cfe1578a0362d9014c70205` |
| 26 | `def` | [IsUnit.invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/isunit-invertible--187e6a7704e1bf864343faea.md) | 225 | `declaration-track:187e6a7704e1bf864343faeab8693f7765bc0096982362da2e0d910d19750cc0` |
| 27 | `theorem` | [nonempty_invertible_iff_isUnit](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/nonempty-invertible-iff-isunit--58b394dbef376c9ade04ff99.md) | 230 | `result-track:58b394dbef376c9ade04ff99131f6f30268e92c2cab2e7fc6469b9bdbda3a797` |
| 28 | `def` | [invertibleOfGroup](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertibleofgroup--84aefd099e251f42a292ba47.md) | 235 | `declaration-track:84aefd099e251f42a292ba478bc448271008fe0b7a4dc87f3f3cda2e2759e4ef` |
| 29 | `theorem` | [invOf_eq_group_inv](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-eq-group-inv--e22688e5de17293ebf08b62a.md) | 240 | `result-track:e22688e5de17293ebf08b62a166ba647b6ab6228e85963a9525032c54421cd28` |
| 30 | `def` | [invertibleOne](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertibleone--b3f1ddacd6d756aa7a9899e3.md) | 245 | `declaration-track:b3f1ddacd6d756aa7a9899e3fb0a2ac959207b70f989d6cf73d9220b055de2dc` |
| 31 | `theorem` | [invOf_one'](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-one--8aa71618b5cd2dafff8282ed.md) | 250 | `result-track:8aa71618b5cd2dafff8282edda017bd3624269095e863e0b6e406ad3af10678a` |
| 32 | `theorem` | [invOf_one](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-one--ecdccfb308eb551709e6b0e8.md) | 253 | `result-track:ecdccfb308eb551709e6b0e819e60b6f2c29700c5567ceb3868780fd4862a333` |
| 33 | `def` | [invertibleNeg](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertibleneg--0d3d3abedcc60f448ec5b16e.md) | 258 | `declaration-track:0d3d3abedcc60f448ec5b16e8e21ad46c1ffb871da6ab707b12e83ae7313268a` |
| 34 | `theorem` | [invOf_neg](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-neg--babc7e635b66b6126398e0f4.md) | 263 | `result-track:babc7e635b66b6126398e0f4abff77a65ce9f3f876bde39f5c963c7c31dc2b58` |
| 35 | `theorem` | [one_sub_invOf_two](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/one-sub-invof-two--17de959a56e41dbb1fa243ec.md) | 269 | `result-track:17de959a56e41dbb1fa243ecab5a3eaf2c4756029397c0242882413904e0a830` |
| 36 | `theorem` | [invOf_two_add_invOf_two](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-two-add-invof-two--a5d610fc56e28f4683667ab5.md) | 275 | `result-track:a5d610fc56e28f4683667ab55e07fdb57a93af50962a968d3c69ab569c43a100` |
| 37 | `instance` | [invertibleInvOf](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertibleinvof--cbd80471af640ccdde066c0c.md) | 280 | `declaration-track:cbd80471af640ccdde066c0cf19d9fff6f04128fd879dbfa9342cb41038b623d` |
| 38 | `theorem` | [invOf_invOf](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-invof--8a3dc08d655e15b517a6f8cf.md) | 285 | `result-track:8a3dc08d655e15b517a6f8cfd794bcb4ce495c8adf0c50aa72a0ac85be647ab3` |
| 39 | `theorem` | [invOf_inj](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-inj--e24d9be7095348e0f8577eb2.md) | 290 | `result-track:e24d9be7095348e0f8577eb272327cd8526469edbed5f53a022f2bca691062f7` |
| 40 | `def` | [invertibleMul](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertiblemul--5411f69ed60f403edfb19106.md) | 295 | `declaration-track:5411f69ed60f403edfb19106e693a324a119960e2244e5b7a7d289f084e51d17` |
| 41 | `theorem` | [invOf_mul](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-mul--7ec9d707dc30c5bcdb247594.md) | 300 | `result-track:7ec9d707dc30c5bcdb247594ef1f733187b3c7a29bde44b2ca65e4230e62479a` |
| 42 | `def` | [Invertible.mul](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertible-mul--2dfeea6f4de64b1359cab9d7.md) | 307 | `declaration-track:2dfeea6f4de64b1359cab9d77e6ee799f2ddba99e715a1119217a17074256cbb` |
| 43 | `theorem` | [mul_right_inj_of_invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-right-inj-of-invertible--9791b55f8752eb8fc9e3fccd.md) | 312 | `result-track:9791b55f8752eb8fc9e3fccdfacf528fc55d6b2e309275eac56fa565b7088dbb` |
| 44 | `theorem` | [mul_left_inj_of_invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-left-inj-of-invertible--2e6678b5365763fe173b8b57.md) | 316 | `result-track:2e6678b5365763fe173b8b571b9fde5a12e22ce27c7984ce845c1bccf73a298d` |
| 45 | `theorem` | [invOf_mul_eq_iff_eq_mul_left](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-mul-eq-iff-eq-mul-left--6154714980257530c85eaa8d.md) | 320 | `result-track:6154714980257530c85eaa8d643dd3a3aed25eaf5a2a4fbf36e292ce80c2367a` |
| 46 | `theorem` | [mul_left_eq_iff_eq_invOf_mul](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-left-eq-iff-eq-invof-mul--360627019a64963150238c3a.md) | 324 | `result-track:360627019a64963150238c3a6c6291ee2987f10d3a11fe4fb26deec3894a86e4` |
| 47 | `theorem` | [mul_invOf_eq_iff_eq_mul_right](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-invof-eq-iff-eq-mul-right--683cba56aa87fcdb0bbb1ee9.md) | 328 | `result-track:683cba56aa87fcdb0bbb1ee949f09a4100f304d40f842db75089aabb9b823485` |
| 48 | `theorem` | [mul_right_eq_iff_eq_mul_invOf](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-right-eq-iff-eq-mul-invof--c9e6bd5a39173f2f55865fcc.md) | 332 | `result-track:c9e6bd5a39173f2f55865fcc0cc36a2cc65bd1e357afcf71e53d07dfaf7b951d` |
| 49 | `theorem` | [Commute.invOf_right](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/commute-invof-right--16f1adbd2cd6f11803642aef.md) | 336 | `result-track:16f1adbd2cd6f11803642aefa63f036dc1474c167e36ffb8ba20d56d184eda5d` |
| 50 | `theorem` | [Commute.invOf_left](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/commute-invof-left--ce9e11d483d23dec2b0797f4.md) | 344 | `result-track:ce9e11d483d23dec2b0797f45158f4cf6e9ca6eac6448cdf38d39e7458feb305` |
| 51 | `theorem` | [commute_invOf](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/commute-invof--f80eeeff83cfc471526a28ac.md) | 352 | `result-track:f80eeeff83cfc471526a28ac6cfa4bf40bb12938525f16e3847c69e8473e52b2` |
| 52 | `theorem` | [nonzero_of_invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/nonzero-of-invertible--ab9db79a7c0eeb73b6969c3e.md) | 358 | `result-track:ab9db79a7c0eeb73b6969c3e31e04691705080310d57719b740dc77276ae19de` |
| 53 | `theorem` | [pos_of_invertible_cast](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/pos-of-invertible-cast--242e10d3347fcb133e9e5e88.md) | 366 | `result-track:242e10d3347fcb133e9e5e88380c56b8c3c5c3002c0684721159260cd4156087` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/instance--90d5cb32f2fc3ed9982c0695.md) | 369 | `declaration-track:90d5cb32f2fc3ed9982c06954bb1c552be47313c79240e1ba780580ed81e07d5` |
| 55 | `def` | [invertibleOfInvertibleMul](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertibleofinvertiblemul--0ea1e0d22d0d39eec6c5c386.md) | 380 | `declaration-track:0ea1e0d22d0d39eec6c5c3862017fce3deefaeac0e495a8f02fadc3f25c349d3` |
| 56 | `def` | [invertibleOfMulInvertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertibleofmulinvertible--eab4e0836c404d0915c0b323.md) | 390 | `declaration-track:eab4e0836c404d0915c0b32381d45e0dce387710c4fd13025ea4f20b5ec26306` |
| 57 | `def` | [Invertible.mulLeft](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertible-mulleft--f679b5da5d3f851d6be076e4.md) | 400 | `declaration-track:f679b5da5d3f851d6be076e4952cf0c78283ce6474f0795d2f12f8821806cbfd` |
| 58 | `def` | [Invertible.mulRight](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertible-mulright--aae6acf1a1489f773a497adf.md) | 411 | `declaration-track:aae6acf1a1489f773a497adfbfff89971188e3fced947e2da28931d078632423` |
| 59 | `theorem` | [Ring.inverse_invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/ring-inverse-invertible--7c6cfa7ec2c1fd6f6a617a09.md) | 428 | `result-track:7c6cfa7ec2c1fd6f6a617a095df85535031e62ddb3a8ce1a9ce2515dc64bddfa` |
| 60 | `def` | [invertibleOfNonzero](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertibleofnonzero--0b3850adccad03bfaa63b54d.md) | 439 | `declaration-track:0b3850adccad03bfaa63b54d9848ba753e3660ee829679b6d4a9c4ded8da18e5` |
| 61 | `theorem` | [invOf_eq_inv](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-eq-inv--2afac3afcfae94700c5d5829.md) | 444 | `result-track:2afac3afcfae94700c5d582912c24ac12c292384d6487df7e2016205c2759ae1` |
| 62 | `theorem` | [inv_mul_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/inv-mul-cancel-of-invertible--6a31b093ab873403c77820b6.md) | 449 | `result-track:6a31b093ab873403c77820b6f21f0cfb66ca66ed1a4a30472f9114f2fcc2f3cf` |
| 63 | `theorem` | [mul_inv_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-inv-cancel-of-invertible--ce073dab17f543b0eb1ac2a6.md) | 454 | `result-track:ce073dab17f543b0eb1ac2a673f5e2e1d5f5b44b060eb2507dc7b16f39ee03bd` |
| 64 | `theorem` | [div_mul_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/div-mul-cancel-of-invertible--6d0add06f31dd8990b8e351c.md) | 459 | `result-track:6d0add06f31dd8990b8e351ce2aadeb339663f3fdced3a284b1d839a7ec9aeaf` |
| 65 | `theorem` | [mul_div_cancel_of_invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/mul-div-cancel-of-invertible--ff133da4c0bcf207e708b695.md) | 464 | `result-track:ff133da4c0bcf207e708b6954fd74daa07d972321087ee79ba18f3fe257ca38e` |
| 66 | `theorem` | [div_self_of_invertible](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/div-self-of-invertible--3baf353fbaf0f1fc20067cb2.md) | 469 | `result-track:3baf353fbaf0f1fc20067cb2f1f47f1d26757b44f20cfc84b1a57ae7d51b21df` |
| 67 | `def` | [invertibleDiv](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertiblediv--bec18c946d9d047788ba0dca.md) | 474 | `declaration-track:bec18c946d9d047788ba0dcaf61ff89a9ab6a5184f94b90878812a63131e37f1` |
| 68 | `theorem` | [invOf_div](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invof-div--84375d0af7239595da858c83.md) | 479 | `result-track:84375d0af7239595da858c83dfeff296cea839fa975563286e3688c8eff5dd65` |
| 69 | `def` | [invertibleInv](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertibleinv--b551f94b451612d758f0e79a.md) | 485 | `declaration-track:b551f94b451612d758f0e79afee695a30730fbe5a50aa12928d2bd048b25be04` |
| 70 | `def` | [Invertible.map](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertible-map--6505669e56129d0422c9e5cd.md) | 492 | `declaration-track:6505669e56129d0422c9e5cd746b5d6c850faa7cd1aa76c5f23b8d79661587f5` |
| 71 | `theorem` | [map_invOf](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/map-invof--c1b255524ca9c1b79e4ea116.md) | 502 | `result-track:c1b255524ca9c1b79e4ea11627142f5eff20c3b63c1de102d05a6fac840265a9` |
| 72 | `def` | [Invertible.ofLeftInverse](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertible-ofleftinverse--b432c821525e8ac2f12b352d.md) | 514 | `declaration-track:b432c821525e8ac2f12b352d869129b7465a751f819b5cfcd935519390379341` |
| 73 | `def` | [invertibleEquivOfLeftInverse](../../../../mathematics/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean/declarations/invertibleequivofleftinverse--a3cdff2c14321404f9162a33.md) | 523 | `declaration-track:a3cdff2c14321404f9162a33de335d7396e8a73def027a9704d33c426d185ccd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
