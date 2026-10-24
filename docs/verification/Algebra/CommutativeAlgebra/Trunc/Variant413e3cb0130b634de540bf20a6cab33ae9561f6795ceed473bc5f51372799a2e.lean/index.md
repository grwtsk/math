# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Trunc.Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c5e65a2c660a736d79f6c14a16cb2cc643f5aee",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c5e65a2c660a736d79f6c14a16cb2cc643f5aee`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncFinset](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/truncfinset--ee55237e866d0d508be92d2f.md) | 74 | `declaration-track:ee55237e866d0d508be92d2f1faf6649376bcae7f1adca4d93c0e52f0a13edc6` |
| 2 | `theorem` | [truncFinset_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/truncfinset-apply--ee42f6a14e11f5335523e397.md) | 82 | `result-track:ee42f6a14e11f5335523e3973c52f9e51f1ce2bad86cbc8bc12e4c9a62864a11` |
| 3 | `theorem` | [coeff_truncFinset_of_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-truncfinset-of-mem--c26857d6a7825fd695ae17b0.md) | 86 | `result-track:c26857d6a7825fd695ae17b0d268ece841b87b6d383a25e07ef23723da7d8da4` |
| 4 | `theorem` | [coeff_truncFinset_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-truncfinset-eq-zero--c8688711d5ee308863d1a3a5.md) | 92 | `result-track:c8688711d5ee308863d1a3a53d2e553a8220bb28e01360591b63a7a567977fb8` |
| 5 | `lemma` | [coeff_truncFinset](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-truncfinset--dc671e83c7c6a9601bbce79d.md) | 97 | `result-track:dc671e83c7c6a9601bbce79ddec0ad177d0d1618e12c0703a63516d1d4300132` |
| 6 | `theorem` | [truncFinset_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/truncfinset-monomial--91c529b7dfa4a6d6989403f4.md) | 101 | `result-track:91c529b7dfa4a6d6989403f411b677a3477e8684c16cf6b315552e0edb153ba8` |
| 7 | `theorem` | [truncFinset_monomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/truncfinset-monomial-eq-zero--3a0d828971de096d1fe839d1.md) | 107 | `result-track:3a0d828971de096d1fe839d191f96c750e321e0e3ba92f0005f23e70edfcc17e` |
| 8 | `theorem` | [truncFinset_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/truncfinset-c--85549b53d4176ddbced4477d.md) | 113 | `result-track:85549b53d4176ddbced4477d7a383a16ee3cf789c7342c0d8434a430f89917af` |
| 9 | `theorem` | [truncFinset_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/truncfinset-one--df3252ef1176bf14a1340463.md) | 116 | `result-track:df3252ef1176bf14a1340463bc06c4e3a5abea2887acb7fba4932e4c1aef55ac` |
| 10 | `theorem` | [truncFinset_truncFinset](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/truncfinset-truncfinset--364fc9d108033ae1cfad4fdb.md) | 119 | `result-track:364fc9d108033ae1cfad4fdb57940d7eea0c5ae8ff1cb5d205c419210d4051f6` |
| 11 | `theorem` | [truncFinset_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/truncfinset-map--0e000fc5800fe0281c5e4ac2.md) | 124 | `result-track:0e000fc5800fe0281c5e4ac29a484fe046549e3b0906f522633cbae8913e856b` |
| 12 | `theorem` | [coeff_truncFinset_mul_truncFinset_eq_coeff_mul₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-truncfinset-mul-truncfinset-eq-coeff-mul--433f7af1c3061c42638160e1.md) | 131 | `result-track:433f7af1c3061c42638160e10af340cf933eaecfd0a17156e86af12d8bdd0528` |
| 13 | `theorem` | [coeff_truncFinset_mul_truncFinset_eq_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-truncfinset-mul-truncfinset-eq-coeff-mul--cf7a61ddf7a8d9dc20c6e22b.md) | 143 | `result-track:cf7a61ddf7a8d9dc20c6e22b1d31ce5d2ae7a1e8425813de4c24e66aa633a369` |
| 14 | `theorem` | [truncFinset_truncFinset_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/truncfinset-truncfinset-pow--33452c8e3313019c7b410d8d.md) | 148 | `result-track:33452c8e3313019c7b410d8ddac8f0ea4323c2d5b5e60e24512eaa712bbe43b5` |
| 15 | `theorem` | [support_truncFinset_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/support-truncfinset-subset--c3be919c5f89a51230ebe0e7.md) | 160 | `result-track:c3be919c5f89a51230ebe0e7a7d51c9fe6ded2972f2fabad3fdf5f863b87beca` |
| 16 | `lemma` | [totalDegree_truncFinset](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/totaldegree-truncfinset--c83e54a422d12487f687a3eb.md) | 164 | `result-track:c83e54a422d12487f687a3eba8d195209188d25b56f79ddcd836fff4f74ed960` |
| 17 | `lemma` | [truncFinset_coe_eq_self_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/truncfinset-coe-eq-self-iff--6f32dd07b077038fd90dc36f.md) | 168 | `result-track:6f32dd07b077038fd90dc36ffd084d85d7e413a718dace8db185d3b58d1e942f` |
| 18 | `def` | [trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc--b02d18248734bdcb5c509573.md) | 187 | `declaration-track:b02d18248734bdcb5c509573e322d1493d64af23f01b5e72e5cd565a9b34b3c2` |
| 19 | `theorem` | [coeff_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-trunc--2cce94fac3d592f19910d29a.md) | 190 | `result-track:2cce94fac3d592f19910d29a7115acb6ef15b14031c899410315cd66626a6d6b` |
| 20 | `theorem` | [trunc_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc-one--07ee43efb0628b1fd81c958d.md) | 195 | `result-track:07ee43efb0628b1fd81c958df396e45cb6bf68462d99e7af187db48188b668ec` |
| 21 | `theorem` | [trunc_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc-c--adb34c730f07072a31e0cb85.md) | 199 | `result-track:adb34c730f07072a31e0cb8537b14aca1af940904f3a702b14188a8ea4ccc54b` |
| 22 | `theorem` | [trunc_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc-c-mul--e971e0b03b4c3975e6459e36.md) | 203 | `result-track:e971e0b03b4c3975e6459e36b27a81dcb68c1707cf33f0702fba9d57a0df9341` |
| 23 | `theorem` | [trunc_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc-map--8a8a0f1239c28de3676a70e4.md) | 208 | `result-track:8a8a0f1239c28de3676a70e44d2be327f9cb2adcd3e939b97da7f372747b8ca3` |
| 24 | `theorem` | [coeff_trunc_mul_trunc_eq_coeff_mul₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-trunc-mul-trunc-eq-coeff-mul--8e7110ebf4759b3e153d681b.md) | 213 | `result-track:8e7110ebf4759b3e153d681bb964d48374d1b225febf84795c64d2fb05592ee4` |
| 25 | `theorem` | [coeff_trunc_mul_trunc_eq_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-trunc-mul-trunc-eq-coeff-mul--7e94ea133c592b247830913c.md) | 221 | `result-track:7e94ea133c592b247830913c84e05fef1ef5e2cc18745f5b8aab26abb4915735` |
| 26 | `def` | [trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc--cca550f4d8b17f35db5f371b.md) | 238 | `declaration-track:cca550f4d8b17f35db5f371b721d656e3dbee9505c46f189751287fb6b64d924` |
| 27 | `theorem` | [coeff_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-trunc--ba48dacc7b4f8a11a1800a55.md) | 242 | `result-track:ba48dacc7b4f8a11a1800a559f4f38f0db4481440abae3db9d49df75c1e9af1a` |
| 28 | `theorem` | [trunc'_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc-trunc--f9f9a7178b6fb739790e5330.md) | 246 | `result-track:f9f9a7178b6fb739790e53307b1a0622aa517908169a169f3d513023a659bb4b` |
| 29 | `theorem` | [trunc'_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc-one--95554eee728d2b5620f42a11.md) | 252 | `result-track:95554eee728d2b5620f42a115172f556139e37a50ee409881335a620696ceeec` |
| 30 | `theorem` | [trunc'_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc-c--0b2c5221637193c094d9e6d7.md) | 255 | `result-track:0b2c5221637193c094d9e6d7efe7e2fdd5d55ff00f34d1edb44452714d8ebcb7` |
| 31 | `theorem` | [coeff_trunc'_mul_trunc'_eq_coeff_mul₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-trunc-mul-trunc-eq-coeff-mul--655ada0d796c048d89873ab1.md) | 260 | `result-track:655ada0d796c048d89873ab16555a028da11f9f51ca1ffea53663d2625b9359a` |
| 32 | `theorem` | [coeff_trunc'_mul_trunc'_eq_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-trunc-mul-trunc-eq-coeff-mul--446f872db254afe5a46272f0.md) | 268 | `result-track:446f872db254afe5a46272f067240d37a78563711f31bf1346a512d20eae4147` |
| 33 | `theorem` | [trunc'_trunc'_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc-trunc-pow--55c3f8139ff0718dbf4c9ecc.md) | 273 | `result-track:55c3f8139ff0718dbf4c9eccc95c9bcc68489531c3921a51f71f65880e30ad2f` |
| 34 | `theorem` | [trunc'_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc-c-mul--9dac0e07e1bb8a909c3cda76.md) | 278 | `result-track:9dac0e07e1bb8a909c3cda76ae3db894246150c7dd01229692ed215a777faf62` |
| 35 | `theorem` | [trunc'_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunc-map--66ef8af5177f153e6bbc6b5b.md) | 283 | `result-track:66ef8af5177f153e6bbc6b5ba1a2349ef97e2781997ee8012e69ad33561e9fe1` |
| 36 | `theorem` | [totalDegree_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/totaldegree-trunc--f8cae154aa2d5e8d84050733.md) | 288 | `result-track:f8cae154aa2d5e8d84050733d66d975455a03d2aa41d02278a7947b5165c4dab` |
| 37 | `theorem` | [ext_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/ext-trunc--08b2d6246fdffb02cc2f993f.md) | 292 | `result-track:08b2d6246fdffb02cc2f993fad0f2f610caab4dc06beb1fb9d8bcd22496eaea6` |
| 38 | `theorem` | [eq_iff_frequently_trunc'_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/eq-iff-frequently-trunc-eq--192db126ddc760e92878f7c0.md) | 301 | `result-track:192db126ddc760e92878f7c02c3b0ef5954e729a50905771ad36c9e47f17cd03` |
| 39 | `def` | [truncTotal](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunctotal--8315777aa5e64e4f2fbe53ee.md) | 320 | `declaration-track:8315777aa5e64e4f2fbe53eecd87eafee583d73cac1ee28c386027986fc398d9` |
| 40 | `theorem` | [coeff_truncTotal](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-trunctotal--0e086d00571243982be7b440.md) | 323 | `result-track:0e086d00571243982be7b440e0d2f023d79dc254d3de07360b57c4abbc0f64bd` |
| 41 | `theorem` | [coeff_truncTotal_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-trunctotal-eq-zero--6f1e2c4f13025abb3c4747d2.md) | 326 | `result-track:6f1e2c4f13025abb3c4747d243b8e17ffd2ac1f8dea19633e158504dbc395be9` |
| 42 | `theorem` | [coeff_truncTotal_eq_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-trunctotal-eq-ite--dde08395253cf825859e8674.md) | 329 | `result-track:dde08395253cf825859e867473bc2eabcf8b788a951ddcef730005b194527f9e` |
| 43 | `theorem` | [constantCoeff_truncTotal_eq_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/constantcoeff-trunctotal-eq-ite--27354c15b9fde75ef1500a29.md) | 335 | `result-track:27354c15b9fde75ef1500a290d70f914285204db61949c7bd67292025b35a43a` |
| 44 | `theorem` | [truncTotal_eq_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunctotal-eq-sum--7d5ce86b5a773600974fa79c.md) | 339 | `result-track:7d5ce86b5a773600974fa79cb5fd53ab2d8bf3a6aa076695bccaa7b52e182b19` |
| 45 | `lemma` | [truncTotal_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunctotal-one--81f400750ae281b05eece0f2.md) | 343 | `result-track:81f400750ae281b05eece0f26a2758d345559ef076a776354406ac6ab8f4d904` |
| 46 | `lemma` | [coeff_truncTotal_mul_truncTotal_eq_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-trunctotal-mul-trunctotal-eq-coeff-mul--05162c7770f8104d9654e83d.md) | 346 | `result-track:05162c7770f8104d9654e83d0c4f732be5da8712664fe3a17603c194bee6d8ea` |
| 47 | `lemma` | [coeff_truncTotal_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/coeff-trunctotal-pow--7dbc8c6776da45bc4f1a26dc.md) | 351 | `result-track:7dbc8c6776da45bc4f1a26dc8e81703f4698e873e8b1ccd05576a67602773724` |
| 48 | `lemma` | [truncTotal_pow_eq_truncTotal_truncTotal_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunctotal-pow-eq-trunctotal-trunctotal-pow--b08cd545b0340e5553fbef8a.md) | 362 | `result-track:b08cd545b0340e5553fbef8ab103e819f660ce54c351e7ca9a5ba6114a24562c` |
| 49 | `theorem` | [totalDegree_truncTotal_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/totaldegree-trunctotal-lt--323dfd330f8aff1cb24b60b0.md) | 370 | `result-track:323dfd330f8aff1cb24b60b0f6fd0ea7344ea005834c35c2bf90d689488d057c` |
| 50 | `theorem` | [truncTotal_coe_eq_self_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant413e3cb0130b634de540bf20a6cab33ae9561f6795ceed473bc5f51372799a2e.lean/declarations/trunctotal-coe-eq-self-iff--df02da62310f54b73ad18170.md) | 376 | `result-track:df02da62310f54b73ad18170bc6588c6490a2b6aff03c49b81eed3323a9de46e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
