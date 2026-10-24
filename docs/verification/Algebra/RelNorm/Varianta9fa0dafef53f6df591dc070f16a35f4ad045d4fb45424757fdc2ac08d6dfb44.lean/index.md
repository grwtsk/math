# Verification target: GRWTSK.Algebra.RelNorm.Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9761dba926e6906cae2c5d32b53f40c0eb1858f3",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/index.md) · [Full source](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9761dba926e6906cae2c5d32b53f40c0eb1858f3`.

Source path: `GRWTSK/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean.json)

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
| 1 | `def` | [spanNorm](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm--30e8919446787437c59f60f6.md) | 66 | `declaration-track:30e8919446787437c59f60f6292238a870532c0a734dd4ebff04803180637795` |
| 2 | `theorem` | [spanNorm_bot](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-bot--ec1b49e3a52e1abf58dd5d25.md) | 70 | `result-track:ec1b49e3a52e1abf58dd5d25cd9b973d94871adfc4839b23de571556e326fd00` |
| 3 | `theorem` | [spanNorm_eq_bot_iff](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-eq-bot-iff--69d70f8056d4471b497ae20e.md) | 75 | `result-track:69d70f8056d4471b497ae20e862a5644977a979c4badc4fe9a446a3a3015fccb` |
| 4 | `theorem` | [intNorm_mem_spanNorm](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/intnorm-mem-spannorm--1ff581444e06b115d7658dac.md) | 80 | `result-track:1ff581444e06b115d7658dac0b54ca5e1ba3f1d7a28e4c2a7f4f2da7e5583662` |
| 5 | `theorem` | [norm_mem_spanNorm](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/norm-mem-spannorm--23e8a18e54e71e282db697b5.md) | 84 | `result-track:23e8a18e54e71e282db697b5eee6f2e7e954f4e541a5bd4dd85b7e13acc0e25a` |
| 6 | `theorem` | [spanNorm_singleton](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-singleton--75c9af774d505c5bead60c9d.md) | 90 | `result-track:75c9af774d505c5bead60c9d0fab195a96bc26cbab6bd50f5326fc92988abb8e` |
| 7 | `theorem` | [spanNorm_top](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-top--d2f2fcf3ccde99025d6fb178.md) | 101 | `result-track:d2f2fcf3ccde99025d6fb178b04a13342b3f730ce6f1ead1377f785f1384ec9e` |
| 8 | `theorem` | [map_spanIntNorm](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/map-spanintnorm--62bd3c2c78019d2d54ad6207.md) | 104 | `result-track:62bd3c2c78019d2d54ad620701991d526d6b984eff56b69dd4d57209f293e241` |
| 9 | `theorem` | [spanNorm_mono](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-mono--5fd2177be24015debf8d0bfb.md) | 111 | `result-track:5fd2177be24015debf8d0bfb85b9d902cd0e544dbb312da42580ee4e0a12fc3c` |
| 10 | `theorem` | [spanIntNorm_localization](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spanintnorm-localization--49c3a73aee05528a9156b7c3.md) | 115 | `result-track:49c3a73aee05528a9156b7c301d09597e9d74c7d2b57fbe91230c74194d0de3f` |
| 11 | `theorem` | [spanNorm_mul_spanNorm_le](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-mul-spannorm-le--09179ae141a624196a98be4f.md) | 169 | `result-track:09179ae141a624196a98be4f51a5c1c8bb26dd531f09535acb68f8211896e735` |
| 12 | `theorem` | [spanNorm_mul_of_bot_or_top](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-mul-of-bot-or-top--4b75f11926a715a819964757.md) | 181 | `result-track:4b75f11926a715a8199647570024cbe6c321c94b5194abbf2fd2ef6b849bfca7` |
| 13 | `theorem` | [spanNorm_le_comap](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-le-comap--11a7a3091d12593e6df234fa.md) | 193 | `result-track:11a7a3091d12593e6df234fa25a3ca6b9851d6176c400b329294562466c7002c` |
| 14 | `theorem` | [spanNorm_mul](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-mul--37020ddfaab3d3fbbeb2513b.md) | 207 | `result-track:37020ddfaab3d3fbbeb2513b2da505b86a0977d098ae2e90669a0dec55ef24db` |
| 15 | `theorem` | [le_spanNorm_spanNorm](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/le-spannorm-spannorm--7818987e494d7541fc1d77e0.md) | 235 | `result-track:7818987e494d7541fc1d77e07ee7b6310f900ffcd8e2dd24de4326faee7c7a17` |
| 16 | `theorem` | [spanNorm_spanNorm_of_bot_or_top](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-spannorm-of-bot-or-top--2bddafe650fc489f70d6da96.md) | 246 | `result-track:2bddafe650fc489f70d6da969987024c8a4f18d1e0547b97c4eda994521618b6` |
| 17 | `theorem` | [spanNorm_spanNorm](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-spannorm--5c18b0ca05e9d450215a05d5.md) | 254 | `result-track:5c18b0ca05e9d450215a05d5cba9967a2cb5ed9fae9ccf9c8bf2619b92df4343` |
| 18 | `def` | [relNorm](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm--5010edbeb8b5d99c77d66b32.md) | 278 | `declaration-track:5010edbeb8b5d99c77d66b324436b3d33549683974acb94a074014e0f6bddd8b` |
| 19 | `theorem` | [relNorm_apply](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-apply--9e5528f6137c1c27b0e2809d.md) | 284 | `result-track:9e5528f6137c1c27b0e2809d635210ced5a4d936932c26b92ebb18344bc284df` |
| 20 | `theorem` | [spanNorm_eq](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/spannorm-eq--e6be29f13583c3b56d07622e.md) | 289 | `result-track:e6be29f13583c3b56d07622ed4319203e3ae813d63a4b29db2b8457f4bfb3b53` |
| 21 | `theorem` | [relNorm_bot](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-bot--a167237dbec8e48619735bad.md) | 292 | `result-track:a167237dbec8e48619735badef7087ea9ab3e6f7b76513b21c1a1f14867bc65a` |
| 22 | `theorem` | [relNorm_top](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-top--0d4e43422835d01445c3eccd.md) | 296 | `result-track:0d4e43422835d01445c3eccd8ad598ffcdb7949c0a30aadd05c991efa4e50cff` |
| 23 | `theorem` | [relNorm_eq_bot_iff](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-eq-bot-iff--81bd1ddece3a14cd7ba459e7.md) | 301 | `result-track:81bd1ddece3a14cd7ba459e7ef9afce66890a3dda2888789421e9ff2bb640826` |
| 24 | `theorem` | [norm_mem_relNorm](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/norm-mem-relnorm--3aff5a350897d0a0804978bb.md) | 304 | `result-track:3aff5a350897d0a0804978bbafa8d446ddc59a73cb7a4694b5ec78d1b6d4bf8d` |
| 25 | `theorem` | [relNorm_singleton](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-singleton--1b10bdc3251b0f3de41458f6.md) | 309 | `result-track:1b10bdc3251b0f3de41458f65816d7add708cda42fcc4e6ae0f6b31d5f5471ac` |
| 26 | `theorem` | [map_relNorm](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/map-relnorm--8d00ebc1e34077270ea70f78.md) | 312 | `result-track:8d00ebc1e34077270ea70f78612db3808008c6ed32f01d6eec1cc5b7d4931215` |
| 27 | `theorem` | [relNorm_mono](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-mono--35d13f8b6029fccb3de6b80d.md) | 317 | `result-track:35d13f8b6029fccb3de6b80df2de7f37dc72da3ac86c2744ec2262d88c6c4c4c` |
| 28 | `theorem` | [relNorm_map_algEquiv_aux](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-map-algequiv-aux--a0486464637975ad60825f3c.md) | 322 | `result-track:a0486464637975ad60825f3c6dca3278a3da26f572f4e86858a6f4c024d953c4` |
| 29 | `theorem` | [relNorm_map_algEquiv](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-map-algequiv--53b0a5501cc23ad24206af75.md) | 330 | `result-track:53b0a5501cc23ad24206af75ee744a08adff281bcd0f8be6dd8c4f52a992a314` |
| 30 | `theorem` | [relNorm_comap_algEquiv](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-comap-algequiv--09081107fe728c0c79ebb8e9.md) | 339 | `result-track:09081107fe728c0c79ebb8e94b0df97062fe6dbd305c3899fb8c805b12f1fd47` |
| 31 | `theorem` | [relNorm_smul](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-smul--829032672688fa6665fa4e6c.md) | 347 | `result-track:829032672688fa6665fa4e6cf7e620c813fbbc609b6af997de0bc529070f7d97` |
| 32 | `theorem` | [relNorm_le_comap](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-le-comap--8254d94f63f10001e0a47d25.md) | 350 | `result-track:8254d94f63f10001e0a47d25c9a51ab90e21562e85680625b15ec4c18abb7077` |
| 33 | `theorem` | [relNorm_relNorm](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-relnorm--a856b9c6ca851c4756c62fa4.md) | 353 | `result-track:a856b9c6ca851c4756c62fa4dc0040e3cb56b691925cf42f8b08d4774b2af851` |
| 34 | `theorem` | [relNorm_algebraMap](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-algebramap--d2e8aa0fe018ff6fdfcccd46.md) | 362 | `result-track:d2e8aa0fe018ff6fdfcccd46e3c3cd9c951f43b54501f717c5e9fa2d482b360e` |
| 35 | `theorem` | [relNorm_algebraMap'](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-algebramap--bf780939e36e486d5993be7a.md) | 382 | `result-track:bf780939e36e486d5993be7a19c88ee0fdfb89e0cbd0955e4f7da045a87c662c` |
| 36 | `theorem` | [exists_relNorm_eq_pow_of_isPrime](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/exists-relnorm-eq-pow-of-isprime--541c8d582b6c37ede62d8ac4.md) | 394 | `result-track:541c8d582b6c37ede62d8ac447b614d0597fe43b96426dd3cb470df8cf6560e5` |
| 37 | `theorem` | [relNorm_eq_pow_of_isPrime_isGalois](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-eq-pow-of-isprime-isgalois--1d5ca23cfec65e3e2379f343.md) | 409 | `result-track:1d5ca23cfec65e3e2379f34348b6ed9bd1a37875fac464ffc851c6fa7140c3cc` |
| 38 | `theorem` | [relNorm_eq_pow_of_isMaximal](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-eq-pow-of-ismaximal--18360e29c7665525cd656f2e.md) | 445 | `result-track:18360e29c7665525cd656f2efb13469c46fba7032aadcd2c1c174d655180d59c` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/instance--aa530271bfc3968acb431c25.md) | 464 | `declaration-track:aa530271bfc3968acb431c25d5227f6876628ee4c7a25107ef621ef16b48f193` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/instance--82623ab9064abc41a77b11d9.md) | 465 | `declaration-track:82623ab9064abc41a77b11d99923c0956173c9957bfa1212c291da53c50b0fd0` |
| 41 | `theorem` | [absNorm_relNorm](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/absnorm-relnorm--16fdf39763064268dba87945.md) | 468 | `result-track:16fdf39763064268dba8794557d11aef868277803fd6c1dba1adc41ee0099105` |
| 42 | `theorem` | [relNorm_int](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/relnorm-int--4a7c27742928b23798630b67.md) | 488 | `result-track:4a7c27742928b23798630b6784b52b7e9f56be768636c7ebaa23f268331e8034` |
| 43 | `theorem` | [absNorm_algebraMap](../../../../mathematics/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/declarations/absnorm-algebramap--a3718b4ef024c0589b2b47bc.md) | 492 | `result-track:a3718b4ef024c0589b2b47bcfd2d25022dd300a3862c0c107f5494b6756e0921` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
